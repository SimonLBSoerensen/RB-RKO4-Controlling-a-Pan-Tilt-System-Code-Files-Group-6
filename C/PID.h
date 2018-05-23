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

#ifndef _PID_H
  #define _PID_H

/***************************** Include files *******************************/
#include <stdint.h>
#include <stdio.h>
#include "FreeRTOS.h"
#include "tm4c123gh6pm.h"
#include "emp_type.h"
#include "task.h"
#include "queue.h"
#include "semphr.h"
#include "Config.h"
#include "SPI.h"
#include "ui.h"
#include "timers.h"
#include "uart.h"

/*****************************    Defines    *******************************/
#define PI 3.1415927

#define CONTROLLER_PAN 1
#define CONTROLLER_TILT 2

enum controller {
  econtroller_pan,
  econtroller_tilt,
  econtroller_none
};

struct digiswitch_pid_message {
  enum controller controller;
  int reference;
};

/*****************************   Constants   *******************************/
struct pid_task_parameters {
  QueueHandle_t in_queue_handle;
  QueueHandle_t out_queue_handle;
  QueueHandle_t uart_queue_handle;
};

struct pid_state {
  double input;
  double output;
  double integral;
  double Kp;
  double Ti;
  double Td;
  double Ts;
  double max;
  double min;
  int bits;
};

/*****************************   Functions   *******************************/

void pid_task_create( void* param );
/*****************************************************************************
*   Input    : -
*   Output   : -
*   Function : -
******************************************************************************/

void pid_task_code( void* param );
/*****************************************************************************
*   Input    : -
*   Output   : -
*   Function : -
******************************************************************************/

struct pid_state create_controller(double Kp, double Ti, double Td, long double Ts, double max, double min, int bits);
/*****************************************************************************
*   Input    : -
*   Output   : -
*   Function : -
******************************************************************************/

void encoder_to_position( INT8S encoder_steps, double* position );

/****************************** End Of Module *******************************/
#endif
