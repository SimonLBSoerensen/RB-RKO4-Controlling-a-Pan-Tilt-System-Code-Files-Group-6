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

#ifndef _UI_H
  #define _UI_H

/***************************** Include files *******************************/
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"
#include "emp_type.h"
#include "timers.h"
#include "Config.h"
#include "PID.h"
#include "LCD.h"

/*****************************    Defines    *******************************/

/*****************************   Constants   *******************************/

/*****************************   Functions   *******************************/

struct ui_task_parameters {
  QueueHandle_t queue_handle;
};

enum ui_message_type {
  e_ui_message_new_value_reference,
  e_ui_message_new_value_pan,
  e_ui_message_new_value_tilt,
  e_ui_message_streaming,
  e_ui_message_fine,
  e_ui_message_typing,
  e_ui_message_sent,
  e_ui_message_done_calibrating,
  e_ui_message_reset
};

struct ui_message {
  enum ui_message_type message_type;
  INT16U message_data;
};

void ui_task_code (void*);
void ui_task_create (void*);
void ui_draw(void);
void init_ui(void);
void ui_timer_callback(TimerHandle_t);

/*****************************************************************************
*   Input    : -
*   Output   : -
*   Function : -
******************************************************************************/


/****************************** End Of Module *******************************/
#endif
