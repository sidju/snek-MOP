#ifndef GRAFISKDISP_H
#define GRAFISKDISP_H

#include "gpio.h"

#define LCD_BUSY 0x80

void init_app(void); 
static void graphic_ctrl_bit_set(uint8_t x); 
static void graphic_ctrl_bit_clear(uint8_t x);
static void select_controller (uint8_t controller);
static void graphic_wait_ready(void);
static uint8_t display_read (uint8_t controller); 
static uint8_t graphic_read_data(uint8_t controller);
static void graphic_write_data(uint8_t data, uint8_t controller);
static void graphic_writeCommand(uint8_t cmd, uint8_t controller);
static void graphic_writeData(uint8_t data, uint8_t controller);
void graphic_initialize(void); 
void graphic_clearScreen(void);
void pixel(uint32_t x, uint32_t y, uint32_t set); 
void delay_ns(uint32_t ns);

#endif