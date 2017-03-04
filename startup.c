/*
 * 	startup.c
 *
 */
 
#include "types.h"
#include "ascii.h"
#include "grafikDisp.h"
 
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

static SEGMENT *tail;
static SEGMENT *head;
static DOT *apple;
static sint32_t dirx, diry;
int game_over, score;


/*flytta ett svans-segment så det blir det nya huvudet*/ 
static void move_snake(void)
{
    SEGMENT *move = tail;
    
    tail = move->next;           /*ny svans*/
    move->x = head->x + dirx;    /*ändra koordinaterna så att den blr huvudet*/
    move->y = head->y + diry;
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
    new_tail ->x = tail->x;    /*samma position som tail, pgv svårt att veta var svansen är på väg*/
    new_tail ->y = tail->y;
    tail = new_tail;     
}


static void new_apple(void)
{
	
}


static void print_score(void) {
	uint8_t ascii;
    int local_score = score;
    
	/* division med 10 går inte att kompilera */
	
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

static void init_game(void)
{
    tail = malloc(sizeof(SEGMENT));   /*reservera plats på heapen för ett segment*/
    head = tail;
    tail->x = 30;   /*placera ormen i mitten på skärmen*/
    tail->y = 15;
    head->next = NULL;
    
    for (i = 1; i < INITIAL_LENGTH; i++) {
        grow_snake(); 
    }
	
	new_apple();
	
	full_print_score();
}

static void check_collision()
{
	SEGMENT* ptr = tail;
	while (ptr != head)
	{
		//px används som generell figur så att delar av strukturen i gameObj kan användas igen
		if ((head->x==ptr->x) && (head->y==ptr->y) || (head->x < 0) || (head->y < 0) || (head->x + px->geo->sizex > 128) || (head->y + px->geo->sizey > 128 ))
		{
			game_over = 1;
			return;
		}
		ptr = ptr->next;
	}
	if ((head->x==apple->x) && (head->y==apple->y))
	{
		score++;
		new_apple();
		full_print_score();
	}
}


static void play_game(void)
{
	init_game(); //hur lämnar vi ut de relevanta pekarna?
	//Execute the game
	while(game_over == 0) {
		control_snake();
		check_collsion(); //creates new apple if necessary
		write_disp();
		write_ascii();
	}
	free_game(snake, apple);
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
		show_menu; //innefattar "game_over = 0;" samt "score = 0;"
		play_game;
		game_over;
	}
	
}
