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
#include "Digiswitch.h"

/*****************************    Defines    *******************************/
#define STATUS_ARRAY_SIZE 4

#define STATUS_CONTAINS_ZERO 0
#define STATUS_JUST_ONES 1
/*****************************   Constants   *******************************/

/*****************************   Variables   *******************************/
int current_index = 0;
int status_array[STATUS_ARRAY_SIZE] = { 0, 0, 0, 0 };
static int current_value = 0;
/*****************************   Functions   *******************************/

void init_digiswitch( void ) {
  taskENTER_CRITICAL();
  //Enables the GPIO port used (Port A).
  SYSCTL_RCGC2_R |= SYSCTL_RCGC2_GPIOA;

  //Sets the pins PA5-PA7 in input mode;
  GPIO_PORTA_DIR_R &= ~(DIGISWITCH_A_PORTA_POSITION) & ~(DIGISWITCH_B_PORTA_POSITION) & ~(DIGISWITCH_P2_PORTA_POSITION);

  //Sets the pins to behave digitally.
  GPIO_PORTA_DEN_R |= DIGISWITCH_A_PORTA_POSITION | DIGISWITCH_B_PORTA_POSITION | DIGISWITCH_P2_PORTA_POSITION;
  taskEXIT_CRITICAL();
}

int get_A_down() {
  if (((GPIO_PORTA_DATA_R) & DIGISWITCH_A_PORTA_POSITION) != 0) return BUTTON_DOWN;
  return BUTTON_UP;
}

int get_B_down() {
  if (((GPIO_PORTA_DATA_R) & DIGISWITCH_B_PORTA_POSITION) != 0) return BUTTON_DOWN;
  return BUTTON_UP;
}

int get_P_down() {
  if (((GPIO_PORTA_DATA_R) & DIGISWITCH_P2_PORTA_POSITION) != 0) return BUTTON_DOWN;
  return BUTTON_UP;
}

void send_value_to_lcd (QueueHandle_t queue_handle) {
  struct ui_message* p_message = malloc(sizeof(struct ui_message));
  p_message->message_type = e_ui_message_new_value_reference;
  p_message->message_data = (INT16U)current_value;
  xQueueSend(queue_handle, (void*)&p_message, 10);
}

void send_message_to_ui( QueueHandle_t queue_handle, enum ui_message_type message_type, INT8U message_data ) {
  struct ui_message* p_message = malloc(sizeof(struct ui_message));
  p_message->message_type = message_type;
  p_message->message_data = message_data;
  xQueueSend(queue_handle, (void*)&p_message, 10);
}

void send_value_to_pid (enum controller cont, QueueHandle_t queue_handle) {
  struct digiswitch_pid_message* message = malloc(sizeof(struct digiswitch_pid_message));
  message->controller = cont;
  message->reference = current_value;
  xQueueSend(queue_handle, &message, 10);
}

void typing_function (struct keypad_message* keypad_message, QueueHandle_t queue_keypad, QueueHandle_t queue_lcd) {
  int exit_typing_state = FALSE;
  send_message_to_ui(queue_lcd, e_ui_message_typing, 0);
  int i = 1;
  int dir = 1;
    while (!exit_typing_state) {
      if(xQueueReceive(queue_keypad, &keypad_message, 0) == pdTRUE) {
        if (keypad_message-> button != KEY_H) send_message_to_ui(queue_lcd, e_ui_message_typing, i++);
        switch(keypad_message->button) {
          case KEY_1:
            current_value *= 10;
            current_value += 1 * dir;
            break;

          case KEY_2:
            current_value *= 10;
            current_value += 2 * dir;
            break;

          case KEY_3:
            current_value *= 10;
            current_value += 3 * dir;
            break;

          case KEY_4:
            current_value *= 10;
            current_value += 4 * dir;
            break;

          case KEY_5:
            current_value *= 10;
            current_value += 5 * dir;
            break;

          case KEY_6:
            current_value *= 10;
            current_value += 6 * dir;
            break;

          case KEY_7:
            current_value *= 10;
            current_value += 7 * dir;
            break;

          case KEY_8:
            current_value *= 10;
            current_value += 8 * dir;
            break;

          case KEY_9:
            current_value *= 10;
            current_value += 9 * dir;
            break;

          case KEY_0:
            current_value *= 10;
            break;

          case KEY_S:
            exit_typing_state = TRUE;
            send_message_to_ui(queue_lcd, e_ui_message_typing, 17);
            break;

          case KEY_H:
            dir *= -1;
            break;

        }
        send_value_to_lcd(queue_lcd);
      }
      vTaskDelay(50);
    }
}

