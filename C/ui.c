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
#include "ui.h"

/*****************************    Defines    *******************************/
#define LCD_WIDTH 16
#define LCD_HEIGHT 2

#define UI_STREAMING_STATUS_POSITION 2
#define UI_STREAMING_STATUS_CHARS 2

#define UI_INCREMENT_TYPE_POSITION 0
#define UI_INCREMENT_TYPE_CHARS 2

#define UI_STATUS_MESSAGE_DURATION 1500

#define UI_PAN_LABEL_POSITION 5
#define UI_PAN_STATUS_POSITION 6
#define UI_PAN_STATUS_LENGTH 4

#define UI_TILT_LABEL_POSITION 11
#define UI_TILT_STATUS_POSITION 12
#define UI_TILT_STATUS_LENGTH 4
/*****************************   Constants   *******************************/

/*****************************   Variables   *******************************/
INT8U current_state[LCD_WIDTH][LCD_HEIGHT] = {" "};
INT8U new_state[LCD_WIDTH][LCD_HEIGHT] = {" "};

INT16U value_to_save;

struct position {
  INT8U x;
  INT8U y;
} cursor_pos;

TimerHandle_t lock_timer_handle;

void ui_timer_callback (TimerHandle_t timer) {
  for (int i = 0; i < 16; i++) new_state[i][0] = ' ';
  INT8U data[32];
  int i = 0;
  get_string(value_to_save, data);
  while (data[i] != '\0')  new_state[i][0] = data[i++];

  ui_draw();
}


void ui_draw ( void ) {
  for (int y = 0; y < LCD_HEIGHT; y++) {
    for (int x = 0; x < LCD_WIDTH; x++) {
      if (new_state[x][y] != current_state[x][y]) {
        current_state[x][y] = new_state[x][y];
        lcd_write(current_state[x][y], x, y);
      }
    }
  }
  set_cursor_pos(cursor_pos.x, cursor_pos.y);
}

void init_ui() {
  lcd_clear();

  for(int i = 0; i < LCD_HEIGHT * LCD_WIDTH; i++) {
    current_state[i % LCD_HEIGHT][i / LCD_HEIGHT] = '\0';
    new_state[i % LCD_HEIGHT][i / LCD_HEIGHT] = '\0';
  }

  for (int i = 0; i < UI_STREAMING_STATUS_CHARS; i++) new_state[UI_STREAMING_STATUS_POSITION + i][1] = "NS"[i];
  for (int i = 0; i < UI_INCREMENT_TYPE_CHARS; i++) new_state[UI_INCREMENT_TYPE_POSITION + i][1] = "F"[i];

  new_state[UI_PAN_LABEL_POSITION][1] = 'P';
  new_state[UI_TILT_LABEL_POSITION][1] = 'T';

  ui_draw();
}

void get_string(INT16S value, INT8U* message) {

  int digits = 1;

  if (value < 0) {
    message[0] = '-';
    value *= -1;
  } else message[0] = ' ';

  int temp = 1;
  while (temp <= value){
    temp *= 10;
    digits++;
  }

  //if (value == 0) message[digits++] = '0';

  int i = 1;
  while (value != 0) {
    message[digits - i++] = '0' + (value % 10);
    value /= 10;
  }

  message[digits] = '\0';
}

void create_toast(INT8U* p_message) {
  int i = 0;
  while (*p_message != '\0') new_state[i++][0] = *(p_message++);
  xTimerStart(lock_timer_handle, 0);
  ui_draw();
}

