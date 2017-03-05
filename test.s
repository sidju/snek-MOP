   1              		.syntax unified
   2              		.arch armv6-m
   3              		.fpu softvfp
   4              		.eabi_attribute 20, 1
   5              		.eabi_attribute 21, 1
   6              		.eabi_attribute 23, 3
   7              		.eabi_attribute 24, 1
   8              		.eabi_attribute 25, 1
   9              		.eabi_attribute 26, 1
  10              		.eabi_attribute 30, 6
  11              		.eabi_attribute 34, 0
  12              		.eabi_attribute 18, 4
  13              		.thumb
  14              		.syntax unified
  15              		.file	"startup.c"
  16              		.text
  17              	.Ltext0:
  18              		.cfi_sections	.debug_frame
  19              		.section	.start_section,"ax",%progbits
  20              		.align	2
  21              		.global	startup
  22              		.code	16
  23              		.thumb_func
  25              	startup:
  26              	.LFB0:
  27              		.file 1 "C:/Users/sid/Documents/snek/snek-MOP/startup.c"
   1:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** /*
   2:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****  * 	startup.c
   3:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****  *
   4:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****  */
   5:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****  
   6:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** #include "types.h"
   7:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** #include "ascii.h"
   8:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** #include "grafikDisp.h"
   9:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** #include "keypad.h"
  10:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 
  11:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** #define NULL ((void *)0)
  12:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 
  13:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );
  14:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 
  15:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** void startup ( void )
  16:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** {
  28              		.loc 1 16 0
  29              		.cfi_startproc
  17:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** asm volatile(
  30              		.loc 1 17 0
  31              		.syntax divided
  32              	@ 17 "C:/Users/sid/Documents/snek/snek-MOP/startup.c" 1
  33 0000 0248     		 LDR R0,=0x2001C000
  34 0002 8546     	 MOV SP,R0
  35 0004 FFF7FEFF 	 BL main
  36 0008 FEE7     	.L1: B .L1
  37              	
  38              	@ 0 "" 2
  18:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	" LDR R0,=0x2001C000\n"		/* set stack */
  19:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	" MOV SP,R0\n"
  20:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	" BL main\n"				/* call main */
  21:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	".L1: B .L1\n"				/* never return */
  22:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	) ;
  23:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** }
  39              		.loc 1 23 0
  40              		.thumb
  41              		.syntax unified
  42 000a C046     		nop
  43              		.cfi_endproc
  44              	.LFE0:
  46              		.bss
  47              		.align	2
  48              	tail:
  49 0000 00000000 		.space	4
  50              		.align	2
  51              	head:
  52 0004 00000000 		.space	4
  53              		.align	2
  54              	apple:
  55 0008 00000000 		.space	4
  56              		.align	2
  57              	dirx:
  58 000c 00000000 		.space	4
  59              		.align	2
  60              	diry:
  61 0010 00000000 		.space	4
  62              		.comm	game_over,4,4
  63              		.comm	score,4,4
  64              		.data
  65              		.align	2
  68              	next:
  69 0000 01000000 		.word	1
  70              		.text
  71              		.align	2
  72              		.code	16
  73              		.thumb_func
  75              	rand:
  76              	.LFB1:
  24:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 
  25:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** /*länkad lista*/
  26:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** typedef struct segment {
  27:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****     uint8_t x;
  28:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****     uint8_t y;
  29:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****     struct segment *next;
  30:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** } SEGMENT;
  31:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 
  32:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** typedef struct dot {
  33:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	uint8_t x;
  34:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	uint8_t y;
  35:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** } DOT;
  36:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 
  37:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** #define INITIAL_LENGTH 4
  38:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 
  39:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** static SEGMENT *tail;
  40:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** static SEGMENT *head;
  41:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** static DOT *apple;
  42:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** static sint32_t dirx, diry;
  43:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** int game_over, score;
  44:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 
  45:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** static uint32_t next = 1;
  46:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 
  47:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** static uint32_t rand(void)
  48:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** {
  77              		.loc 1 48 0
  78              		.cfi_startproc
  79 0000 80B5     		push	{r7, lr}
  80              		.cfi_def_cfa_offset 8
  81              		.cfi_offset 7, -8
  82              		.cfi_offset 14, -4
  83 0002 00AF     		add	r7, sp, #0
  84              		.cfi_def_cfa_register 7
  49:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****     next = next * 1103515245 + 12345;
  85              		.loc 1 49 0
  86 0004 074B     		ldr	r3, .L4
  87 0006 1B68     		ldr	r3, [r3]
  88 0008 074A     		ldr	r2, .L4+4
  89 000a 5343     		muls	r3, r2
  90 000c 074A     		ldr	r2, .L4+8
  91 000e 9A18     		adds	r2, r3, r2
  92 0010 044B     		ldr	r3, .L4
  93 0012 1A60     		str	r2, [r3]
  50:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****     return (uint32_t)(next/65536) % 32768;	
  94              		.loc 1 50 0
  95 0014 034B     		ldr	r3, .L4
  96 0016 1B68     		ldr	r3, [r3]
  97 0018 1B0C     		lsrs	r3, r3, #16
  98 001a 5B04     		lsls	r3, r3, #17
  99 001c 5B0C     		lsrs	r3, r3, #17
  51:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** }
 100              		.loc 1 51 0
 101 001e 1800     		movs	r0, r3
 102 0020 BD46     		mov	sp, r7
 103              		@ sp needed
 104 0022 80BD     		pop	{r7, pc}
 105              	.L5:
 106              		.align	2
 107              	.L4:
 108 0024 00000000 		.word	next
 109 0028 6D4EC641 		.word	1103515245
 110 002c 39300000 		.word	12345
 111              		.cfi_endproc
 112              	.LFE1:
 114              		.align	2
 115              		.code	16
 116              		.thumb_func
 118              	srand:
 119              	.LFB2:
  52:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 
  53:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** /*starta slupmgenerator*/
  54:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** static void srand(uint32_t seed)
  55:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** {
 120              		.loc 1 55 0
 121              		.cfi_startproc
 122 0030 80B5     		push	{r7, lr}
 123              		.cfi_def_cfa_offset 8
 124              		.cfi_offset 7, -8
 125              		.cfi_offset 14, -4
 126 0032 82B0     		sub	sp, sp, #8
 127              		.cfi_def_cfa_offset 16
 128 0034 00AF     		add	r7, sp, #0
 129              		.cfi_def_cfa_register 7
 130 0036 7860     		str	r0, [r7, #4]
  56:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****     next = seed;
 131              		.loc 1 56 0
 132 0038 034B     		ldr	r3, .L7
 133 003a 7A68     		ldr	r2, [r7, #4]
 134 003c 1A60     		str	r2, [r3]
  57:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** }
 135              		.loc 1 57 0
 136 003e C046     		nop
 137 0040 BD46     		mov	sp, r7
 138 0042 02B0     		add	sp, sp, #8
 139              		@ sp needed
 140 0044 80BD     		pop	{r7, pc}
 141              	.L8:
 142 0046 C046     		.align	2
 143              	.L7:
 144 0048 00000000 		.word	next
 145              		.cfi_endproc
 146              	.LFE2:
 148              		.align	2
 149              		.code	16
 150              		.thumb_func
 152              	move_snake:
 153              	.LFB3:
  58:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 
  59:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** /*flytta ett svans-segment så det blir det nya huvudet*/ 
  60:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** static void move_snake(void)
  61:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** {
 154              		.loc 1 61 0
 155              		.cfi_startproc
 156 004c 80B5     		push	{r7, lr}
 157              		.cfi_def_cfa_offset 8
 158              		.cfi_offset 7, -8
 159              		.cfi_offset 14, -4
 160 004e 82B0     		sub	sp, sp, #8
 161              		.cfi_def_cfa_offset 16
 162 0050 00AF     		add	r7, sp, #0
 163              		.cfi_def_cfa_register 7
  62:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****     SEGMENT *move = tail;
 164              		.loc 1 62 0
 165 0052 154B     		ldr	r3, .L10
 166 0054 1B68     		ldr	r3, [r3]
 167 0056 7B60     		str	r3, [r7, #4]
  63:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****     
  64:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****     tail = move->next;           /*ny svans*/
 168              		.loc 1 64 0
 169 0058 7B68     		ldr	r3, [r7, #4]
 170 005a 5A68     		ldr	r2, [r3, #4]
 171 005c 124B     		ldr	r3, .L10
 172 005e 1A60     		str	r2, [r3]
  65:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****     move->x = head->x + dirx;    /*ändra koordinaterna så att den blr huvudet*/
 173              		.loc 1 65 0
 174 0060 124B     		ldr	r3, .L10+4
 175 0062 1B68     		ldr	r3, [r3]
 176 0064 1A78     		ldrb	r2, [r3]
 177 0066 124B     		ldr	r3, .L10+8
 178 0068 1B68     		ldr	r3, [r3]
 179 006a DBB2     		uxtb	r3, r3
 180 006c D318     		adds	r3, r2, r3
 181 006e DAB2     		uxtb	r2, r3
 182 0070 7B68     		ldr	r3, [r7, #4]
 183 0072 1A70     		strb	r2, [r3]
  66:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****     move->y = head->y + diry;
 184              		.loc 1 66 0
 185 0074 0D4B     		ldr	r3, .L10+4
 186 0076 1B68     		ldr	r3, [r3]
 187 0078 5A78     		ldrb	r2, [r3, #1]
 188 007a 0E4B     		ldr	r3, .L10+12
 189 007c 1B68     		ldr	r3, [r3]
 190 007e DBB2     		uxtb	r3, r3
 191 0080 D318     		adds	r3, r2, r3
 192 0082 DAB2     		uxtb	r2, r3
 193 0084 7B68     		ldr	r3, [r7, #4]
 194 0086 5A70     		strb	r2, [r3, #1]
  67:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****     head->next = move;          /*peka på head*/
 195              		.loc 1 67 0
 196 0088 084B     		ldr	r3, .L10+4
 197 008a 1B68     		ldr	r3, [r3]
 198 008c 7A68     		ldr	r2, [r7, #4]
 199 008e 5A60     		str	r2, [r3, #4]
  68:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****     head = move;
 200              		.loc 1 68 0
 201 0090 064B     		ldr	r3, .L10+4
 202 0092 7A68     		ldr	r2, [r7, #4]
 203 0094 1A60     		str	r2, [r3]
  69:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****     head->next = NULL;          /*head pekar på NULL- sista blocket*/   
 204              		.loc 1 69 0
 205 0096 054B     		ldr	r3, .L10+4
 206 0098 1B68     		ldr	r3, [r3]
 207 009a 0022     		movs	r2, #0
 208 009c 5A60     		str	r2, [r3, #4]
  70:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** }
 209              		.loc 1 70 0
 210 009e C046     		nop
 211 00a0 BD46     		mov	sp, r7
 212 00a2 02B0     		add	sp, sp, #8
 213              		@ sp needed
 214 00a4 80BD     		pop	{r7, pc}
 215              	.L11:
 216 00a6 C046     		.align	2
 217              	.L10:
 218 00a8 00000000 		.word	tail
 219 00ac 04000000 		.word	head
 220 00b0 0C000000 		.word	dirx
 221 00b4 10000000 		.word	diry
 222              		.cfi_endproc
 223              	.LFE3:
 225              		.align	2
 226              		.code	16
 227              		.thumb_func
 229              	grow_snake:
 230              	.LFB4:
  71:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 
  72:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 
  73:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 
  74:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** /*lägg till ett segment*/
  75:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** static void grow_snake(void)
  76:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** {
 231              		.loc 1 76 0
 232              		.cfi_startproc
 233 00b8 80B5     		push	{r7, lr}
 234              		.cfi_def_cfa_offset 8
 235              		.cfi_offset 7, -8
 236              		.cfi_offset 14, -4
 237 00ba 82B0     		sub	sp, sp, #8
 238              		.cfi_def_cfa_offset 16
 239 00bc 00AF     		add	r7, sp, #0
 240              		.cfi_def_cfa_register 7
  77:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****     SEGMENT *new_tail;  
  78:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****     new_tail=malloc(sizeof(SEGMENT)); 
 241              		.loc 1 78 0
 242 00be 0820     		movs	r0, #8
 243 00c0 FFF7FEFF 		bl	malloc
 244 00c4 0300     		movs	r3, r0
 245 00c6 7B60     		str	r3, [r7, #4]
  79:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****     new_tail->next = tail;
 246              		.loc 1 79 0
 247 00c8 0A4B     		ldr	r3, .L13
 248 00ca 1A68     		ldr	r2, [r3]
 249 00cc 7B68     		ldr	r3, [r7, #4]
 250 00ce 5A60     		str	r2, [r3, #4]
  80:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	
  81:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	// om man flyttar in koden efter detta till en if loop i move snake kan man veta var svansen är p
  82:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	
  83:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****     new_tail ->x = tail->x;    /*samma position som tail, pgv svårt att veta var svansen är på v
 251              		.loc 1 83 0
 252 00d0 084B     		ldr	r3, .L13
 253 00d2 1B68     		ldr	r3, [r3]
 254 00d4 1A78     		ldrb	r2, [r3]
 255 00d6 7B68     		ldr	r3, [r7, #4]
 256 00d8 1A70     		strb	r2, [r3]
  84:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****     new_tail ->y = tail->y;
 257              		.loc 1 84 0
 258 00da 064B     		ldr	r3, .L13
 259 00dc 1B68     		ldr	r3, [r3]
 260 00de 5A78     		ldrb	r2, [r3, #1]
 261 00e0 7B68     		ldr	r3, [r7, #4]
 262 00e2 5A70     		strb	r2, [r3, #1]
  85:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****     tail = new_tail;     
 263              		.loc 1 85 0
 264 00e4 034B     		ldr	r3, .L13
 265 00e6 7A68     		ldr	r2, [r7, #4]
 266 00e8 1A60     		str	r2, [r3]
  86:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** }
 267              		.loc 1 86 0
 268 00ea C046     		nop
 269 00ec BD46     		mov	sp, r7
 270 00ee 02B0     		add	sp, sp, #8
 271              		@ sp needed
 272 00f0 80BD     		pop	{r7, pc}
 273              	.L14:
 274 00f2 C046     		.align	2
 275              	.L13:
 276 00f4 00000000 		.word	tail
 277              		.cfi_endproc
 278              	.LFE4:
 280              		.global	__aeabi_uidivmod
 281              		.align	2
 282              		.code	16
 283              		.thumb_func
 285              	new_apple:
 286              	.LFB5:
  87:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 
  88:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 
  89:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** static void new_apple(void)
  90:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** {
 287              		.loc 1 90 0
 288              		.cfi_startproc
 289 00f8 90B5     		push	{r4, r7, lr}
 290              		.cfi_def_cfa_offset 12
 291              		.cfi_offset 4, -12
 292              		.cfi_offset 7, -8
 293              		.cfi_offset 14, -4
 294 00fa 85B0     		sub	sp, sp, #20
 295              		.cfi_def_cfa_offset 32
 296 00fc 00AF     		add	r7, sp, #0
 297              		.cfi_def_cfa_register 7
  91:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	int good = 0;
 298              		.loc 1 91 0
 299 00fe 0023     		movs	r3, #0
 300 0100 FB60     		str	r3, [r7, #12]
  92:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	while(good == 0) 
 301              		.loc 1 92 0
 302 0102 3BE0     		b	.L16
 303              	.L21:
 304              	.LBB2:
  93:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	{
  94:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 		int no_collide = 1;
 305              		.loc 1 94 0
 306 0104 0123     		movs	r3, #1
 307 0106 BB60     		str	r3, [r7, #8]
  95:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 		apple->x= (rand()%62);
 308              		.loc 1 95 0
 309 0108 204B     		ldr	r3, .L22
 310 010a 1C68     		ldr	r4, [r3]
 311 010c FFF778FF 		bl	rand
 312 0110 0300     		movs	r3, r0
 313 0112 3E21     		movs	r1, #62
 314 0114 1800     		movs	r0, r3
 315 0116 FFF7FEFF 		bl	__aeabi_uidivmod
 316 011a 0B00     		movs	r3, r1
 317 011c DBB2     		uxtb	r3, r3
 318 011e 2370     		strb	r3, [r4]
  96:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 		apple->y= (rand()%30);
 319              		.loc 1 96 0
 320 0120 1A4B     		ldr	r3, .L22
 321 0122 1C68     		ldr	r4, [r3]
 322 0124 FFF76CFF 		bl	rand
 323 0128 0300     		movs	r3, r0
 324 012a 1E21     		movs	r1, #30
 325 012c 1800     		movs	r0, r3
 326 012e FFF7FEFF 		bl	__aeabi_uidivmod
 327 0132 0B00     		movs	r3, r1
 328 0134 DBB2     		uxtb	r3, r3
 329 0136 6370     		strb	r3, [r4, #1]
  97:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 
  98:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 		SEGMENT* ptr = tail;
 330              		.loc 1 98 0
 331 0138 154B     		ldr	r3, .L22+4
 332 013a 1B68     		ldr	r3, [r3]
 333 013c 7B60     		str	r3, [r7, #4]
  99:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 		while(ptr != head) 
 334              		.loc 1 99 0
 335 013e 13E0     		b	.L17
 336              	.L20:
 100:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 		{
 101:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 			if((apple->x == ptr->x) && (apple->y == ptr->y)) 
 337              		.loc 1 101 0
 338 0140 124B     		ldr	r3, .L22
 339 0142 1B68     		ldr	r3, [r3]
 340 0144 1A78     		ldrb	r2, [r3]
 341 0146 7B68     		ldr	r3, [r7, #4]
 342 0148 1B78     		ldrb	r3, [r3]
 343 014a 9A42     		cmp	r2, r3
 344 014c 09D1     		bne	.L18
 345              		.loc 1 101 0 is_stmt 0 discriminator 1
 346 014e 0F4B     		ldr	r3, .L22
 347 0150 1B68     		ldr	r3, [r3]
 348 0152 5A78     		ldrb	r2, [r3, #1]
 349 0154 7B68     		ldr	r3, [r7, #4]
 350 0156 5B78     		ldrb	r3, [r3, #1]
 351 0158 9A42     		cmp	r2, r3
 352 015a 02D1     		bne	.L18
 102:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 			{
 103:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 				no_collide = 0;
 353              		.loc 1 103 0 is_stmt 1
 354 015c 0023     		movs	r3, #0
 355 015e BB60     		str	r3, [r7, #8]
 104:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 				break;
 356              		.loc 1 104 0
 357 0160 07E0     		b	.L19
 358              	.L18:
 105:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 			}
 106:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 		ptr = ptr->next;
 359              		.loc 1 106 0
 360 0162 7B68     		ldr	r3, [r7, #4]
 361 0164 5B68     		ldr	r3, [r3, #4]
 362 0166 7B60     		str	r3, [r7, #4]
 363              	.L17:
  99:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 		{
 364              		.loc 1 99 0
 365 0168 0A4B     		ldr	r3, .L22+8
 366 016a 1B68     		ldr	r3, [r3]
 367 016c 7A68     		ldr	r2, [r7, #4]
 368 016e 9A42     		cmp	r2, r3
 369 0170 E6D1     		bne	.L20
 370              	.L19:
 107:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 		}
 108:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 		if(no_collide)
 371              		.loc 1 108 0
 372 0172 BB68     		ldr	r3, [r7, #8]
 373 0174 002B     		cmp	r3, #0
 374 0176 01D0     		beq	.L16
 109:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 		{
 110:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 			good = 1;
 375              		.loc 1 110 0
 376 0178 0123     		movs	r3, #1
 377 017a FB60     		str	r3, [r7, #12]
 378              	.L16:
 379              	.LBE2:
  92:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	{
 380              		.loc 1 92 0
 381 017c FB68     		ldr	r3, [r7, #12]
 382 017e 002B     		cmp	r3, #0
 383 0180 C0D0     		beq	.L21
 111:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 		}
 112:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	}
 113:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** }
 384              		.loc 1 113 0
 385 0182 C046     		nop
 386 0184 BD46     		mov	sp, r7
 387 0186 05B0     		add	sp, sp, #20
 388              		@ sp needed
 389 0188 90BD     		pop	{r4, r7, pc}
 390              	.L23:
 391 018a C046     		.align	2
 392              	.L22:
 393 018c 08000000 		.word	apple
 394 0190 00000000 		.word	tail
 395 0194 04000000 		.word	head
 396              		.cfi_endproc
 397              	.LFE5:
 399              		.align	2
 400              		.code	16
 401              		.thumb_func
 403              	print_score:
 404              	.LFB6:
 114:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 
 115:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 
 116:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** static void print_score(void) {
 405              		.loc 1 116 0
 406              		.cfi_startproc
 407 0198 80B5     		push	{r7, lr}
 408              		.cfi_def_cfa_offset 8
 409              		.cfi_offset 7, -8
 410              		.cfi_offset 14, -4
 411 019a 82B0     		sub	sp, sp, #8
 412              		.cfi_def_cfa_offset 16
 413 019c 00AF     		add	r7, sp, #0
 414              		.cfi_def_cfa_register 7
 117:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	uint8_t ascii;
 118:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****     int local_score = score;
 415              		.loc 1 118 0
 416 019e 154B     		ldr	r3, .L29
 417 01a0 1B68     		ldr	r3, [r3]
 418 01a2 3B60     		str	r3, [r7]
 119:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****     
 120:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	/* division med 10 går inte att kompilera */
 121:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	//hexadecimal poängräkning kanske?
 122:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	
 123:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****     if (local_score > 99)
 419              		.loc 1 123 0
 420 01a4 3B68     		ldr	r3, [r7]
 421 01a6 632B     		cmp	r3, #99
 422 01a8 01DD     		ble	.L25
 124:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****         local_score = 99;
 423              		.loc 1 124 0
 424 01aa 6323     		movs	r3, #99
 425 01ac 3B60     		str	r3, [r7]
 426              	.L25:
 125:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****     
 126:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****     /* tiotalen */
 127:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****     if (local_score >= 10) {
 427              		.loc 1 127 0
 428 01ae 3B68     		ldr	r3, [r7]
 429 01b0 092B     		cmp	r3, #9
 430 01b2 13DD     		ble	.L26
 128:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****         ascii = '0';
 431              		.loc 1 128 0
 432 01b4 FB1D     		adds	r3, r7, #7
 433 01b6 3022     		movs	r2, #48
 434 01b8 1A70     		strb	r2, [r3]
 129:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****         
 130:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****         while (local_score >= 10) {
 435              		.loc 1 130 0
 436 01ba 07E0     		b	.L27
 437              	.L28:
 131:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****             ascii++;
 438              		.loc 1 131 0
 439 01bc FB1D     		adds	r3, r7, #7
 440 01be 1A78     		ldrb	r2, [r3]
 441 01c0 FB1D     		adds	r3, r7, #7
 442 01c2 0132     		adds	r2, r2, #1
 443 01c4 1A70     		strb	r2, [r3]
 132:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****             local_score = local_score - 10;
 444              		.loc 1 132 0
 445 01c6 3B68     		ldr	r3, [r7]
 446 01c8 0A3B     		subs	r3, r3, #10
 447 01ca 3B60     		str	r3, [r7]
 448              	.L27:
 130:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****             ascii++;
 449              		.loc 1 130 0
 450 01cc 3B68     		ldr	r3, [r7]
 451 01ce 092B     		cmp	r3, #9
 452 01d0 F4DC     		bgt	.L28
 133:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****         }
 134:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****         
 135:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****         ascii_write_char(ascii);
 453              		.loc 1 135 0
 454 01d2 FB1D     		adds	r3, r7, #7
 455 01d4 1B78     		ldrb	r3, [r3]
 456 01d6 1800     		movs	r0, r3
 457 01d8 FFF7FEFF 		bl	ascii_write_char
 458              	.L26:
 136:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****     }
 137:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****     
 138:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****     /* ettalet */
 139:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****     ascii_write_char(local_score + '0');
 459              		.loc 1 139 0
 460 01dc 3B68     		ldr	r3, [r7]
 461 01de DBB2     		uxtb	r3, r3
 462 01e0 3033     		adds	r3, r3, #48
 463 01e2 DBB2     		uxtb	r3, r3
 464 01e4 1800     		movs	r0, r3
 465 01e6 FFF7FEFF 		bl	ascii_write_char
 140:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** }
 466              		.loc 1 140 0
 467 01ea C046     		nop
 468 01ec BD46     		mov	sp, r7
 469 01ee 02B0     		add	sp, sp, #8
 470              		@ sp needed
 471 01f0 80BD     		pop	{r7, pc}
 472              	.L30:
 473 01f2 C046     		.align	2
 474              	.L29:
 475 01f4 00000000 		.word	score
 476              		.cfi_endproc
 477              	.LFE6:
 479              		.section	.rodata
 480              		.align	2
 481              	.LC11:
 482 0000 53636F72 		.ascii	"Score: \000"
 482      653A2000 
 483              		.text
 484              		.align	2
 485              		.code	16
 486              		.thumb_func
 488              	full_print_score:
 489              	.LFB7:
 141:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 
 142:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** static void full_print_score(void) {
 490              		.loc 1 142 0
 491              		.cfi_startproc
 492 01f8 80B5     		push	{r7, lr}
 493              		.cfi_def_cfa_offset 8
 494              		.cfi_offset 7, -8
 495              		.cfi_offset 14, -4
 496 01fa 00AF     		add	r7, sp, #0
 497              		.cfi_def_cfa_register 7
 143:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****     ascii_gotoxy(1, 1);
 498              		.loc 1 143 0
 499 01fc 0121     		movs	r1, #1
 500 01fe 0120     		movs	r0, #1
 501 0200 FFF7FEFF 		bl	ascii_gotoxy
 144:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****     ascii_print("Score: "); //behöver skapas
 502              		.loc 1 144 0
 503 0204 044B     		ldr	r3, .L32
 504 0206 1800     		movs	r0, r3
 505 0208 FFF7FEFF 		bl	ascii_print
 145:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****     print_score();
 506              		.loc 1 145 0
 507 020c FFF7C4FF 		bl	print_score
 146:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** }
 508              		.loc 1 146 0
 509 0210 C046     		nop
 510 0212 BD46     		mov	sp, r7
 511              		@ sp needed
 512 0214 80BD     		pop	{r7, pc}
 513              	.L33:
 514 0216 C046     		.align	2
 515              	.L32:
 516 0218 00000000 		.word	.LC11
 517              		.cfi_endproc
 518              	.LFE7:
 520              		.section	.rodata
 521              		.align	2
 522              	.LC13:
 523 0008 50726573 		.ascii	"Press 2, 4, 6 or 8 to start\000"
 523      7320322C 
 523      20342C20 
 523      36206F72 
 523      20382074 
 524              		.text
 525              		.align	2
 526              		.code	16
 527              		.thumb_func
 529              	main_menu:
 530              	.LFB8:
 147:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 
 148:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** static void main_menu(void)
 149:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** {
 531              		.loc 1 149 0
 532              		.cfi_startproc
 533 021c 80B5     		push	{r7, lr}
 534              		.cfi_def_cfa_offset 8
 535              		.cfi_offset 7, -8
 536              		.cfi_offset 14, -4
 537 021e 00AF     		add	r7, sp, #0
 538              		.cfi_def_cfa_register 7
 150:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	acsii_print("Press 2, 4, 6 or 8 to start");
 539              		.loc 1 150 0
 540 0220 064B     		ldr	r3, .L36
 541 0222 1800     		movs	r0, r3
 542 0224 FFF7FEFF 		bl	acsii_print
 543              	.LBB3:
 151:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	while (( keyb() != (2||4||6||8) ))
 544              		.loc 1 151 0
 545 0228 C046     		nop
 546              	.L35:
 547              		.loc 1 151 0 is_stmt 0 discriminator 1
 548 022a FFF7FEFF 		bl	keyb
 549 022e 031E     		subs	r3, r0, #0
 550 0230 012B     		cmp	r3, #1
 551 0232 FAD1     		bne	.L35
 552              	.LBE3:
 152:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	{}
 153:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** }
 553              		.loc 1 153 0 is_stmt 1
 554 0234 C046     		nop
 555 0236 BD46     		mov	sp, r7
 556              		@ sp needed
 557 0238 80BD     		pop	{r7, pc}
 558              	.L37:
 559 023a C046     		.align	2
 560              	.L36:
 561 023c 08000000 		.word	.LC13
 562              		.cfi_endproc
 563              	.LFE8:
 565              		.align	2
 566              		.code	16
 567              		.thumb_func
 569              	init_game:
 570              	.LFB9:
 154:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 
 155:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** static void init_game(void)
 156:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** {
 571              		.loc 1 156 0
 572              		.cfi_startproc
 573 0240 80B5     		push	{r7, lr}
 574              		.cfi_def_cfa_offset 8
 575              		.cfi_offset 7, -8
 576              		.cfi_offset 14, -4
 577 0242 82B0     		sub	sp, sp, #8
 578              		.cfi_def_cfa_offset 16
 579 0244 00AF     		add	r7, sp, #0
 580              		.cfi_def_cfa_register 7
 157:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	int i;
 158:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	
 159:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****     tail = malloc(sizeof(SEGMENT));   /*reservera plats på heapen för ett segment*/
 581              		.loc 1 159 0
 582 0246 0820     		movs	r0, #8
 583 0248 FFF7FEFF 		bl	malloc
 584 024c 0300     		movs	r3, r0
 585 024e 1A00     		movs	r2, r3
 586 0250 164B     		ldr	r3, .L41
 587 0252 1A60     		str	r2, [r3]
 160:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****     head = tail;
 588              		.loc 1 160 0
 589 0254 154B     		ldr	r3, .L41
 590 0256 1A68     		ldr	r2, [r3]
 591 0258 154B     		ldr	r3, .L41+4
 592 025a 1A60     		str	r2, [r3]
 161:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****     tail->x = 30;   /*placera ormen i mitten på skärmen*/
 593              		.loc 1 161 0
 594 025c 134B     		ldr	r3, .L41
 595 025e 1B68     		ldr	r3, [r3]
 596 0260 1E22     		movs	r2, #30
 597 0262 1A70     		strb	r2, [r3]
 162:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****     tail->y = 15;
 598              		.loc 1 162 0
 599 0264 114B     		ldr	r3, .L41
 600 0266 1B68     		ldr	r3, [r3]
 601 0268 0F22     		movs	r2, #15
 602 026a 5A70     		strb	r2, [r3, #1]
 163:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****     head->next = NULL;
 603              		.loc 1 163 0
 604 026c 104B     		ldr	r3, .L41+4
 605 026e 1B68     		ldr	r3, [r3]
 606 0270 0022     		movs	r2, #0
 607 0272 5A60     		str	r2, [r3, #4]
 164:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****     
 165:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****     for (i = 1; i < INITIAL_LENGTH; i++) {
 608              		.loc 1 165 0
 609 0274 0123     		movs	r3, #1
 610 0276 7B60     		str	r3, [r7, #4]
 611 0278 04E0     		b	.L39
 612              	.L40:
 166:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****         grow_snake(); 
 613              		.loc 1 166 0 discriminator 3
 614 027a FFF71DFF 		bl	grow_snake
 165:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****         grow_snake(); 
 615              		.loc 1 165 0 discriminator 3
 616 027e 7B68     		ldr	r3, [r7, #4]
 617 0280 0133     		adds	r3, r3, #1
 618 0282 7B60     		str	r3, [r7, #4]
 619              	.L39:
 165:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****         grow_snake(); 
 620              		.loc 1 165 0 is_stmt 0 discriminator 1
 621 0284 7B68     		ldr	r3, [r7, #4]
 622 0286 032B     		cmp	r3, #3
 623 0288 F7DD     		ble	.L40
 167:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****     }
 168:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	srand(score); //rand initieras med förra spelets slut score. Kan ordnas med timer istället
 624              		.loc 1 168 0 is_stmt 1
 625 028a 0A4B     		ldr	r3, .L41+8
 626 028c 1B68     		ldr	r3, [r3]
 627 028e 1800     		movs	r0, r3
 628 0290 FFF7CEFE 		bl	srand
 169:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	score = 0;
 629              		.loc 1 169 0
 630 0294 074B     		ldr	r3, .L41+8
 631 0296 0022     		movs	r2, #0
 632 0298 1A60     		str	r2, [r3]
 170:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	new_apple();
 633              		.loc 1 170 0
 634 029a FFF72DFF 		bl	new_apple
 171:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	
 172:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	full_print_score();
 635              		.loc 1 172 0
 636 029e FFF7ABFF 		bl	full_print_score
 173:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** }
 637              		.loc 1 173 0
 638 02a2 C046     		nop
 639 02a4 BD46     		mov	sp, r7
 640 02a6 02B0     		add	sp, sp, #8
 641              		@ sp needed
 642 02a8 80BD     		pop	{r7, pc}
 643              	.L42:
 644 02aa C046     		.align	2
 645              	.L41:
 646 02ac 00000000 		.word	tail
 647 02b0 04000000 		.word	head
 648 02b4 00000000 		.word	score
 649              		.cfi_endproc
 650              	.LFE9:
 652              		.align	2
 653              		.code	16
 654              		.thumb_func
 656              	control_snake:
 657              	.LFB10:
 174:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 
 175:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 
 176:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** static void control_snake(void)
 177:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** {
 658              		.loc 1 177 0
 659              		.cfi_startproc
 660 02b8 80B5     		push	{r7, lr}
 661              		.cfi_def_cfa_offset 8
 662              		.cfi_offset 7, -8
 663              		.cfi_offset 14, -4
 664 02ba 00AF     		add	r7, sp, #0
 665              		.cfi_def_cfa_register 7
 178:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	switch(Keyb()){
 666              		.loc 1 178 0
 667 02bc FFF7FEFF 		bl	Keyb
 668 02c0 031E     		subs	r3, r0, #0
 669 02c2 042B     		cmp	r3, #4
 670 02c4 17D0     		beq	.L45
 671 02c6 02DC     		bgt	.L46
 672 02c8 022B     		cmp	r3, #2
 673 02ca 05D0     		beq	.L47
 179:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 		case 2: diry = -2; dirx = 0; break;
 180:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 		case 8: diry = 2; dirx = 0; break;
 181:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 		case 4: diry = 0; dirx = -2; break;
 182:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 		case 6: diry = 0; dirx = 2; break;
 183:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	}
 184:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	
 185:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** }
 674              		.loc 1 185 0
 675 02cc 22E0     		b	.L50
 676              	.L46:
 178:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	switch(Keyb()){
 677              		.loc 1 178 0
 678 02ce 062B     		cmp	r3, #6
 679 02d0 19D0     		beq	.L48
 680 02d2 082B     		cmp	r3, #8
 681 02d4 08D0     		beq	.L49
 682              		.loc 1 185 0
 683 02d6 1DE0     		b	.L50
 684              	.L47:
 179:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 		case 2: diry = -2; dirx = 0; break;
 685              		.loc 1 179 0
 686 02d8 104B     		ldr	r3, .L51
 687 02da 0222     		movs	r2, #2
 688 02dc 5242     		rsbs	r2, r2, #0
 689 02de 1A60     		str	r2, [r3]
 690 02e0 0F4B     		ldr	r3, .L51+4
 691 02e2 0022     		movs	r2, #0
 692 02e4 1A60     		str	r2, [r3]
 693 02e6 15E0     		b	.L44
 694              	.L49:
 180:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 		case 4: diry = 0; dirx = -2; break;
 695              		.loc 1 180 0
 696 02e8 0C4B     		ldr	r3, .L51
 697 02ea 0222     		movs	r2, #2
 698 02ec 1A60     		str	r2, [r3]
 699 02ee 0C4B     		ldr	r3, .L51+4
 700 02f0 0022     		movs	r2, #0
 701 02f2 1A60     		str	r2, [r3]
 702 02f4 0EE0     		b	.L44
 703              	.L45:
 181:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 		case 6: diry = 0; dirx = 2; break;
 704              		.loc 1 181 0
 705 02f6 094B     		ldr	r3, .L51
 706 02f8 0022     		movs	r2, #0
 707 02fa 1A60     		str	r2, [r3]
 708 02fc 084B     		ldr	r3, .L51+4
 709 02fe 0222     		movs	r2, #2
 710 0300 5242     		rsbs	r2, r2, #0
 711 0302 1A60     		str	r2, [r3]
 712 0304 06E0     		b	.L44
 713              	.L48:
 182:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	}
 714              		.loc 1 182 0
 715 0306 054B     		ldr	r3, .L51
 716 0308 0022     		movs	r2, #0
 717 030a 1A60     		str	r2, [r3]
 718 030c 044B     		ldr	r3, .L51+4
 719 030e 0222     		movs	r2, #2
 720 0310 1A60     		str	r2, [r3]
 721 0312 C046     		nop
 722              	.L44:
 723              	.L50:
 724              		.loc 1 185 0
 725 0314 C046     		nop
 726 0316 BD46     		mov	sp, r7
 727              		@ sp needed
 728 0318 80BD     		pop	{r7, pc}
 729              	.L52:
 730 031a C046     		.align	2
 731              	.L51:
 732 031c 10000000 		.word	diry
 733 0320 0C000000 		.word	dirx
 734              		.cfi_endproc
 735              	.LFE10:
 737              		.align	2
 738              		.code	16
 739              		.thumb_func
 741              	check_collision:
 742              	.LFB11:
 186:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 
 187:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 
 188:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** static void check_collision(void)
 189:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** {
 743              		.loc 1 189 0
 744              		.cfi_startproc
 745 0324 80B5     		push	{r7, lr}
 746              		.cfi_def_cfa_offset 8
 747              		.cfi_offset 7, -8
 748              		.cfi_offset 14, -4
 749 0326 82B0     		sub	sp, sp, #8
 750              		.cfi_def_cfa_offset 16
 751 0328 00AF     		add	r7, sp, #0
 752              		.cfi_def_cfa_register 7
 190:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	SEGMENT* ptr = tail;
 753              		.loc 1 190 0
 754 032a 2B4B     		ldr	r3, .L62
 755 032c 1B68     		ldr	r3, [r3]
 756 032e 7B60     		str	r3, [r7, #4]
 191:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	while (ptr != head)
 757              		.loc 1 191 0
 758 0330 14E0     		b	.L54
 759              	.L57:
 192:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	{
 193:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 		if ((head->x==ptr->x) && (head->y==ptr->y))
 760              		.loc 1 193 0
 761 0332 2A4B     		ldr	r3, .L62+4
 762 0334 1B68     		ldr	r3, [r3]
 763 0336 1A78     		ldrb	r2, [r3]
 764 0338 7B68     		ldr	r3, [r7, #4]
 765 033a 1B78     		ldrb	r3, [r3]
 766 033c 9A42     		cmp	r2, r3
 767 033e 0AD1     		bne	.L55
 768              		.loc 1 193 0 is_stmt 0 discriminator 1
 769 0340 264B     		ldr	r3, .L62+4
 770 0342 1B68     		ldr	r3, [r3]
 771 0344 5A78     		ldrb	r2, [r3, #1]
 772 0346 7B68     		ldr	r3, [r7, #4]
 773 0348 5B78     		ldrb	r3, [r3, #1]
 774 034a 9A42     		cmp	r2, r3
 775 034c 03D1     		bne	.L55
 194:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 		{
 195:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 			game_over = 1;
 776              		.loc 1 195 0 is_stmt 1
 777 034e 244B     		ldr	r3, .L62+8
 778 0350 0122     		movs	r2, #1
 779 0352 1A60     		str	r2, [r3]
 196:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 			return;
 780              		.loc 1 196 0
 781 0354 3CE0     		b	.L53
 782              	.L55:
 197:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 		}
 198:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 		ptr = ptr->next;
 783              		.loc 1 198 0
 784 0356 7B68     		ldr	r3, [r7, #4]
 785 0358 5B68     		ldr	r3, [r3, #4]
 786 035a 7B60     		str	r3, [r7, #4]
 787              	.L54:
 191:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	{
 788              		.loc 1 191 0
 789 035c 1F4B     		ldr	r3, .L62+4
 790 035e 1B68     		ldr	r3, [r3]
 791 0360 7A68     		ldr	r2, [r7, #4]
 792 0362 9A42     		cmp	r2, r3
 793 0364 E5D1     		bne	.L57
 199:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	}
 200:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	
 201:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	/* varje SEGMENT = 2x2 pixels */
 202:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	if (head->x < 1 || head->x > 62)
 794              		.loc 1 202 0
 795 0366 1D4B     		ldr	r3, .L62+4
 796 0368 1B68     		ldr	r3, [r3]
 797 036a 1B78     		ldrb	r3, [r3]
 798 036c 002B     		cmp	r3, #0
 799 036e 04D0     		beq	.L58
 800              		.loc 1 202 0 is_stmt 0 discriminator 1
 801 0370 1A4B     		ldr	r3, .L62+4
 802 0372 1B68     		ldr	r3, [r3]
 803 0374 1B78     		ldrb	r3, [r3]
 804 0376 3E2B     		cmp	r3, #62
 805 0378 03D9     		bls	.L59
 806              	.L58:
 203:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	{
 204:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 		game_over = 1;
 807              		.loc 1 204 0 is_stmt 1
 808 037a 194B     		ldr	r3, .L62+8
 809 037c 0122     		movs	r2, #1
 810 037e 1A60     		str	r2, [r3]
 205:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 		return;
 811              		.loc 1 205 0
 812 0380 26E0     		b	.L53
 813              	.L59:
 206:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	}
 207:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	
 208:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	if (head->y < 1 || head->y > 30)
 814              		.loc 1 208 0
 815 0382 164B     		ldr	r3, .L62+4
 816 0384 1B68     		ldr	r3, [r3]
 817 0386 5B78     		ldrb	r3, [r3, #1]
 818 0388 002B     		cmp	r3, #0
 819 038a 04D0     		beq	.L60
 820              		.loc 1 208 0 is_stmt 0 discriminator 1
 821 038c 134B     		ldr	r3, .L62+4
 822 038e 1B68     		ldr	r3, [r3]
 823 0390 5B78     		ldrb	r3, [r3, #1]
 824 0392 1E2B     		cmp	r3, #30
 825 0394 03D9     		bls	.L61
 826              	.L60:
 209:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	{
 210:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 		game_over = 1;
 827              		.loc 1 210 0 is_stmt 1
 828 0396 124B     		ldr	r3, .L62+8
 829 0398 0122     		movs	r2, #1
 830 039a 1A60     		str	r2, [r3]
 211:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 		return;
 831              		.loc 1 211 0
 832 039c 18E0     		b	.L53
 833              	.L61:
 212:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	}
 213:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	
 214:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	if ((head->x==apple->x) && (head->y==apple->y))
 834              		.loc 1 214 0
 835 039e 0F4B     		ldr	r3, .L62+4
 836 03a0 1B68     		ldr	r3, [r3]
 837 03a2 1A78     		ldrb	r2, [r3]
 838 03a4 0F4B     		ldr	r3, .L62+12
 839 03a6 1B68     		ldr	r3, [r3]
 840 03a8 1B78     		ldrb	r3, [r3]
 841 03aa 9A42     		cmp	r2, r3
 842 03ac 10D1     		bne	.L53
 843              		.loc 1 214 0 is_stmt 0 discriminator 1
 844 03ae 0B4B     		ldr	r3, .L62+4
 845 03b0 1B68     		ldr	r3, [r3]
 846 03b2 5A78     		ldrb	r2, [r3, #1]
 847 03b4 0B4B     		ldr	r3, .L62+12
 848 03b6 1B68     		ldr	r3, [r3]
 849 03b8 5B78     		ldrb	r3, [r3, #1]
 850 03ba 9A42     		cmp	r2, r3
 851 03bc 08D1     		bne	.L53
 215:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	{
 216:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 		score++;
 852              		.loc 1 216 0 is_stmt 1
 853 03be 0A4B     		ldr	r3, .L62+16
 854 03c0 1B68     		ldr	r3, [r3]
 855 03c2 5A1C     		adds	r2, r3, #1
 856 03c4 084B     		ldr	r3, .L62+16
 857 03c6 1A60     		str	r2, [r3]
 217:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 		full_print_score();
 858              		.loc 1 217 0
 859 03c8 FFF716FF 		bl	full_print_score
 218:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 		new_apple();
 860              		.loc 1 218 0
 861 03cc FFF794FE 		bl	new_apple
 862              	.L53:
 219:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	}
 220:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** }
 863              		.loc 1 220 0
 864 03d0 BD46     		mov	sp, r7
 865 03d2 02B0     		add	sp, sp, #8
 866              		@ sp needed
 867 03d4 80BD     		pop	{r7, pc}
 868              	.L63:
 869 03d6 C046     		.align	2
 870              	.L62:
 871 03d8 00000000 		.word	tail
 872 03dc 04000000 		.word	head
 873 03e0 00000000 		.word	game_over
 874 03e4 08000000 		.word	apple
 875 03e8 00000000 		.word	score
 876              		.cfi_endproc
 877              	.LFE11:
 879              		.align	2
 880              		.code	16
 881              		.thumb_func
 883              	free_game:
 884              	.LFB12:
 221:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 
 222:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** static void free_game(void)
 223:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** {
 885              		.loc 1 223 0
 886              		.cfi_startproc
 887 03ec 80B5     		push	{r7, lr}
 888              		.cfi_def_cfa_offset 8
 889              		.cfi_offset 7, -8
 890              		.cfi_offset 14, -4
 891 03ee 82B0     		sub	sp, sp, #8
 892              		.cfi_def_cfa_offset 16
 893 03f0 00AF     		add	r7, sp, #0
 894              		.cfi_def_cfa_register 7
 224:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****     SEGMENT *ptr = tail;
 895              		.loc 1 224 0
 896 03f2 0F4B     		ldr	r3, .L67
 897 03f4 1B68     		ldr	r3, [r3]
 898 03f6 7B60     		str	r3, [r7, #4]
 225:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****     SEGMENT *next;
 226:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****     
 227:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****     while (ptr != NULL) {
 899              		.loc 1 227 0
 900 03f8 08E0     		b	.L65
 901              	.L66:
 902              	.LBB4:
 228:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****         next = ptr->next;
 903              		.loc 1 228 0
 904 03fa 7B68     		ldr	r3, [r7, #4]
 905 03fc 5B68     		ldr	r3, [r3, #4]
 906 03fe 3B60     		str	r3, [r7]
 229:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****         free(ptr);
 907              		.loc 1 229 0
 908 0400 7B68     		ldr	r3, [r7, #4]
 909 0402 1800     		movs	r0, r3
 910 0404 FFF7FEFF 		bl	free
 230:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****         ptr = next;
 911              		.loc 1 230 0
 912 0408 3B68     		ldr	r3, [r7]
 913 040a 7B60     		str	r3, [r7, #4]
 914              	.L65:
 915              	.LBE4:
 227:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****         next = ptr->next;
 916              		.loc 1 227 0
 917 040c 7B68     		ldr	r3, [r7, #4]
 918 040e 002B     		cmp	r3, #0
 919 0410 F3D1     		bne	.L66
 231:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****     }
 232:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****     
 233:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****     head = NULL;
 920              		.loc 1 233 0
 921 0412 084B     		ldr	r3, .L67+4
 922 0414 0022     		movs	r2, #0
 923 0416 1A60     		str	r2, [r3]
 234:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****     tail = NULL;
 924              		.loc 1 234 0
 925 0418 054B     		ldr	r3, .L67
 926 041a 0022     		movs	r2, #0
 927 041c 1A60     		str	r2, [r3]
 235:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 
 236:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	free(apple);
 928              		.loc 1 236 0
 929 041e 064B     		ldr	r3, .L67+8
 930 0420 1B68     		ldr	r3, [r3]
 931 0422 1800     		movs	r0, r3
 932 0424 FFF7FEFF 		bl	free
 237:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** }
 933              		.loc 1 237 0
 934 0428 C046     		nop
 935 042a BD46     		mov	sp, r7
 936 042c 02B0     		add	sp, sp, #8
 937              		@ sp needed
 938 042e 80BD     		pop	{r7, pc}
 939              	.L68:
 940              		.align	2
 941              	.L67:
 942 0430 00000000 		.word	tail
 943 0434 04000000 		.word	head
 944 0438 08000000 		.word	apple
 945              		.cfi_endproc
 946              	.LFE12:
 948              		.align	2
 949              		.code	16
 950              		.thumb_func
 952              	play_game:
 953              	.LFB13:
 238:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 
 239:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 
 240:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 
 241:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** static void play_game(void)
 242:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** {
 954              		.loc 1 242 0
 955              		.cfi_startproc
 956 043c 80B5     		push	{r7, lr}
 957              		.cfi_def_cfa_offset 8
 958              		.cfi_offset 7, -8
 959              		.cfi_offset 14, -4
 960 043e 00AF     		add	r7, sp, #0
 961              		.cfi_def_cfa_register 7
 243:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	init_game();
 962              		.loc 1 243 0
 963 0440 FFF7FEFE 		bl	init_game
 244:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	//Execute the game
 245:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	while(game_over == 0) {
 964              		.loc 1 245 0
 965 0444 07E0     		b	.L70
 966              	.L71:
 967              	.LBB5:
 246:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 		control_snake(); //behöver skapas
 968              		.loc 1 246 0
 969 0446 FFF737FF 		bl	control_snake
 247:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 		check_collision(); //creates new apple if necessary
 970              		.loc 1 247 0
 971 044a FFF76BFF 		bl	check_collision
 248:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 		write_disp(); // behöver skapas
 972              		.loc 1 248 0
 973 044e FFF7FEFF 		bl	write_disp
 249:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 		write_ascii(); //behöver skapas
 974              		.loc 1 249 0
 975 0452 FFF7FEFF 		bl	write_ascii
 976              	.L70:
 977              	.LBE5:
 245:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 		control_snake(); //behöver skapas
 978              		.loc 1 245 0
 979 0456 044B     		ldr	r3, .L72
 980 0458 1B68     		ldr	r3, [r3]
 981 045a 002B     		cmp	r3, #0
 982 045c F3D0     		beq	.L71
 250:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	}
 251:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	free_game();
 983              		.loc 1 251 0
 984 045e FFF7C5FF 		bl	free_game
 252:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** }
 985              		.loc 1 252 0
 986 0462 C046     		nop
 987 0464 BD46     		mov	sp, r7
 988              		@ sp needed
 989 0466 80BD     		pop	{r7, pc}
 990              	.L73:
 991              		.align	2
 992              	.L72:
 993 0468 00000000 		.word	game_over
 994              		.cfi_endproc
 995              	.LFE13:
 997              		.section	.rodata
 998              		.align	2
 999              	.LC29:
 1000 0024 47616D65 		.ascii	"Game Over\000"
 1000      204F7665 
 1000      7200
 1001              		.text
 1002              		.align	2
 1003              		.code	16
 1004              		.thumb_func
 1006              	show_game_over:
 1007              	.LFB14:
 253:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	
 254:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	
 255:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** static void show_game_over(void)
 256:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** {
 1008              		.loc 1 256 0
 1009              		.cfi_startproc
 1010 046c 80B5     		push	{r7, lr}
 1011              		.cfi_def_cfa_offset 8
 1012              		.cfi_offset 7, -8
 1013              		.cfi_offset 14, -4
 1014 046e 00AF     		add	r7, sp, #0
 1015              		.cfi_def_cfa_register 7
 257:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	graphic_clearScreen();
 1016              		.loc 1 257 0
 1017 0470 FFF7FEFF 		bl	graphic_clearScreen
 258:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	ascii_print("Game Over");
 1018              		.loc 1 258 0
 1019 0474 034B     		ldr	r3, .L75
 1020 0476 1800     		movs	r0, r3
 1021 0478 FFF7FEFF 		bl	ascii_print
 259:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** }
 1022              		.loc 1 259 0
 1023 047c C046     		nop
 1024 047e BD46     		mov	sp, r7
 1025              		@ sp needed
 1026 0480 80BD     		pop	{r7, pc}
 1027              	.L76:
 1028 0482 C046     		.align	2
 1029              	.L75:
 1030 0484 24000000 		.word	.LC29
 1031              		.cfi_endproc
 1032              	.LFE14:
 1034              		.align	2
 1035              		.global	main
 1036              		.code	16
 1037              		.thumb_func
 1039              	main:
 1040              	.LFB15:
 260:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 
 261:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 
 262:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** void main(void)
 263:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** {
 1041              		.loc 1 263 0
 1042              		.cfi_startproc
 1043 0488 80B5     		push	{r7, lr}
 1044              		.cfi_def_cfa_offset 8
 1045              		.cfi_offset 7, -8
 1046              		.cfi_offset 14, -4
 1047 048a 00AF     		add	r7, sp, #0
 1048              		.cfi_def_cfa_register 7
 264:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	/* Här: anropa alla init-funktioner */
 265:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	//keypad on upper GPIO D
 266:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	keypad_init();
 1049              		.loc 1 266 0
 1050 048c FFF7FEFF 		bl	keypad_init
 267:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	//Display on entire GPIO E
 268:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	init_app(); //init for graphics display. (Lite illa valt namn)
 1051              		.loc 1 268 0
 1052 0490 FFF7FEFF 		bl	init_app
 269:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	ascii_init();
 1053              		.loc 1 269 0
 1054 0494 FFF7FEFF 		bl	ascii_init
 1055              	.L78:
 270:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	while(1)
 271:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	{
 272:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 		main_menu(); //behöver skapas
 1056              		.loc 1 272 0 discriminator 1
 1057 0498 FFF7C0FE 		bl	main_menu
 273:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 		play_game(); //nollställer score efter att ha initierat srand och game_over i init_game
 1058              		.loc 1 273 0 discriminator 1
 1059 049c FFF7CEFF 		bl	play_game
 274:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 		show_game_over();
 1060              		.loc 1 274 0 discriminator 1
 1061 04a0 FFF7E4FF 		bl	show_game_over
 275:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	}
 1062              		.loc 1 275 0 discriminator 1
 1063 04a4 F8E7     		b	.L78
 1064              		.cfi_endproc
 1065              	.LFE15:
 1067              	.Letext0:
 1068              		.file 2 "<built-in>"
