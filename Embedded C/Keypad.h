/*****************************************************************************
* University of Southern Denmark
* Embedded Programming (EMP)
*
* MODULENAME.:
*
* PROJECT....:
*
* DESCRIPTION:
*
* Change Log:
******************************************************************************
* Date    Id    Change
* YYMMDD
* --------------------
* 150215  MoH    Module created.
*
*****************************************************************************/

#ifndef _KEYPAD_H
  #define _KEYPAD_H

/***************************** Include files *******************************/
#include <stdint.h>
#include "FreeRTOS.h"
#include "tm4c123gh6pm.h"
#include "emp_type.h"
#include "task.h"
#include "queue.h"
#include "semphr.h"
#include "Config.h"
#include "timers.h"

#define KEY_1 2 << WIRE_AMOUNT_Y | 3
#define KEY_2 1 << WIRE_AMOUNT_Y | 3
#define KEY_3 0 << WIRE_AMOUNT_Y | 3
#define KEY_4 2 << WIRE_AMOUNT_Y | 2
#define KEY_5 1 << WIRE_AMOUNT_Y | 2
#define KEY_6 0 << WIRE_AMOUNT_Y | 2
#define KEY_7 2 << WIRE_AMOUNT_Y | 1
#define KEY_8 1 << WIRE_AMOUNT_Y | 1
#define KEY_9 0 << WIRE_AMOUNT_Y | 1
#define KEY_S 2 << WIRE_AMOUNT_Y | 0
#define KEY_0 1 << WIRE_AMOUNT_Y | 0
#define KEY_H 0 << WIRE_AMOUNT_Y | 0

#define WIRE_AMOUNT_X 3
#define WIRE_AMOUNT_Y 4

/*****************************    Defines    *******************************/
#define BUTTON_HOLD 37
#define BUTTON_PUSH 36

/*****************************   Constants   *******************************/
struct keypad_task_parameters{
    int dummy_int;
    xQueueHandle queue_handle;
    xSemaphoreHandle mutex_handle;
};

struct keypad_message {
  int event;
  INT8U button;
};

/*****************************   Functions   *******************************/
void init_keypad(void);

void keypad_task_code( void* );
/*****************************************************************************
*   Input    : -
*   Output   : -
*   Function : -
******************************************************************************/

void keypad_task_create( void* );
/*****************************************************************************
*   Input    : -
*   Output   : -
*   Function : -
******************************************************************************/

/****************************** End Of Module *******************************/
#endif
