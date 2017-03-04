#ifndef DELAY_H
#define DELAY_H

#include "gpio.h"

void delay_250ns(void); 
void delay_500ns(void); 
void delay_us(uint32_t us); 
void delay_ms(uint32_t ms);

#endif