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

#ifndef _NAME_OF_MODULE
  #define _NAME_OF_MODULE

/***************************** Include files *******************************/
#include "Config.h"
#include "tm4c123gh6pm.h"
#include "FreeRTOS.h"
#include "task.h"
/*****************************    Defines    *******************************/
#define BLINKING_TIME_OFF 900
#define BLINKING_TIME_ON 100
/*****************************   Constants   *******************************/

/*****************************   Functions   *******************************/

void init_blinking(void);

void blinking_task_create(void);

void blinking_task_code(void);

/*****************************************************************************
*   Input    : -
*   Output   : -
*   Function : -
******************************************************************************/


/****************************** End Of Module *******************************/
#endif