void ui_task_code ( void* void_parameters ) {
  struct ui_task_parameters* parameters = (struct ui_task_parameters*)void_parameters;
  QueueHandle_t queue_handle = parameters->queue_handle;

  struct ui_message* p_message;

  lock_timer_handle = xTimerCreate("UI Timer", pdMS_TO_TICKS(UI_STATUS_MESSAGE_DURATION), pdFALSE, (void*)0, ui_timer_callback);

  init_lcd();
  init_ui();

  /*while (p_message->message_type != e_ui_message_done_calibrating) {
    //create_toast("Welcome.");
    free(p_message); // If null pointer, free just ignores. (hopefully)
    xQueueReceive(queue_handle, (struct ui_message*)&p_message, (TickType_t)10 );
    vTaskDelay(400);
  }
  free(p_message);*/

  while (TRUE) {
    INT8U data[32];
    int i = 0;

    if (xQueueReceive(queue_handle, (struct ui_message*)&p_message, (TickType_t)10)) {
      switch(p_message->message_type) {
        case e_ui_message_new_value_reference:
          value_to_save = p_message->message_data;
          if (!xTimerIsTimerActive(lock_timer_handle)) {
            get_string(value_to_save, data);
            while (data[i] != '\0') {
              new_state[i][0] = data[i];
              i++;
            }
            for (i; i < 16; i++) new_state[i][0] = ' ';
          }
          break;

        case e_ui_message_new_value_pan:
          get_string(p_message->message_data, data);
          while (data[i] != '\0')  new_state[i + UI_PAN_STATUS_POSITION][1] = data[i++];
          i--;
          while (i > UI_PAN_STATUS_LENGTH) new_state[(i++) + UI_PAN_STATUS_POSITION][1] = ' ';
          break;

        case e_ui_message_new_value_tilt:
          get_string(p_message->message_data, data);
          while (data[i] != '\0')  new_state[i + UI_TILT_STATUS_POSITION][1] = data[i++];
          i--;
          while (i > UI_TILT_STATUS_LENGTH) new_state[(i++) + UI_TILT_STATUS_POSITION][1] = ' ';
          break;

        case e_ui_message_streaming:
          switch (p_message->message_data) {
            case econtroller_pan:
              for (int i = 0; i < UI_STREAMING_STATUS_CHARS; i++) new_state[UI_STREAMING_STATUS_POSITION + i][1] = "PS"[i];
              create_toast("Streaming pan");
              break;

            case econtroller_tilt:
              for (int i = 0; i < UI_STREAMING_STATUS_CHARS; i++) new_state[UI_STREAMING_STATUS_POSITION + i][1] = "TS"[i];
              create_toast("Streaming tilt");
              break;

            default:
              for (int i = 0; i < UI_STREAMING_STATUS_CHARS; i++) new_state[UI_STREAMING_STATUS_POSITION + i][1] = "  "[i];
              break;
          }
          break;

        case e_ui_message_fine:
          if (p_message->message_data == (INT8U)TRUE)
            for (int i = 0; i < UI_INCREMENT_TYPE_CHARS; i++) new_state[UI_INCREMENT_TYPE_POSITION + i][1] = "F"[i];
          else
            for (int i = 0; i < UI_INCREMENT_TYPE_CHARS; i++) new_state[UI_INCREMENT_TYPE_POSITION + i][1] = "R"[i];

          break;

        case e_ui_message_typing:
          if (p_message->message_data == 17) {
            set_cursor(FALSE);
          }
          else {
            set_cursor_pos(p_message->message_data + 1, 0);
            cursor_pos.x = p_message->message_data + 1;
            cursor_pos.y = 0;
            set_cursor(TRUE);
          }
          break;

        case e_ui_message_reset:
          init_ui();
          ui_draw();
          break;

        case e_ui_message_sent:
          switch(p_message->message_data) {
            case econtroller_pan:
              create_toast("Sent to pan.");
              break;

            case econtroller_tilt:
              create_toast("Sent to tilt.");
              break;
          }
          break;
      }
      free(p_message);
      ui_draw();
    }
    vTaskDelay(2);
  }
}

/*****************************************************************************
*   Function : See module specification (.h-file).
*****************************************************************************/

/****************************** End Of Module *******************************/

void ui_task_create ( void* parameters ) {
  xTaskCreate(ui_task_code, "UI Task", STACK_SIZE_UI, parameters, PRIO_UI, (void*)0);
}
