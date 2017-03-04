/*
 * 	startup.c
 *
 */
 
#include "types.h"
#include "ascii.h"
#include "grafikDisp.h"

#define NULL ((void *)0)

void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );

void startup ( void )
{
asm volatile(
	" LDR R0,=0x2001C000\n"		/* set stack */
	" MOV SP,R0\n"
	" BL main\n"				/* call main */
	".L1: B .L1\n"				/* never return */
	) ;
}

/*länkad lista*/
typedef struct segment {
    uint8_t x;
    uint8_t y;
    struct segment *next;
} SEGMENT;

typedef struct dot {
	uint8_t x;
	uint8_t y;
} DOT;

#define INITIAL_LENGTH 4

static SEGMENT *tail;
static SEGMENT *old_tail;
static SEGMENT *head;
static DOT *apple;
static sint32_t dirx, diry;
int game_over, score, grow;

static uint32_t next = 1;

static uint32_t rand(void)
{
    next = next * 1103515245 + 12345;
    return (uint32_t)(next/65536) % 32768;	
}

/*starta slupmgenerator*/
static void srand(uint32_t seed)
{
    next = seed;
}

/*flytta ett svans-segment så det blir det nya huvudet*/ 
static void move_snake(void)
{
	//visst är följande möjligt för optimering (mindre nyttjande av move buffer) och integrering av tillväxt
    SEGMENT *move;
    if (grow != 1)
	{
		old_tail = tail;		//så vi vet vilka kordinater att nollställa	
		tail = tail->next;      /*ny svans*/
		grow = 0;
    }
	move->x = head->x + dirx;	/*ändra koordinaterna så att den blir nya huvudet*/
    move->y = head->y + diry;
    head->next = move;          /*peka på head*/
    head = move;
    head->next = NULL;          /*head pekar på NULL- sista blocket*/   

	//blir det inte en tillväxt på ett segment när denna körs?
	//om vi kör det som tömmer och frigör
}



// om man istället kör på att inte nollskriva gamla tail i move snake utan låter den bestå ger det en 

/*lägg till ett segment*/
static void grow_snake(void)
{
    SEGMENT *new_tail;  
    new_tail=malloc(sizeof(SEGMENT)); 
    new_tail->next = tail;
    new_tail ->x = tail->x;    /*samma position som tail, pgv svårt att veta var svansen är på väg*/
    new_tail ->y = tail->y;
    tail = new_tail;     
}


static void new_apple(void)
{
	int good = 0;
	while(good == 0) 
	{
		int no_collide = 1;
		apple->x= (rand()%62);
		apple->y= (rand()%30);

		SEGMENT* ptr = tail;
		while(ptr != head) 
		{
			if((apple->x == ptr->x) && (apple->y == ptr->y)) 
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
	//hexadecimal poängräkning kanske?
	
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
}

static void init_game(void)
{
	int i;
	
	game_over = 0;
	grow = 0;
    tail = malloc(sizeof(SEGMENT));   /*reservera plats på heapen för ett segment*/
    head = tail;
    tail->x = 30;   /*placera ormen i mitten på skärmen*/
    tail->y = 15;
    head->next = NULL;
    
    for (i = 1; i < INITIAL_LENGTH; i++) {
        grow_snake(); 
    }
	srand(score); //rand initieras med förra spelets slut score. Kan ordnas med timer istället
	score = 0;
	new_apple();
	
	full_print_score();
}

static void check_collision()
{
	SEGMENT* ptr = tail;
	while (ptr != head)
	{
		if ((head->x==ptr->x) && (head->y==ptr->y))
		{
			game_over = 1;
			return;
		}
		ptr = ptr->next;
	}
	
	/* varje SEGMENT = 2x2 pixels */
	if (head->x < 1 || head->x > 62)
	{
		game_over = 1;
		return;
	}
	
	if (head->y < 1 || head->y > 30) 
	{
		game_over = 1;
		return;
	}
	
	if ((head->x==apple->x) && (head->y==apple->y))
	{
		score++;
		grow = 1;
		full_print_score(); //score ändras direkt, new_apple riskerar ta mycket tid
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
}

static void play_game(void)
{
	init_game();
	//Execute the game
	while(game_over == 0) {
		control_snake();
		check_collision(); //creates new apple if necessary
		write_disp();
		write_ascii();
	}
	free_game();
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
		show_menu();
		play_game(); //nollställer score efter att ha initierat srand och game_over i init_game
		game_over();
	}
	
}
