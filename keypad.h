#ifndef KEYPAD_H
#define KEYPAD_H

#include "gpio.h"

void keypad_init(void);
void out7Seg(uint8_t c);
void kbd_activate(uint32_t row);
int kbd_col (void);
uint8_t Keyb (void);

#endif