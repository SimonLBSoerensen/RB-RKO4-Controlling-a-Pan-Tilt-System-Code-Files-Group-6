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
#include "LCD.h"
/*****************************    Defines    *******************************/
#define LCD_PORTC_DATA_PINS 0b11110000
#define LCD_PORTD_RS 0b00000100
#define LCD_PORTD_E 0b00001000
/*****************************   Constants   *******************************/

/*****************************   Variables   *******************************/

int nibble_mode = FALSE;
/*****************************   Functions   *******************************/
void wait_a_bit ( void ) {
  volatile int i = 0;
  for( i=0; i<1000; i ) i++;
}

void send (void) {
  // Tænd enable
  GPIO_PORTD_DATA_R |= LCD_PORTD_E;
  // Vent lidt
  wait_a_bit();
  // Sluk enable
  GPIO_PORTD_DATA_R &= ~(LCD_PORTD_E);
}

void send_command ( INT8U command ) {
  // Send høje bits til PC4-PC7
  GPIO_PORTC_DATA_R &= ~(LCD_PORTC_DATA_PINS);
  GPIO_PORTC_DATA_R |= (command & 0xF0);
  wait_a_bit();
  // Sluk RS (PD2) - Sætter til instruktionsmode
  GPIO_PORTD_DATA_R &= ~(LCD_PORTD_RS);
  wait_a_bit();
  send();
  if (nibble_mode) {
    // Send lave bits til PC4-PC7
    wait_a_bit();
    GPIO_PORTC_DATA_R &= ~(LCD_PORTC_DATA_PINS);
    GPIO_PORTC_DATA_R |= ((command & 0x0F) << 4);
    wait_a_bit();
    send();
    //vTaskDelay(1);
  } else if ((command & 0x30) == 0x20) nibble_mode = TRUE;
  wait_a_bit();
}

void send_data ( INT8U data ) {
  // Send høje bits til PC4-PC7
  GPIO_PORTC_DATA_R &= ~(LCD_PORTC_DATA_PINS);
  GPIO_PORTC_DATA_R |= (data & LCD_PORTC_DATA_PINS);
  wait_a_bit();
  // Tænd RS (PD2) - sætter til datamode
  GPIO_PORTD_DATA_R |= LCD_PORTD_RS;
  wait_a_bit();
  send();
  // Send lave bits til PC4-PC7
  wait_a_bit();
  GPIO_PORTC_DATA_R &= ~(LCD_PORTC_DATA_PINS);
  GPIO_PORTC_DATA_R |= ((data & 0x0F) << 4);
  wait_a_bit();
  send();
  //vTaskDelay(1);
  wait_a_bit();
}

void set_cursor_pos ( INT8U x, INT8U y ) {
  send_command(0b0010000000 | (y * 0x40) | x);
}

void init_lcd( void ) {
  SYSCTL_RCGC2_R |= SYSCTL_RCGC2_GPIOC | SYSCTL_RCGC2_GPIOD;
  vTaskDelay(2);
  GPIO_PORTC_DIR_R |= LCD_PORTC_DATA_PINS;
  GPIO_PORTD_DIR_R |= LCD_PORTD_RS | LCD_PORTD_E;

  GPIO_PORTC_DEN_R |= LCD_PORTC_DATA_PINS;
  GPIO_PORTD_DEN_R |= LCD_PORTD_RS | LCD_PORTD_E;
  vTaskDelay(20);

  send_command(0x30);
  vTaskDelay(5);
  send_command(0x30);
  vTaskDelay(1);
  send_command(0x30);

  // Tænd 2-bit mode (0b0010 0000)
  // (Function Set)
  send_command(0x20);
  // Sæt 2 linjer, 5x7 og 2-bit igen (0b0010 10XX)
  // (Function Set)
  send_command(0x28);
  // Tænd display og enable cursor (0b0000 1110)
  // (Display On/Off Control)
  send_command(0x08);
  send_command(0x0C);
  // Sæt cursor incrementing og stationært display (0b0000 0110)
  // (Entry Mode Set)
  send_command(0x06);

  lcd_clear();
}

void lcd_write(INT8U character, INT8U x, INT8U y) {
  // Sæt cursor pos med (0b00 1AAA AAAA) hvor a er adressen. (0x00 - 0x0F øverste række, 0x40 - 0x4F nederste række)
  set_cursor_pos(x, y);
  send_data(character);
  //send_command(2);
}

void lcd_clear( void ) {
  send_command(0x01);
  send_command(0x02);
  vTaskDelay(2);
}

void set_cursor ( INT8U state ) {
  if (state) send_command(0x0F);
  else send_command(0b1100); // 1 D C B (Always one, Display on/off, Cursor on/off, Blinking on/off)
}

/*****************************************************************************
*   Function : See module specification (.h-file).
*****************************************************************************/

/****************************** End Of Module *******************************/

