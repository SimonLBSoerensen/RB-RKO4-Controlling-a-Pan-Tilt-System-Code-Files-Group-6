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

#ifndef _LCD_H
  #define _LCD_H

/***************************** Include files *******************************/
#include <stdint.h>
#include "Config.h"
#include "emp_type.h"
#include "tm4c123gh6pm.h"
/*****************************    Defines    *******************************/

/*****************************   Constants   *******************************/

/*****************************   Functions   *******************************/

void init_lcd( void );

void lcd_write(INT8U character, INT8U x, INT8U y);

void lcd_clear( void );

void set_cursor_pos ( INT8U x, INT8U y );

void set_cursor (INT8U );

/*****************************************************************************
*   Input    : -
*   Output   : -
*   Function : -
******************************************************************************/


/****************************** End Of Module *******************************/
#endif