void digiswitch_task_code ( void* void_parameters ) {
  struct digiswitch_task_parameters* parameters = (struct digiswitch_task_parameters*)void_parameters;
  QueueHandle_t queue_lcd = parameters->queue_handle_lcd;
  QueueHandle_t queue_pid_in = parameters->queue_handle_pid_in;
  QueueHandle_t queue_keypad = parameters->queue_handle_keypad;

  int A_old = get_A_down();
  int P_old = get_P_down();

  int speed_up = 0;

  enum controller streaming = econtroller_none;

  struct keypad_message* keypad_message;

  send_value_to_lcd(queue_lcd);

  while (1) {
    // READ DIGISWITCH
    int A = get_A_down();
    int B = get_B_down();
    int P = get_P_down();

    if (A != A_old) {
      if (A != B) current_value += 1 + speed_up * 9;
      else current_value -= 1 + speed_up * 9;
      A_old = A;

      if (streaming != econtroller_none)  send_value_to_pid(streaming, queue_pid_in);
      send_value_to_lcd(queue_lcd);
    }

    if ((P == BUTTON_DOWN) && (P_old == BUTTON_UP)) {
      speed_up = !speed_up;
      send_message_to_ui(queue_lcd, e_ui_message_fine, !speed_up);
    }
    P_old = P;

    // GET KEYPAD EVENTS
    if(xQueueReceive(queue_keypad, &keypad_message, 0) == pdTRUE) {
      struct digiswitch_pid_message* pid_message_out_ptr;

      switch(keypad_message->button) {
        // # : Reset current value.
        case KEY_H:
          current_value = 0;
          send_value_to_lcd(queue_lcd);
          break;

        case KEY_1:
          if (keypad_message->event == BUTTON_PUSH) {
            send_value_to_pid(econtroller_pan, queue_pid_in);
            current_value = 0;
            send_value_to_lcd(queue_lcd);
            send_message_to_ui(queue_lcd, e_ui_message_sent, econtroller_pan);
          } else {
            streaming = econtroller_pan;
            send_message_to_ui(queue_lcd, e_ui_message_streaming, econtroller_pan);
          }
          break;

        case KEY_2:
          if (keypad_message->event == BUTTON_PUSH) {
            send_value_to_pid(econtroller_tilt, queue_pid_in);
            current_value = 0;
            send_value_to_lcd(queue_lcd);
            send_message_to_ui(queue_lcd, e_ui_message_sent, econtroller_tilt);
          } else {
            streaming = econtroller_tilt;
            send_message_to_ui(queue_lcd, e_ui_message_streaming, econtroller_tilt);
          }
          break;

        case KEY_3:
          streaming = econtroller_none;
          send_value_to_lcd(queue_lcd);
          send_message_to_ui(queue_lcd, e_ui_message_streaming, econtroller_none);
          break;

        case KEY_9:
          send_message_to_ui(queue_lcd, e_ui_message_reset, econtroller_none);
          break;

        case KEY_0:
          send_value_to_pid(econtroller_none, queue_pid_in); // NONE IS PROGRAMMED TO BE BOTH IN THIS CASE.
          break;

        case KEY_S:
          current_value = 0;
          send_value_to_lcd(queue_lcd);
          send_message_to_ui(queue_lcd, e_ui_message_typing, 0);
          typing_function(keypad_message, queue_keypad, queue_lcd);
          break;

        default:
          // This hopefully won't happen
          break;
      }
      free(keypad_message);
    }

    vTaskDelay(1);
  }
}

int push_to_array ( int new_element ) {
  status_array[current_index++] = new_element;
  if (current_index == STATUS_ARRAY_SIZE) current_index = 0;

  int result = STATUS_JUST_ONES;
  for (int i = 0; i < STATUS_ARRAY_SIZE; i++) if (status_array[i] == 0) result = STATUS_CONTAINS_ZERO;

  return result;
}

/*****************************************************************************
*   Function : See module specification (.h-file).
*****************************************************************************/

/****************************** End Of Module *******************************/


void digiswitch_task_create ( void* parameters ) {
  xTaskHandle task_handle = ( void* )0;
  xTaskCreate(digiswitch_task_code, "Digi Task", STACK_SIZE_DIGISWITCH, parameters, PRIO_DIGISWITCH, task_handle);
}
