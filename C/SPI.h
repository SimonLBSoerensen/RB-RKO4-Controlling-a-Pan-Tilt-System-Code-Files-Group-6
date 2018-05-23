
/*****************************************************************************
* University of Southern Denmark
* Semester Project
*
* MODULENAME.: SPI.h
*
* PROJECT....: SPI
*
* DESCRIPTION: SPI API.
*
* Change Log:
******************************************************************************
* Date    Id    Change
* YYMMDD
* --------------------
* 03052018  MoH   Module created.
*
*****************************************************************************/
#ifndef SPI_H_
  #define SPI_H_

/***************************** Include files *******************************/

/*****************************    Defines    *******************************/
#define SEND_SUCCESS 1
#define SEND_FAILURE 0
#define GET_SUCCESS_PAN 1
#define GET_SUCCESS_TILT 2
#define GET_FAILURE 0

#define SSI2_ENABLE            0x00000004     ;// skal OR'es
#define SSI2_GPIO_PORT_ENABLE  0x00000002     ;// skal OR'es
#define SSI2_AFSEL             0x000000F0     ;// skal OR'es
#define SSI2_PCTL_RESET        0x0000FFFF     ;// skal AND'es
#define SSI2_PCTL_SET          0x22220000     ;// skal OR'es
#define SSI2_DEN               0x000000F0     ;// skal OR'es
#define SSI2_PU                0x000000F0     ;// Skal OR'es
#define SSI2_SSE_CLEAR         0xFFFFFFFD     ;// Skal AND'es
#define SSI2_CONTROL1          0x00000000     ;
#define SSI2_CLK               0xFFFFFFF0     ;// skal AND'es
#define SSI2_PRESCALER         0x00000020     ;
//#define SSI2_CONTROL0          0x00000049     ;
#define SSI2_CONTROL0          0x00000009     ;
#define SSI2_SSE_SET           0x00000002     ;// skal OR'es

#define MOTOR_PAN 0x0
#define MOTOR_TILT 0x100
/*****************************   Constants   *******************************/

/*****************************   Functions   *******************************/
void init_spi2();

int spi_get( int* );
/*****************************************************************************
*   Input    : -
*   Output   : -
*   Function : Character ready at uart0 RX
******************************************************************************/

int spi_send( int );
/*****************************************************************************
*   Input    : -
*   Output   : -
*   Function : Character ready at uart0 RX
******************************************************************************/

/****************************** End Of Module *******************************/

#endif /* SPI_H_ */
