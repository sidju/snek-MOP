#ifndef GRAFISKDISP_H
#define GRAFISKDISP_H

#include "gpio.h"

#define LCD_BUSY 0x80

void init_app(void); 
void graphic_initialize(void); 
void graphic_clearScreen(void);
void pixel(uint32_t x, uint32_t y, uint32_t set); 
void delay_ns(uint32_t ns);

#endif