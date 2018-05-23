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

#ifndef _CONFIG_H
  #define _CONFIG_H

/***************************** Include files *******************************/

/*****************************    Defines    *******************************/
#define IDLE_PRIO 0
#define LOWEST_PRIO 1
#define LOW_PRIO  2
#define MED_PRIO  3
#define HIGH_PRIO 3

#define PRIO_PID HIGH_PRIO
#define PRIO_UI MED_PRIO
#define PRIO_KEYPAD LOW_PRIO
#define PRIO_DIGISWITCH MED_PRIO
#define PRIO_BLINKING LOWEST_PRIO
#define PRIO_UART HIGH_PRIO

#define STACK_SIZE_PID configMINIMAL_STACK_SIZE * 2
#define STACK_SIZE_UI configMINIMAL_STACK_SIZE * 3
#define STACK_SIZE_KEYPAD configMINIMAL_STACK_SIZE
#define STACK_SIZE_DIGISWITCH configMINIMAL_STACK_SIZE
#define STACK_SIZE_BLINKING configMINIMAL_STACK_SIZE
#define STACK_SIZE_UART configMINIMAL_STACK_SIZE

#define PI 3.1415927

#define FALSE 0
#define TRUE 1

/*****************************   Constants   *******************************/

/*****************************   Functions   *******************************/

/*****************************************************************************
*   Input    : -
*   Output   : -
*   Function : -
******************************************************************************/


/****************************** End Of Module *******************************/
#endif
