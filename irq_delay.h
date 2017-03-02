#ifndef DELAY_H
#define DELAY_H

#include "gpio.h"

void irq_delay(uint32_t count);
static void start_irq_delay_250ns(void);

#endif