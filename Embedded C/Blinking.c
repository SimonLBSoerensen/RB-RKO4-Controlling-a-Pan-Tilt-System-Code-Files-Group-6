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
#include "Blinking.h"
/*****************************    Defines    *******************************/

/*****************************   Constants   *******************************/

/*****************************   Variables   *******************************/

void init_blinking(void) {
  SYSCTL_RCGC2_R |= SYSCTL_RCGC2_GPIOD;

  //Sets the pin PD7 in output mode.
  GPIO_PORTA_DIR_R |= 1 << 6;

  //Sets the pins to behave digitally.
  GPIO_PORTA_DEN_R |= 1 << 6;
}


void blinking_task_code(void) {

  while (TRUE) {
    GPIO_PORTD_DATA_R &= ~(1 << 6);
    vTaskDelay(BLINKING_TIME_ON);
    GPIO_PORTD_DATA_R |= (1 << 6);
    vTaskDelay(BLINKING_TIME_OFF);
  }
}
/*****************************************************************************
*   Function : See module specification (.h-file).
*****************************************************************************/

/****************************** End Of Module *******************************/

void blinking_task_create(void) {
  xTaskHandle task_handle;

  //xTaskCreate( pid_task_code, "PID_Task", 140, parameters, HIGH_PRIO, pid_task_handle );
  xTaskCreate(blinking_task_code, "Blinking task", STACK_SIZE_BLINKING, (void*)0, PRIO_BLINKING, task_handle);
}
