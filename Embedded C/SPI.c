/*
* 03052018  MoH   Module created.
*
*****************************************************************************/

/***************************** Include files *******************************/
#include <stdint.h>
#include "tm4c123gh6pm.h"
#include "SPI.h"
/*****************************    Defines    *******************************/

/*****************************   Constants   *******************************/

/*****************************   Variables   *******************************/

/*****************************   Functions   *******************************/

void init_spi2()
{

    //1. Enable the SSI module using the RCGCSSI register
    SYSCTL_RCGCSSI_R |=SSI2_ENABLE;  //enabler SSI2 (ikke SSI0, SSI1 og SSI3)

        // Initialize, enable, setup af SPI2 ifg side 965-966 i TIVA datasheet
       // SYSCTL_PRSSI_R indikerer om SSI modulet er klart. (implementer evetuelt en else fo fejldetektion)
    while (!SYSCTL_PRSSI_R);


        //2. Enable the clock to the appropriate GPIO module via the RCGCGPIO register
        // bit 6 til 31 er reserveret. sæt bit 0 til 5 og du aktiverer hhv. GPIO port A, B, C, D, E, F og giver dem en clock.
        //Vi anvender SSI2, som ligger på: port B4 pin 58(clk), port B5 pin 57(slave select), port B6 pin 1(receive) og port B7 pin 4(transmit).
        SYSCTL_RCGCGPIO_R |= SSI2_GPIO_PORT_ENABLE;

        //3. Set the GPIO AFSEL bits for the appropriate pins (see page 671)
        GPIO_PORTB_AFSEL_R |= SSI2_AFSEL

        //4. Configure the PMCn fields in the GPIOPCTL register to assign the SSI signals to the appropriate pins.
        GPIO_PORTB_PCTL_R &= SSI2_PCTL_RESET       //hver pin har en 4 bits enkodning. clearer de første 4 pins dvs. 16 bit.
        GPIO_PORTB_PCTL_R |= SSI2_PCTL_SET         //encoding skal stilles på 2

        //5.Program the GPIODEN register to enable the pin's digital function. In addition, the drive strength,
        //drain select and pull-up/pull-down functions must be configured
        GPIO_PORTB_DEN_R |= SSI2_DEN;
        // Alle GPIO pins er defaulted til 2-mA drive. Ved ikke hvad vi ønsker. kan sættes til 2, 4 eller 8mA. Anvender default indtil videre.
        // Der sættes pull-up på alle pins. Det sikrer at signalet er højt når forbindelsen er udefineret. Er egentlig kun kritisk på
        //slave select pin'en. GPIOCR skal kun anvendes ved brug af nogle bestemte registre. Ellers er den hardwired til 1.
        GPIO_PORTB_PUR_R  |= SSI2_PU;


        //For each of the frame formats, the SSI is configured using the following steps:

        //1. Ensure that the SSE bit (position 1) in the SSICR1 register is clear before making any configuration changes.
        SSI2_CR1_R &= SSI2_SSE_CLEAR;

        //2. select whether the SSI is a master or slave.
        SSI2_CR1_R = SSI2_CONTROL1;

        //3. Configure the SSI clock source by writing to the SSICC register. (vi bruger systemclock)
        SSI2_CC_R &= SSI2_CLK;

        //4. Configure the clock prescale divisor by writing the SSICPSR register.
        SSI2_CPSR_R = SSI2_PRESCALER;

        //5. Write the SSICR0 register with the following configuration: serial clock rate, Desired clock phase/polarity
        //the protocol mode (we use freescale SPI), the data size (10 bit, set by the 4 LSB of the register).
        SSI2_CR0_R  = SSI2_CONTROL0;

        //6. Optionally, configure the SSI module for microDMA use with the following steps.
        //Jeg ved stadig ikke hvad mikro DMA er og jeg tror ikke vi får brug for det.

        //7. Enable the SSI by setting the SSE bit in the SSICR1 register.
        SSI2_CR1_R |= SSI2_SSE_SET;

        for (int i = 0; i < 20; i++) {
          spi_send(MOTOR_PAN);
          spi_send(MOTOR_TILT);
        }

}

int spi_get(int *location)
{
  //4th bit in SSI2_SR_R indicates if SSI is Busy.
  if((SSI2_SR_R & 0b10000) == 0)
  {
    int input;
    // Data is written, and read from the SPI through SSI2_DR_R
    input = SSI2_DR_R & 0x3FF;

    if (!(input & (1 << 9))) {
      // if bit 8 is set then data is from motor 1, otherwise its motor 0.
      if(input & (1 << 8))
      {
        *location = (input & 0b0011111111);
        return GET_SUCCESS_TILT;
      }
      else
      {
        *location = (input & 0b0011111111);
        return GET_SUCCESS_PAN;
      }
    }
  }
  return GET_FAILURE;
}


 /*****************************************************************************
*   Input    : pointer to a double
*   Output   : int 1 or 0, depending on if the get succeded or not.
*   Function : gets the value from the SPI fifo and sets it as the value of the double the parameter was pointing at.
******************************************************************************/

int spi_send(int value)
{
  // Data is written, and read from the SPI through SSI2_DR_R              // if bit 8 is set then data is from motor 1, otherwise its motor 0.
    if((SSI2_SR_R & 0b10000) == 0)                 //4th bit in SSI2_SR_R indicates if SSI is Busy.
    {
        SSI2_DR_R = value;
        return SEND_SUCCESS;
    }
    return SEND_FAILURE;
}


/****************************** End Of Module *******************************/



