/*
 * 	startup.c
 *
 */
 
#include <stdlib.h>
#include "types.h"
#include "ascii.h"
#include "grafikDisp.h"
#include "keypad.h"
#include "libMD407.h"

#ifndef NULL
#define NULL ((void *)0)
#endif

void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );

void startup ( void )
{
asm volatile(
	" LDR R0,=0x2001C000\n"		/* set stack */
	" MOV SP,R0\n"
	" BL crt_init\n"			/* init c runtime library */
	" BL main\n"				/* call main */
	".L1: B .L1\n"				/* never return */
	) ;
}

typedef struct dot {
	uint8_t x;
	uint8_t y;
} DOT;

/*länkad lista*/
typedef struct segment {
    DOT pos;
    struct segment *next;
} SEGMENT;

#define INITIAL_LENGTH 4

static SEGMENT *tail = NULL;
static SEGMENT *head = NULL;
static DOT *apple = NULL;
static sint32_t dirx, diry;
int game_over, score;

static uint32_t next = 1;

static uint32_t snake_rand(void)
{
    next = next * 1103515245 + 12345;
    return (uint32_t)(next/65536) % 32768;	
}

/*starta slupmgenerator*/
static void snake_srand(uint32_t seed)
{
    next = seed;
}

/*flytta ett svans-segment så det blir det nya huvudet*/ 
static void move_snake(void)
{
    SEGMENT *move = tail;
    
    tail = move->next;           /*ny svans*/
    move->pos.x = head->pos.x + dirx;    /*ändra koordinaterna så att den blr huvudet*/
    move->pos.y = head->pos.y + diry;
    head->next = move;          /*peka på head*/
    head = move;
    head->next = NULL;          /*head pekar på NULL- sista blocket*/   
}



/*lägg till ett segment*/
static void grow_snake(void)
{
    SEGMENT *new_tail;  
    new_tail=malloc(sizeof(SEGMENT)); 
    new_tail->next = tail;
    new_tail->pos.x = tail->pos.x;    /*samma position som tail, pgv svårt att veta var svansen är på väg*/
    new_tail->pos.y = tail->pos.y;
    tail = new_tail;     
}


static void new_apple(void)
{
	int good = 0;
	
	if (apple == NULL)
		apple = malloc(sizeof(DOT));
	
	while(good == 0) 
	{
		int no_collide = 1;
		/* modulo med icke två potens funkar inte! */
		
		apple->x= (snake_rand()%32) + 16;
		apple->y= (snake_rand()%16) + 8;

		SEGMENT* ptr = tail;
		while(ptr != NULL) /* måste kolla huvudet också */
		{
			if((apple->x == ptr->pos.x) && (apple->y == ptr->pos.y)) 
			{
				no_collide = 0;
				break;
			}
		ptr = ptr->next;
		}
		if(no_collide)
		{
			good = 1;
		}
	}
}


static void print_score(void) {
	uint8_t ascii;
    int local_score = score;
    
	/* division med 10 går inte att kompilera */
	/* därför gör vi såhär: */
	
    if (local_score > 99)
        local_score = 99;
    
    /* tiotalen */
    if (local_score >= 10) {
        ascii = '0';
        
        while (local_score >= 10) {
            ascii++;
            local_score = local_score - 10;
        }
        
        ascii_write_char(ascii);
    }
    
    /* ettalet */
    ascii_write_char(local_score + '0');
}

static void full_print_score(void) {
    ascii_gotoxy(1, 1);
    ascii_print("Score: ");
    print_score();
}

static void main_menu(void)
{
	static int random_seed = 0;
	
	ascii_gotoxy(1,1);
	ascii_print("Press A to start");
	
	while (Keyb() != 0x0a) {
		random_seed++;
	}
	
	snake_srand(random_seed); /* väldigt slumpmässigt tal! */
}

static void init_game(void)
{
	int i;
	
    tail = malloc(sizeof(SEGMENT));   /*reservera plats på heapen för ett segment*/
    head = tail;
    tail->pos.x = 30;   /*placera ormen i mitten på skärmen*/
    tail->pos.y = 15;
    head->next = NULL;
    
    for (i = 1; i < INITIAL_LENGTH; i++) {
        grow_snake(); 
    }

	score = 0;
	new_apple();
	
	full_print_score();
}


static void control_snake(void)
{
	switch(Keyb()){
		case 2: diry = -1; dirx = 0; break;
		case 8: diry = 1; dirx = 0; break;
		case 4: diry = 0; dirx = -1; break;
		case 6: diry = 0; dirx = 1; break;
	}
	
}


static void check_collision(void)
{
	SEGMENT* ptr = tail;
	while (ptr != head)
	{
		if ((head->pos.x==ptr->pos.x) && (head->pos.y==ptr->pos.y))
		{
			game_over = 1;
			return;
		}
		ptr = ptr->next;
	}
	
	/* varje SEGMENT = 2x2 pixels */
	if (head->pos.x < 1 || head->pos.x > 62)
	{
		game_over = 1;
		return;
	}
	
	if (head->pos.y < 1 || head->pos.y > 30)
	{
		game_over = 1;
		return;
	}
	
	if ((head->pos.x==apple->x) && (head->pos.y==apple->y))
	{
		score++;
		full_print_score();
		new_apple();
	}
}

static void free_game(void)
{
    SEGMENT *ptr = tail;
    SEGMENT *next;
    
    while (ptr != NULL) {
        next = ptr->next;
        free(ptr);
        ptr = next;
    }
    
    head = NULL;
    tail = NULL;

	free(apple);
	apple = NULL;
}

static void draw_snake(void)
{
	/* behöver skapas */
}

static void play_game(void)
{
	init_game();
	//Execute the game
	while(game_over == 0) {
		control_snake();
		move_snake();
		check_collision(); //creates new apple if necessary
		draw_snake();
	}
	free_game();
}
	
	
static void show_game_over(void)
{
	graphic_clearScreen();
	ascii_print("Game Over");
}


void main(void)
{
	/* Här: anropa alla init-funktioner */
	//keypad on upper GPIO D
	keypad_init();
	//Display on entire GPIO E
	init_app(); //init for graphics display. (Lite illa valt namn)
	ascii_init();
	while(1)
	{
		main_menu(); //behöver skapas
		play_game(); //nollställer score efter att ha initierat srand och game_over i init_game
		show_game_over();
	}
	
}
