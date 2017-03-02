/*
 * 	startup.c
 *
 */
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

static SEGMENT *tail;
static SEGMENT *head;
static sint32_t dirx, diry;



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
	
	/* Här: placera ut mat */
	
	ascii_gotoxy(1, 1);
	/* Här: skriv ut score 0 */
}
	

void main(void)
{
	/* Här: anropa alla init-funktioner */
	
	while(1) {
		init_game();
		/* ... */
	}
	
}
