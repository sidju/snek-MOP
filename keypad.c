#include "keypad.h"

/*vi konfigurerar port D genom att skriva 0x55005555 till moder.
 * Minst signifikanta 8 bitarna är utpinnar (sista 5555) kopplade till en display.
 * Mest signifikanta bitar är 4 in- och 4 utpinnar kopplade till ett tangentbord (5500)*/
     void keypad_init(void)
{
    const uint32_t Kbd_Disp_pinmode = 0x55005555; 
    const uint16_t Kbd_Disp_otype = 0x0000;       /*alla pinnar ställs som pushpull*/
    const uint32_t Kbd_Disp_pupd = 0x00aa0000;    /*inpinnar från kolumnerna pulluppulldow*/

    GPIO_D.moder = Kbd_Disp_pinmode;     /*skrivning*/
    GPIO_D.otyper = Kbd_Disp_otype;
    GPIO_D.pupdr = Kbd_Disp_pupd;

}

/*bitmönster i rätt ordning (från 0 till 15) för att visa en siffra på 7SegDisplay*/
static const uint8_t bit_patterns []= {0x3f,0x06,0x5b,0x4f,0x66,0x6d,0x7d,0x07,0x7f,0x6f,0x77,0x7c,0x39,0x5e,0x79,0x71}; 

/*visa rätt siffra på display. En siffra(c) skickas in och den siffran ska visas på displayen*/
void out7Seg(uint8_t c)
{  
    if (c < 0 || c > 15)
    {
        GPIO_D.odr_low = 0x00;   /*om det är fel, visar ingenting*/
    }
    else 
        GPIO_D.odr_low = bit_patterns[c];   /*c är index för arreyen.*/
}

/*den aktiverar en rad, sätt spänning på "kablarna". Row är ett värde som kan vara 1,2,3,4 eller 0*/
void kbd_activate(uint32_t row)
{
    if (row < 1 || row > 4) return;
    
    uint32_t pattern = (1 << (3 + row));    /* row = 1 : ettställ bit 4 */
    
    GPIO_D.odr_high &= 0x0f;        /* Skriver ingenting till IN-pinnarna! */
    GPIO_D.odr_high |= pattern;
}

/*läsa av om någon knapp på den aktiva raden är nertrykt */
int kbd_col (void)
{
    uint8_t c = GPIO_D.idr_high; 
    if (c & 0x08) return 4;
    if (c & 0x04) return 3;
    if (c & 0x02) return 2; 
    if (c & 0x01) return 1; 
    return 0; 
}

/*array med tangentkoder (1,2,3,A,4,5,6,B...) som i figuren*/
static const uint8_t Key[]={ 1,2,3,0xa,4,5,6,0xb,7,8,9,0xc,0xe,0,0xf,0xd };

/*huvudfunktionen för tangentbord*/
uint8_t Keyb (void)
{
    uint32_t row, col; 
    
    /*loopa igenom raderna. Vi börjar med rad 1*/
    for(row=1; row<= 4; row ++)
    {
        /*Vi skickar in rad i funktionen som ska aktivera den rad*/
        kbd_activate(row); 
        col = kbd_col();
        
        /*kolla kolumn*/
        if (col !=0)
        {
            kbd_activate(0);
            return Key [4*(row-1)+(col-1)];   /*beräkna index för att välja rätt knapp*/
        }
        kbd_activate (0); 
    }
    return 0xff; 
}