//#include <LCD_old.h>
#include "ui.h"
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"
#include "PID.h"
#include "tm4c123gh6pm.h"
#include "Digiswitch.h"
#include "systick_frt.h"
#include "Blinking.h"
#include "uart.h"

//#define NULL (void*)0

/**
 * main.c
 */

void init_gpio(void)
/*****************************************************************************
*   Input    :
*   Output   :
*   Function : The super loop.
******************************************************************************/
{
  int dummy;

  // Enable the GPIO port that is used for the on-board LED.
  SYSCTL_RCGC2_R |= SYSCTL_RCGC2_GPIOD | SYSCTL_RCGC2_GPIOF;

  // Do a dummy read to insert a few cycles after enabling the peripheral.
  dummy = SYSCTL_RCGC2_R;

  // Set the direction as output (PF1, PF2 and PF3).
  GPIO_PORTF_DIR_R = 0x0E;
  // Set the direction as output (PD6).
  GPIO_PORTD_DIR_R = 0x40;

  // Enable the GPIO pins for digital function (PF0, PF1, PF2, PF3, PF4).
  GPIO_PORTF_DEN_R = 0x1F;
  // Enable the GPIO pins for digital function (PD6).
  GPIO_PORTD_DEN_R = 0x40;

  // Enable internal pull-up (PF0 and PF4).
  GPIO_PORTF_PUR_R = 0x11;
}

static void setup_hardware(void)
/*****************************************************************************
*   Input    :  -
*   Output   :  -
*   Function :
*****************************************************************************/
{
  // TODO: Put hardware configuration and initialisation in here

  // Warning: If you do not initialize the hardware clock, the timings will be inaccurate
  init_systick();
  init_keypad();
  //init_button();
  init_gpio();
  init_spi2();
  init_digiswitch();
  uart0_init(115200, 8, 1, 'n'); //0b110 er even parity.
  //init_blinking();
  GPIO_PORTF_DATA_R &= ~(0b00001100);
}

int dummy_int;

int main(void)
{
  setup_hardware();
  // QUEUE CREATION
  static QueueHandle_t ui_queue_handle;
  ui_queue_handle = xQueueCreate(20, sizeof(struct ui_message*));

  static QueueHandle_t keypad_queue_handle;
  keypad_queue_handle = xQueueCreate(10, sizeof(struct keypad_message*));

  static QueueHandle_t pid_in_queue_handle;
  pid_in_queue_handle = xQueueCreate(10, sizeof(struct digiswitch_pid_message*));

  static QueueHandle_t uart_queue_handle;
  uart_queue_handle = xQueueCreate(100, sizeof(struct uart_message*));

  // KEYPAD TASK CREATION
  static struct keypad_task_parameters key_params;
  keypad_task_create((void*)&key_params);
  key_params.queue_handle = keypad_queue_handle;

  // DIGISWITCH TASK CREATION
  static struct digiswitch_task_parameters digi_params;
  digiswitch_task_create((void*)&digi_params);
  digi_params.queue_handle_lcd = ui_queue_handle;
  digi_params.queue_handle_keypad = keypad_queue_handle;
  digi_params.queue_handle_pid_in = pid_in_queue_handle;

  // PID TASK CREATION
  static struct pid_task_parameters pid_params;
  pid_task_create((void*)&pid_params);
  pid_params.in_queue_handle = pid_in_queue_handle;
  pid_params.out_queue_handle = ui_queue_handle;
  pid_params.uart_queue_handle = uart_queue_handle;

  // UI TASK CREATION
  static struct ui_task_parameters ui_params;
  ui_task_create((void*)&ui_params);
  ui_params.queue_handle = ui_queue_handle;

  // STATUS LED BLINK TASK CREATION
  //blinking_task_create();

  // UART TASK CREATION
  //static struct uart_task_parameters uart_params;
  //uart_task_create((void*)&uart_params);
  //uart_params.queue_handle = uart_queue_handle;

  vTaskStartScheduler();

	return 0;
}
