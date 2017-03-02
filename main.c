/*
 * 	startup.c
 *
 */

#include "gameObj.h"
#include "delay.h"
#include "gpio.h"
#include "grafiskDisp.h"
#include "keypad.h"

void startup(void) __attribute__((naked)) __attribute__((section(".start_section")));

void startup(void)
{
    asm volatile(" LDR R0,=0x2001C000\n" /* set stack */
                 " MOV SP,R0\n"
                 " BL main\n"   /* call main */
                 ".L1: B .L1\n" /* never return */
        );
}
static GEOMETRY ball_geometry = {
    12,         /* antal punkter */
    4, 4,       /* bredd och höjd */
    {
               {0,1}, {0,2},
        {1,0}, {1,1}, {1,2}, {1,3},
        {2,0}, {2,1}, {2,2}, {2,3},
               {3,1}, {3,2}
    }
};

/* Initiera en struct OBJECT */
static OBJECT ball = {
    &ball_geometry,
    0, 0,
    1, 1,
    draw_object,
    clear_object,
    move_object,
    set_object_speed
};
void main(int arg, char** argv)
{
    uint8_t c;
    POBJECT p = &ball;
    init_app();
    graphic_initialize();
    keypad_init();
    graphic_clearScreen();
	p->set_speed(p, 2, 0);
    while(1) {
        p->move(p);
        delay_ms(40);
        c = Keyb();
        switch(c) {
        case 6:
            p->set_speed(p, 2, 0);
            break;
        case 4:
            p->set_speed(p, -2, 0);
            break;
        case 2:
            p->set_speed(p, 0, -2);
            break;
        case 8:
            p->set_speed(p, 0, 2);
            break;
        }
    }
}