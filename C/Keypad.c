/*****************************************************************************
* University of Southern Denmark
* Embedded Programming (EMP)
*
* MODULENAME.: Keypad.c
*
* PROJECT....: FreeRTOSv1b
*
* DESCRIPTION: See module specification file (.h-file).
*
* Change Log:
*****************************************************************************
* Date    Id    Change
* YYMMDD
* --------------------
* 240418  MoH   Module created.
*
*****************************************************************************/

/***************************** Include files *******************************/

#include "Keypad.h"

/*****************************    Defines    *******************************/
#define KEYPAD_PORTA_OFFSET_X 2
#define KEYPAD_PORTE_OFFSET_Y 0
#define KEYPAD_PORTA_CLEAR_X (0b000 << KEYPAD_PORTA_OFFSET_X)

#define HOLD_TIME 1500

/*****************************   Constants   *******************************/

/*****************************   Variables   *******************************/
volatile int button_still_down;
/*****************************   Functions   *******************************/

void init_keypad() {
  taskENTER_CRITICAL();
  //Enables the GPIO port used (Port A and E).
  SYSCTL_RCGC2_R |= SYSCTL_RCGC2_GPIOA;
  SYSCTL_RCGC2_R |= SYSCTL_RCGC2_GPIOE;

  //Sets the pins PA2 - PA4 in output mode.
  GPIO_PORTA_DIR_R |= 0b111 << KEYPAD_PORTA_OFFSET_X;

  //Sets the pins PE0 - PE3 in input mode.
  GPIO_PORTE_DIR_R &= 0b0000 << KEYPAD_PORTE_OFFSET_Y;

  //Sets the pins to behave digitally.
  GPIO_PORTA_DEN_R |= 0b111 << KEYPAD_PORTA_OFFSET_X;
  GPIO_PORTE_DEN_R |= 0b1111 << KEYPAD_PORTE_OFFSET_Y;
  taskEXIT_CRITICAL();
}

void X_increment (int* X) {
  if (++(*X) == WIRE_AMOUNT_X) *X = 0;

  GPIO_PORTA_DATA_R &= KEYPAD_PORTA_CLEAR_X;
  GPIO_PORTA_DATA_R |= 1 << *X << KEYPAD_PORTA_OFFSET_X;
}

/*****************************************************************************
*   Function : See module specification (.h-file).
*****************************************************************************/

void button_timer_callback ( TimerHandle_t timer_handle ) {
  //button_still_down = 1;
}

int button_pushed (int Y) {
  button_still_down = 0;

  TimerHandle_t timer_handle = xTimerCreate(
      "Button Timer",
      pdMS_TO_TICKS(HOLD_TIME),
      pdFALSE,
      (void*)0,
      button_timer_callback
      );

  xTimerStart(timer_handle, 0);

  do {
    vTaskDelay(50);
  } while ( xTimerIsTimerActive(timer_handle) && (GPIO_PORTE_DATA_R >> KEYPAD_PORTE_OFFSET_Y) & (1 << Y) );

  int result = BUTTON_HOLD;

  if (xTimerIsTimerActive(timer_handle)) result = BUTTON_PUSH;

  xTimerDelete(timer_handle, 0);

  return result;
}

void keypad_task_code( void* void_parameters ) {
    struct keypad_task_parameters* parameters = (struct keypad_task_parameters*)void_parameters;
    xQueueHandle queue_handle = parameters->queue_handle;

    int X = 0;
    GPIO_PORTA_DATA_R |= 0b001 << KEYPAD_PORTA_OFFSET_X;

    while (1) {
      for (int Y = 0; Y < WIRE_AMOUNT_Y; Y++){
        if ((GPIO_PORTE_DATA_R >> KEYPAD_PORTE_OFFSET_Y) & (1 << Y)) {
          int event = button_pushed(Y);


          struct keypad_message* keypad_message_ptr = malloc(sizeof(struct keypad_message));
          keypad_message_ptr->event = event;
          keypad_message_ptr->button = X << WIRE_AMOUNT_Y | Y;
          xQueueSend(queue_handle, &keypad_message_ptr, 0);

          while ((GPIO_PORTE_DATA_R >> KEYPAD_PORTE_OFFSET_Y) & (1 << Y)) vTaskDelay(5);
        }
      }

      X_increment(&X);
      vTaskDelay(30);
    }
}

/*****************************************************************************
*   Function : See module specification (.h-file).
*****************************************************************************/

/****************************** End Of Module *******************************/

void keypad_task_create( void* parameters ) {
  xTaskHandle keypad_task_handle = (void*)0;

  //xTaskCreate( Pointer to code, Name of task, Stack size, Parameters, Priority, Task handle );
  xTaskCreate( keypad_task_code, "Keypad_Task", STACK_SIZE_KEYPAD, parameters, PRIO_KEYPAD, keypad_task_handle);
}
