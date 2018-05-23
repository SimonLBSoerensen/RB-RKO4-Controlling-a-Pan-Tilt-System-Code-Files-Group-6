/*****************************************************************************
* University of Southern Denmark
* Embedded Programming (EMP)
*
* MODULENAME.:
*
* PROJECT....:
*
* DESCRIPTION: See module specification file (.h-file).
*
* Change Log:
*****************************************************************************
* Date    Id    Change
* YYMMDD
* --------------------
*
*
*****************************************************************************/

/***************************** Include files *******************************/
#include "PID.h"
#include "math.h"
/*****************************    Defines    *******************************/
#define MESSAGE_CALIBRATE 0b1000000011
#define MESSAGE_NOP 0b1000000010
#define MESSAGE_RESET_0 0b1000000101
#define MESSAGE_RESET_1 0b1000000110
#define MESSAGE_RESET_BOTH 0b1000000111
#define MESSAGE_STOP 0b1000000001

#define DEGREES_PER_RADIAN (3.1415927 / 180)

#define UPDATE_UI_TIME 400

#define RUNNING_AVERAGE_ORDER 10
/*****************************   Constants   *******************************/
const double steps_per_rad =  (12.0/37.5) * (3.1415927 / 180.0);
const double scaling_factor = 1.0/360.0 * PI * (1.0/8.26);

volatile unsigned long time = 0;

/*****************************   Variables   *******************************/
double pan_reference;
double tilt_reference;

double spi_sent;

double previous_input;

struct pid_state create_controller(double Kp, double Ti, double Td, long double Ts, double max, double min, int bits) {
  struct pid_state controller;

  controller.output = 0;
  controller.integral = 0;
  controller.Kp = Kp;
  controller.Ti = Ti;
  controller.Td = Td;
  controller.Ts = Ts;
  controller.max = max;
  controller.min = min;
  controller.bits = bits;

  return controller;
}

void callback (TimerHandle_t timer) {

}

void time_callback (TimerHandle_t timer) {
  time++;
}

void send_uart_char (INT8U character ){
  while(!uart0_tx_rdy());
  uart0_putc(character);
}

void send_uart_message(int value, INT8U character) {
  INT8U string_value[33] = {0};
  INT8U string_time[17] = {0};

  to_string(value, string_value);
  to_string(time, string_time);

  int i = 0;

  send_uart_char(character);
  send_uart_char(',');
  while (string_time[i] != 0) send_uart_char(string_time[i++]);
  i = 0;
  send_uart_char(',');
  while (string_value[i] != 0) send_uart_char(string_value[i++]);
  i = 0;
  send_uart_char('\n');
}

/*void send_uart_message (QueueHandle_t queue_handle, enum uart_message_type message_type, int message_data) {
  struct uart_message* message = malloc(sizeof(struct uart_message));
  message->message_type = message_type;
  message->message_data = message_data;

  while(!xQueueSend(queue_handle, &message, (TickType_t)10));
}*/

INT8S calculate_pid(struct pid_state* controller, double input) {
  // PID calculations.
  double i = (controller->input + input) / 2.0 * controller->Ts + controller->integral;

  double d = (input - controller->input) / controller->Ts;
  //double d_filtered = calculate_running_average(d);

  double output = controller->Kp * (input + (1.0/controller->Ti) * i + controller->Td * d);

  // Saturation and anti-windup.
  if (output > controller->min) {
    if (output < controller->max) {
      controller->integral = i;
      controller->output = output;
    } else controller->output = controller->max;
  } else controller->output = controller->min;

  // Converting from voltage to duty cycle.
  INT8S output_digital;
  if (controller->output >= 0) output_digital = controller->output * ((2 << (controller->bits - 1)) - 1) / controller->max;
  else output_digital = controller->output * (float)((2 << (controller->bits - 1)) - 1) / (0.0 - 1.0 * controller->min);

  // Saves previous input in controller.
  controller->input = input;
  return output_digital;
}

double pow_a (double input, int exp) {
  if (exp <= 0) return 1.0;
  return input * pow_a(input, exp - 1);
}

double abs (double input) {
  if (input < 0) return -input;
  return input;
}

double correct_angle (double input) {
  double angle = abs(input);
  const int coefficient_amount = 4;
  double coefficients[4] = {0, 0.0073, 0.00006, 0.0000003, -0.0000000004};

  double output = 0;
  for (int i = 0; i < coefficient_amount; i++) output += coefficients[i] * pow_a(angle, i);
  if (input < 0) output = -output;
  return output;
}

