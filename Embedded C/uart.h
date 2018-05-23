/*****************************************************************************
* University of Southern Denmark
* Embedded Programming (EMP)
*
* MODULENAME.: uart.h
*
* PROJECT....: EMP
*
* DESCRIPTION: Test.
*
* Change Log:
******************************************************************************
* Date    Id    Change
* YYMMDD
* --------------------
* 150228  MoH   Module created.
*
*****************************************************************************/

#ifndef _UART_H
  #define _UART_H

/***************************** Include files *******************************/
#include "emp_type.h"
#include <stdint.h>
/*****************************    Defines    *******************************/
#define UART_DECIMALS 2
/*****************************   Constants   *******************************/

/*****************************   Functions   *******************************/
enum uart_message_type {
  e_uart_message_pan,
  e_uart_message_tilt,
  e_uart_message_status
};

struct uart_message {
  enum uart_message_type message_type;
  int message_data;
};

struct uart_task_parameters {
  QueueHandle_t queue_handle;
};
BOOLEAN uart0_rx_rdy();
/*****************************************************************************
*   Input    : -
*   Output   : -
*   Function : Character ready at uart0 RX
******************************************************************************/

INT8U uart0_getc();
/*****************************************************************************
*   Input    : -
*   Output   : -
*   Function : Get character from uart0 RX
******************************************************************************/

BOOLEAN uart0_tx_rdy();
/*****************************************************************************
*   Input    : -
*   Output   : -
*   Function : uart0 TX buffer ready
******************************************************************************/

void uart0_putc( INT8U );
/*****************************************************************************
*   Input    : -
*   Output   : -
*   Function : Put character to uart0 TX
******************************************************************************/

void uart0_init( INT32U, INT8U, INT8U, INT8U );
/*****************************************************************************
*   Input    : Baud rate, data bits, stop bits, parity.
*   Output   : -
*   Function : Initialize uart 0
******************************************************************************/

void to_string (int value, INT8U* message);

void uart_task_create(void* parameters);

/****************************** End Of Module *******************************/
#endif

