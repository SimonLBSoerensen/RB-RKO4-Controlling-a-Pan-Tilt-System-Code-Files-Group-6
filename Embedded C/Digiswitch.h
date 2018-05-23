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
*
*
*****************************************************************************/

#ifndef _DIGISWITCH
  #define _DIGISWITCH

/***************************** Include files *******************************/
#include <stdio.h>
#include "FreeRTOS.h"
#include "tm4c123gh6pm.h"
#include "task.h"
#include "queue.h"
#include "Config.h"
#include "Keypad.h"
#include "ui.h"
#include "PID.h"

/*****************************    Defines    *******************************/
#define DIGISWITCH_A_PORTA_POSITION (1 << 5)
#define DIGISWITCH_B_PORTA_POSITION (1 << 6)
#define DIGISWITCH_P2_PORTA_POSITION (1 << 7)

#define BUTTON_DOWN 1
#define BUTTON_UP 0

/*****************************   Constants   *******************************/

/*****************************   Functions   *******************************/
struct digiswitch_task_parameters {
  QueueHandle_t queue_handle_lcd;
  QueueHandle_t queue_handle_pid_in;
  QueueHandle_t queue_handle_pid_out;
  QueueHandle_t queue_handle_keypad;
};

int get_A_down ( void );
int get_B_down ( void );

void init_digiswitch( void );

void digiswitch_task_create ( void* parameters );

void digiswitch_task_code ( void* parameters );

/*****************************************************************************
*   Input    : -
*   Output   : -
*   Function : -
******************************************************************************/


/****************************** End Of Module *******************************/
#endif