void pid_task_code( void* void_parameters) {
  struct pid_task_parameters* parameters = (struct pid_task_parameters*)void_parameters;
  QueueHandle_t out_queue_handle = parameters->out_queue_handle;
  QueueHandle_t in_queue_handle = parameters->in_queue_handle;
  QueueHandle_t uart_queue_handle = parameters->uart_queue_handle;

  struct digiswitch_pid_message* message_in_ptr;

  double pan_position = 0;
  double tilt_position = 0;

  struct pid_state pan_controller = create_controller(100.0, 2.0, 0.0, 0.005, 12.0, -12.0, 6);
  struct pid_state tilt_controller = create_controller(100.0, 10.0, 0.01, 0.005, 12.0, -12.0, 6);

  TimerHandle_t ui_update_timer = xTimerCreate("Update Timer", pdMS_TO_TICKS(UPDATE_UI_TIME), pdFALSE, (void*)0, callback);
  TimerHandle_t time_timer = xTimerCreate("Time Timer", pdMS_TO_TICKS(5), pdTRUE, (void*)0, time_callback);

  xTimerStart(time_timer, 0);

  while(spi_send(0 | MOTOR_TILT) != SEND_SUCCESS);
  while(spi_send(0 | MOTOR_PAN ) != SEND_SUCCESS);

  while(spi_send(MESSAGE_CALIBRATE) != SEND_SUCCESS);

  for (int i = 0; i < 100; i++) while (!spi_send(MESSAGE_NOP));

  vTaskDelay(5000);

  struct ui_message* calibration_message = malloc(sizeof(struct ui_message));
  calibration_message->message_type = e_ui_message_done_calibrating;
  xQueueSend(out_queue_handle, &calibration_message, 0);

  xTimerStart(ui_update_timer, 0);

  for (;;) {
    INT8S input;
    INT8S output;

    // Set get_status and input.
    int get_status = spi_get(&input);

    // Switch depending on which kind of data was received.
    switch(get_status){

      case GET_SUCCESS_PAN:
        // Convert from change in position in degrees to position in radians.
        encoder_to_position(input, &pan_position);

        // Calculate new state of PID-controller.
        output = calculate_pid(&pan_controller, pan_reference - pan_position);

        // Try sending output until successful.
        while (spi_send(output & 0b011111111) != SEND_SUCCESS);

        // Send position via. uart.
        //send_via_uart((100 * pan_position) / DEGREES_PER_RADIAN);
        //send_uart_message((100*pan_position)/DEGREES_PER_RADIAN,'p');

        // Sleep until next read;
        vTaskDelay(5);
        break;

      case GET_SUCCESS_TILT:
        // Convert from change in position in degrees to position in radians.
        encoder_to_position(input, &tilt_position);

        // Calculate new state of PID-controller.
        output = calculate_pid(&tilt_controller, tilt_reference - (tilt_position - correct_angle(tilt_position)));

        // Try sending output until successful.
        while (spi_send((((int)output) | 0x100) & ~(0x200)) != SEND_SUCCESS);

        // Send position via. uart.
        //send_via_uart((100 * tilt_position) / DEGREES_PER_RADIAN);
        //send_uart_message((100*tilt_position)/DEGREES_PER_RADIAN,'t');

        // Sleep until next read;
        vTaskDelay(5);
        break;

      case GET_FAILURE:
        // Didn't get proper data.
        //while (spi_send((INT8S)output | 0b1000000010) != SEND_SUCCESS);
        spi_send(MESSAGE_NOP);
        vTaskDelay(1);
        break;
    }

    if (xQueueReceive(in_queue_handle, &message_in_ptr, 0)) {
      switch (message_in_ptr->controller) {
        case econtroller_pan:
          pan_reference = message_in_ptr->reference * DEGREES_PER_RADIAN;
          break;

        case econtroller_tilt:
          tilt_reference = message_in_ptr->reference * DEGREES_PER_RADIAN;
          break;

        default:
          pan_reference = message_in_ptr->reference * DEGREES_PER_RADIAN;
          tilt_reference = message_in_ptr->reference * DEGREES_PER_RADIAN;
          break;
      }
      free(message_in_ptr);
    }

    if (!xTimerIsTimerActive(ui_update_timer)) {
      struct ui_message* message_pan = malloc(sizeof(struct ui_message));
      message_pan->message_data = pan_position / DEGREES_PER_RADIAN;
      message_pan->message_type = e_ui_message_new_value_pan;
      xQueueSend(out_queue_handle, &message_pan, 0);

      struct ui_message* message_tilt = malloc(sizeof(struct ui_message));
      message_tilt->message_data = tilt_position / DEGREES_PER_RADIAN;
      message_tilt->message_type = e_ui_message_new_value_tilt;
      xQueueSend(out_queue_handle, &message_tilt, 0);

      xTimerStart(ui_update_timer, 0);
    }
  }
}


void encoder_to_position (INT8S encoder_steps, double* position)
{
  //encoder_steps = conv_from_fpga(encoder_steps);
  *position += (encoder_steps * steps_per_rad);
}

/*****************************************************************************
*   Function : See module specification (.h-file).
*****************************************************************************/

/****************************** End Of Module *******************************/

void pid_task_create( void* parameters ) {
  xTaskHandle pid_task_handle = (void*)0;

  xTaskCreate( pid_task_code, "PID_Task", STACK_SIZE_PID, parameters, PRIO_PID, pid_task_handle );
}
