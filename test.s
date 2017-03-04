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
  80:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****     new_tail ->x = tail->x;    /*samma position som tail, pgv svårt att veta var svansen är på v
 251              		.loc 1 80 0
 252 00d0 084B     		ldr	r3, .L13
 253 00d2 1B68     		ldr	r3, [r3]
 254 00d4 1A78     		ldrb	r2, [r3]
 255 00d6 7B68     		ldr	r3, [r7, #4]
 256 00d8 1A70     		strb	r2, [r3]
  81:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****     new_tail ->y = tail->y;
 257              		.loc 1 81 0
 258 00da 064B     		ldr	r3, .L13
 259 00dc 1B68     		ldr	r3, [r3]
 260 00de 5A78     		ldrb	r2, [r3, #1]
 261 00e0 7B68     		ldr	r3, [r7, #4]
 262 00e2 5A70     		strb	r2, [r3, #1]
  82:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****     tail = new_tail;     
 263              		.loc 1 82 0
 264 00e4 034B     		ldr	r3, .L13
 265 00e6 7A68     		ldr	r2, [r7, #4]
 266 00e8 1A60     		str	r2, [r3]
  83:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** }
 267              		.loc 1 83 0
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
  84:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 
  85:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 
  86:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** static void new_apple(void)
  87:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** {
 287              		.loc 1 87 0
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
  88:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	int good = 0;
 298              		.loc 1 88 0
 299 00fe 0023     		movs	r3, #0
 300 0100 FB60     		str	r3, [r7, #12]
  89:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	while(good == 0) 
 301              		.loc 1 89 0
 302 0102 3BE0     		b	.L16
 303              	.L21:
 304              	.LBB2:
  90:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	{
  91:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 		int no_collide = 1;
 305              		.loc 1 91 0
 306 0104 0123     		movs	r3, #1
 307 0106 BB60     		str	r3, [r7, #8]
  92:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 		apple->x= (rand()%62);
 308              		.loc 1 92 0
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
  93:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 		apple->y= (rand()%30);
 319              		.loc 1 93 0
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
  94:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 
  95:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 		SEGMENT* ptr = tail;
 330              		.loc 1 95 0
 331 0138 154B     		ldr	r3, .L22+4
 332 013a 1B68     		ldr	r3, [r3]
 333 013c 7B60     		str	r3, [r7, #4]
  96:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 		while(ptr != head) 
 334              		.loc 1 96 0
 335 013e 13E0     		b	.L17
 336              	.L20:
  97:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 		{
  98:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 			if((apple->x == ptr->x) && (apple->y == ptr->y)) 
 337              		.loc 1 98 0
 338 0140 124B     		ldr	r3, .L22
 339 0142 1B68     		ldr	r3, [r3]
 340 0144 1A78     		ldrb	r2, [r3]
 341 0146 7B68     		ldr	r3, [r7, #4]
 342 0148 1B78     		ldrb	r3, [r3]
 343 014a 9A42     		cmp	r2, r3
 344 014c 09D1     		bne	.L18
 345              		.loc 1 98 0 is_stmt 0 discriminator 1
 346 014e 0F4B     		ldr	r3, .L22
 347 0150 1B68     		ldr	r3, [r3]
 348 0152 5A78     		ldrb	r2, [r3, #1]
 349 0154 7B68     		ldr	r3, [r7, #4]
 350 0156 5B78     		ldrb	r3, [r3, #1]
 351 0158 9A42     		cmp	r2, r3
 352 015a 02D1     		bne	.L18
  99:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 			{
 100:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 				no_collide = 0;
 353              		.loc 1 100 0 is_stmt 1
 354 015c 0023     		movs	r3, #0
 355 015e BB60     		str	r3, [r7, #8]
 101:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 				break;
 356              		.loc 1 101 0
 357 0160 07E0     		b	.L19
 358              	.L18:
 102:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 			}
 103:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 		ptr = ptr->next;
 359              		.loc 1 103 0
 360 0162 7B68     		ldr	r3, [r7, #4]
 361 0164 5B68     		ldr	r3, [r3, #4]
 362 0166 7B60     		str	r3, [r7, #4]
 363              	.L17:
  96:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 		{
 364              		.loc 1 96 0
 365 0168 0A4B     		ldr	r3, .L22+8
 366 016a 1B68     		ldr	r3, [r3]
 367 016c 7A68     		ldr	r2, [r7, #4]
 368 016e 9A42     		cmp	r2, r3
 369 0170 E6D1     		bne	.L20
 370              	.L19:
 104:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 		}
 105:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 		if(no_collide)
 371              		.loc 1 105 0
 372 0172 BB68     		ldr	r3, [r7, #8]
 373 0174 002B     		cmp	r3, #0
 374 0176 01D0     		beq	.L16
 106:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 		{
 107:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 			good = 1;
 375              		.loc 1 107 0
 376 0178 0123     		movs	r3, #1
 377 017a FB60     		str	r3, [r7, #12]
 378              	.L16:
 379              	.LBE2:
  89:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	{
 380              		.loc 1 89 0
 381 017c FB68     		ldr	r3, [r7, #12]
 382 017e 002B     		cmp	r3, #0
 383 0180 C0D0     		beq	.L21
 108:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 		}
 109:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	}
 110:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** }
 384              		.loc 1 110 0
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
 111:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 
 112:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 
 113:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** static void print_score(void) {
 405              		.loc 1 113 0
 406              		.cfi_startproc
 407 0198 80B5     		push	{r7, lr}
 408              		.cfi_def_cfa_offset 8
 409              		.cfi_offset 7, -8
 410              		.cfi_offset 14, -4
 411 019a 82B0     		sub	sp, sp, #8
 412              		.cfi_def_cfa_offset 16
 413 019c 00AF     		add	r7, sp, #0
 414              		.cfi_def_cfa_register 7
 114:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	uint8_t ascii;
 115:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****     int local_score = score;
 415              		.loc 1 115 0
 416 019e 154B     		ldr	r3, .L29
 417 01a0 1B68     		ldr	r3, [r3]
 418 01a2 3B60     		str	r3, [r7]
 116:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****     
 117:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	/* division med 10 går inte att kompilera */
 118:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	//hexadecimal poängräkning kanske?
 119:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	
 120:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****     if (local_score > 99)
 419              		.loc 1 120 0
 420 01a4 3B68     		ldr	r3, [r7]
 421 01a6 632B     		cmp	r3, #99
 422 01a8 01DD     		ble	.L25
 121:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****         local_score = 99;
 423              		.loc 1 121 0
 424 01aa 6323     		movs	r3, #99
 425 01ac 3B60     		str	r3, [r7]
 426              	.L25:
 122:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****     
 123:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****     /* tiotalen */
 124:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****     if (local_score >= 10) {
 427              		.loc 1 124 0
 428 01ae 3B68     		ldr	r3, [r7]
 429 01b0 092B     		cmp	r3, #9
 430 01b2 13DD     		ble	.L26
 125:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****         ascii = '0';
 431              		.loc 1 125 0
 432 01b4 FB1D     		adds	r3, r7, #7
 433 01b6 3022     		movs	r2, #48
 434 01b8 1A70     		strb	r2, [r3]
 126:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****         
 127:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****         while (local_score >= 10) {
 435              		.loc 1 127 0
 436 01ba 07E0     		b	.L27
 437              	.L28:
 128:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****             ascii++;
 438              		.loc 1 128 0
 439 01bc FB1D     		adds	r3, r7, #7
 440 01be 1A78     		ldrb	r2, [r3]
 441 01c0 FB1D     		adds	r3, r7, #7
 442 01c2 0132     		adds	r2, r2, #1
 443 01c4 1A70     		strb	r2, [r3]
 129:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****             local_score = local_score - 10;
 444              		.loc 1 129 0
 445 01c6 3B68     		ldr	r3, [r7]
 446 01c8 0A3B     		subs	r3, r3, #10
 447 01ca 3B60     		str	r3, [r7]
 448              	.L27:
 127:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****             ascii++;
 449              		.loc 1 127 0
 450 01cc 3B68     		ldr	r3, [r7]
 451 01ce 092B     		cmp	r3, #9
 452 01d0 F4DC     		bgt	.L28
 130:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****         }
 131:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****         
 132:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****         ascii_write_char(ascii);
 453              		.loc 1 132 0
 454 01d2 FB1D     		adds	r3, r7, #7
 455 01d4 1B78     		ldrb	r3, [r3]
 456 01d6 1800     		movs	r0, r3
 457 01d8 FFF7FEFF 		bl	ascii_write_char
 458              	.L26:
 133:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****     }
 134:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****     
 135:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****     /* ettalet */
 136:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****     ascii_write_char(local_score + '0');
 459              		.loc 1 136 0
 460 01dc 3B68     		ldr	r3, [r7]
 461 01de DBB2     		uxtb	r3, r3
 462 01e0 3033     		adds	r3, r3, #48
 463 01e2 DBB2     		uxtb	r3, r3
 464 01e4 1800     		movs	r0, r3
 465 01e6 FFF7FEFF 		bl	ascii_write_char
 137:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** }
 466              		.loc 1 137 0
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
 138:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 
 139:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** static void full_print_score(void) {
 490              		.loc 1 139 0
 491              		.cfi_startproc
 492 01f8 80B5     		push	{r7, lr}
 493              		.cfi_def_cfa_offset 8
 494              		.cfi_offset 7, -8
 495              		.cfi_offset 14, -4
 496 01fa 00AF     		add	r7, sp, #0
 497              		.cfi_def_cfa_register 7
 140:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****     ascii_gotoxy(1, 1);
 498              		.loc 1 140 0
 499 01fc 0121     		movs	r1, #1
 500 01fe 0120     		movs	r0, #1
 501 0200 FFF7FEFF 		bl	ascii_gotoxy
 141:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****     ascii_print("Score: "); //behöver skapas
 502              		.loc 1 141 0
 503 0204 044B     		ldr	r3, .L32
 504 0206 1800     		movs	r0, r3
 505 0208 FFF7FEFF 		bl	ascii_print
 142:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****     print_score();
 506              		.loc 1 142 0
 507 020c FFF7C4FF 		bl	print_score
 143:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** }
 508              		.loc 1 143 0
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
 520              		.align	2
 521              		.code	16
 522              		.thumb_func
 524              	main_menu:
 525              	.LFB8:
 144:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 
 145:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** static void main_menu(void)
 146:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** {
 526              		.loc 1 146 0
 527              		.cfi_startproc
 528 021c 80B5     		push	{r7, lr}
 529              		.cfi_def_cfa_offset 8
 530              		.cfi_offset 7, -8
 531              		.cfi_offset 14, -4
 532 021e 00AF     		add	r7, sp, #0
 533              		.cfi_def_cfa_register 7
 147:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** }
 534              		.loc 1 147 0
 535 0220 C046     		nop
 536 0222 BD46     		mov	sp, r7
 537              		@ sp needed
 538 0224 80BD     		pop	{r7, pc}
 539              		.cfi_endproc
 540              	.LFE8:
 542 0226 C046     		.align	2
 543              		.code	16
 544              		.thumb_func
 546              	init_game:
 547              	.LFB9:
 148:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 
 149:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** static void init_game(void)
 150:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** {
 548              		.loc 1 150 0
 549              		.cfi_startproc
 550 0228 80B5     		push	{r7, lr}
 551              		.cfi_def_cfa_offset 8
 552              		.cfi_offset 7, -8
 553              		.cfi_offset 14, -4
 554 022a 82B0     		sub	sp, sp, #8
 555              		.cfi_def_cfa_offset 16
 556 022c 00AF     		add	r7, sp, #0
 557              		.cfi_def_cfa_register 7
 151:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	int i;
 152:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	
 153:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****     tail = malloc(sizeof(SEGMENT));   /*reservera plats på heapen för ett segment*/
 558              		.loc 1 153 0
 559 022e 0820     		movs	r0, #8
 560 0230 FFF7FEFF 		bl	malloc
 561 0234 0300     		movs	r3, r0
 562 0236 1A00     		movs	r2, r3
 563 0238 164B     		ldr	r3, .L38
 564 023a 1A60     		str	r2, [r3]
 154:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****     head = tail;
 565              		.loc 1 154 0
 566 023c 154B     		ldr	r3, .L38
 567 023e 1A68     		ldr	r2, [r3]
 568 0240 154B     		ldr	r3, .L38+4
 569 0242 1A60     		str	r2, [r3]
 155:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****     tail->x = 30;   /*placera ormen i mitten på skärmen*/
 570              		.loc 1 155 0
 571 0244 134B     		ldr	r3, .L38
 572 0246 1B68     		ldr	r3, [r3]
 573 0248 1E22     		movs	r2, #30
 574 024a 1A70     		strb	r2, [r3]
 156:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****     tail->y = 15;
 575              		.loc 1 156 0
 576 024c 114B     		ldr	r3, .L38
 577 024e 1B68     		ldr	r3, [r3]
 578 0250 0F22     		movs	r2, #15
 579 0252 5A70     		strb	r2, [r3, #1]
 157:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****     head->next = NULL;
 580              		.loc 1 157 0
 581 0254 104B     		ldr	r3, .L38+4
 582 0256 1B68     		ldr	r3, [r3]
 583 0258 0022     		movs	r2, #0
 584 025a 5A60     		str	r2, [r3, #4]
 158:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****     
 159:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****     for (i = 1; i < INITIAL_LENGTH; i++) {
 585              		.loc 1 159 0
 586 025c 0123     		movs	r3, #1
 587 025e 7B60     		str	r3, [r7, #4]
 588 0260 04E0     		b	.L36
 589              	.L37:
 160:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****         grow_snake(); 
 590              		.loc 1 160 0 discriminator 3
 591 0262 FFF729FF 		bl	grow_snake
 159:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****         grow_snake(); 
 592              		.loc 1 159 0 discriminator 3
 593 0266 7B68     		ldr	r3, [r7, #4]
 594 0268 0133     		adds	r3, r3, #1
 595 026a 7B60     		str	r3, [r7, #4]
 596              	.L36:
 159:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****         grow_snake(); 
 597              		.loc 1 159 0 is_stmt 0 discriminator 1
 598 026c 7B68     		ldr	r3, [r7, #4]
 599 026e 032B     		cmp	r3, #3
 600 0270 F7DD     		ble	.L37
 161:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****     }
 162:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	srand(score); //rand initieras med förra spelets slut score. Kan ordnas med timer istället
 601              		.loc 1 162 0 is_stmt 1
 602 0272 0A4B     		ldr	r3, .L38+8
 603 0274 1B68     		ldr	r3, [r3]
 604 0276 1800     		movs	r0, r3
 605 0278 FFF7DAFE 		bl	srand
 163:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	score = 0;
 606              		.loc 1 163 0
 607 027c 074B     		ldr	r3, .L38+8
 608 027e 0022     		movs	r2, #0
 609 0280 1A60     		str	r2, [r3]
 164:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	new_apple();
 610              		.loc 1 164 0
 611 0282 FFF739FF 		bl	new_apple
 165:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	
 166:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	full_print_score();
 612              		.loc 1 166 0
 613 0286 FFF7B7FF 		bl	full_print_score
 167:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** }
 614              		.loc 1 167 0
 615 028a C046     		nop
 616 028c BD46     		mov	sp, r7
 617 028e 02B0     		add	sp, sp, #8
 618              		@ sp needed
 619 0290 80BD     		pop	{r7, pc}
 620              	.L39:
 621 0292 C046     		.align	2
 622              	.L38:
 623 0294 00000000 		.word	tail
 624 0298 04000000 		.word	head
 625 029c 00000000 		.word	score
 626              		.cfi_endproc
 627              	.LFE9:
 629              		.align	2
 630              		.code	16
 631              		.thumb_func
 633              	check_collision:
 634              	.LFB10:
 168:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 
 169:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** static void check_collision()
 170:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** {
 635              		.loc 1 170 0
 636              		.cfi_startproc
 637 02a0 80B5     		push	{r7, lr}
 638              		.cfi_def_cfa_offset 8
 639              		.cfi_offset 7, -8
 640              		.cfi_offset 14, -4
 641 02a2 82B0     		sub	sp, sp, #8
 642              		.cfi_def_cfa_offset 16
 643 02a4 00AF     		add	r7, sp, #0
 644              		.cfi_def_cfa_register 7
 171:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	SEGMENT* ptr = tail;
 645              		.loc 1 171 0
 646 02a6 2B4B     		ldr	r3, .L49
 647 02a8 1B68     		ldr	r3, [r3]
 648 02aa 7B60     		str	r3, [r7, #4]
 172:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	while (ptr != head)
 649              		.loc 1 172 0
 650 02ac 14E0     		b	.L41
 651              	.L44:
 173:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	{
 174:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 		if ((head->x==ptr->x) && (head->y==ptr->y))
 652              		.loc 1 174 0
 653 02ae 2A4B     		ldr	r3, .L49+4
 654 02b0 1B68     		ldr	r3, [r3]
 655 02b2 1A78     		ldrb	r2, [r3]
 656 02b4 7B68     		ldr	r3, [r7, #4]
 657 02b6 1B78     		ldrb	r3, [r3]
 658 02b8 9A42     		cmp	r2, r3
 659 02ba 0AD1     		bne	.L42
 660              		.loc 1 174 0 is_stmt 0 discriminator 1
 661 02bc 264B     		ldr	r3, .L49+4
 662 02be 1B68     		ldr	r3, [r3]
 663 02c0 5A78     		ldrb	r2, [r3, #1]
 664 02c2 7B68     		ldr	r3, [r7, #4]
 665 02c4 5B78     		ldrb	r3, [r3, #1]
 666 02c6 9A42     		cmp	r2, r3
 667 02c8 03D1     		bne	.L42
 175:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 		{
 176:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 			game_over = 1;
 668              		.loc 1 176 0 is_stmt 1
 669 02ca 244B     		ldr	r3, .L49+8
 670 02cc 0122     		movs	r2, #1
 671 02ce 1A60     		str	r2, [r3]
 177:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 			return;
 672              		.loc 1 177 0
 673 02d0 3CE0     		b	.L40
 674              	.L42:
 178:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 		}
 179:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 		ptr = ptr->next;
 675              		.loc 1 179 0
 676 02d2 7B68     		ldr	r3, [r7, #4]
 677 02d4 5B68     		ldr	r3, [r3, #4]
 678 02d6 7B60     		str	r3, [r7, #4]
 679              	.L41:
 172:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	{
 680              		.loc 1 172 0
 681 02d8 1F4B     		ldr	r3, .L49+4
 682 02da 1B68     		ldr	r3, [r3]
 683 02dc 7A68     		ldr	r2, [r7, #4]
 684 02de 9A42     		cmp	r2, r3
 685 02e0 E5D1     		bne	.L44
 180:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	}
 181:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	
 182:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	/* varje SEGMENT = 2x2 pixels */
 183:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	if (head->x < 1 || head->x > 62)
 686              		.loc 1 183 0
 687 02e2 1D4B     		ldr	r3, .L49+4
 688 02e4 1B68     		ldr	r3, [r3]
 689 02e6 1B78     		ldrb	r3, [r3]
 690 02e8 002B     		cmp	r3, #0
 691 02ea 04D0     		beq	.L45
 692              		.loc 1 183 0 is_stmt 0 discriminator 1
 693 02ec 1A4B     		ldr	r3, .L49+4
 694 02ee 1B68     		ldr	r3, [r3]
 695 02f0 1B78     		ldrb	r3, [r3]
 696 02f2 3E2B     		cmp	r3, #62
 697 02f4 03D9     		bls	.L46
 698              	.L45:
 184:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	{
 185:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 		game_over = 1;
 699              		.loc 1 185 0 is_stmt 1
 700 02f6 194B     		ldr	r3, .L49+8
 701 02f8 0122     		movs	r2, #1
 702 02fa 1A60     		str	r2, [r3]
 186:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 		return;
 703              		.loc 1 186 0
 704 02fc 26E0     		b	.L40
 705              	.L46:
 187:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	}
 188:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	
 189:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	if (head->y < 1 || head->y > 30)
 706              		.loc 1 189 0
 707 02fe 164B     		ldr	r3, .L49+4
 708 0300 1B68     		ldr	r3, [r3]
 709 0302 5B78     		ldrb	r3, [r3, #1]
 710 0304 002B     		cmp	r3, #0
 711 0306 04D0     		beq	.L47
 712              		.loc 1 189 0 is_stmt 0 discriminator 1
 713 0308 134B     		ldr	r3, .L49+4
 714 030a 1B68     		ldr	r3, [r3]
 715 030c 5B78     		ldrb	r3, [r3, #1]
 716 030e 1E2B     		cmp	r3, #30
 717 0310 03D9     		bls	.L48
 718              	.L47:
 190:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	{
 191:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 		game_over = 1;
 719              		.loc 1 191 0 is_stmt 1
 720 0312 124B     		ldr	r3, .L49+8
 721 0314 0122     		movs	r2, #1
 722 0316 1A60     		str	r2, [r3]
 192:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 		return;
 723              		.loc 1 192 0
 724 0318 18E0     		b	.L40
 725              	.L48:
 193:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	}
 194:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	
 195:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	if ((head->x==apple->x) && (head->y==apple->y))
 726              		.loc 1 195 0
 727 031a 0F4B     		ldr	r3, .L49+4
 728 031c 1B68     		ldr	r3, [r3]
 729 031e 1A78     		ldrb	r2, [r3]
 730 0320 0F4B     		ldr	r3, .L49+12
 731 0322 1B68     		ldr	r3, [r3]
 732 0324 1B78     		ldrb	r3, [r3]
 733 0326 9A42     		cmp	r2, r3
 734 0328 10D1     		bne	.L40
 735              		.loc 1 195 0 is_stmt 0 discriminator 1
 736 032a 0B4B     		ldr	r3, .L49+4
 737 032c 1B68     		ldr	r3, [r3]
 738 032e 5A78     		ldrb	r2, [r3, #1]
 739 0330 0B4B     		ldr	r3, .L49+12
 740 0332 1B68     		ldr	r3, [r3]
 741 0334 5B78     		ldrb	r3, [r3, #1]
 742 0336 9A42     		cmp	r2, r3
 743 0338 08D1     		bne	.L40
 196:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	{
 197:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 		score++;
 744              		.loc 1 197 0 is_stmt 1
 745 033a 0A4B     		ldr	r3, .L49+16
 746 033c 1B68     		ldr	r3, [r3]
 747 033e 5A1C     		adds	r2, r3, #1
 748 0340 084B     		ldr	r3, .L49+16
 749 0342 1A60     		str	r2, [r3]
 198:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 		full_print_score();
 750              		.loc 1 198 0
 751 0344 FFF758FF 		bl	full_print_score
 199:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 		new_apple();
 752              		.loc 1 199 0
 753 0348 FFF7D6FE 		bl	new_apple
 754              	.L40:
 200:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	}
 201:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** }
 755              		.loc 1 201 0
 756 034c BD46     		mov	sp, r7
 757 034e 02B0     		add	sp, sp, #8
 758              		@ sp needed
 759 0350 80BD     		pop	{r7, pc}
 760              	.L50:
 761 0352 C046     		.align	2
 762              	.L49:
 763 0354 00000000 		.word	tail
 764 0358 04000000 		.word	head
 765 035c 00000000 		.word	game_over
 766 0360 08000000 		.word	apple
 767 0364 00000000 		.word	score
 768              		.cfi_endproc
 769              	.LFE10:
 771              		.align	2
 772              		.code	16
 773              		.thumb_func
 775              	free_game:
 776              	.LFB11:
 202:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 
 203:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** static void free_game(void)
 204:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** {
 777              		.loc 1 204 0
 778              		.cfi_startproc
 779 0368 80B5     		push	{r7, lr}
 780              		.cfi_def_cfa_offset 8
 781              		.cfi_offset 7, -8
 782              		.cfi_offset 14, -4
 783 036a 82B0     		sub	sp, sp, #8
 784              		.cfi_def_cfa_offset 16
 785 036c 00AF     		add	r7, sp, #0
 786              		.cfi_def_cfa_register 7
 205:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****     SEGMENT *ptr = tail;
 787              		.loc 1 205 0
 788 036e 0F4B     		ldr	r3, .L54
 789 0370 1B68     		ldr	r3, [r3]
 790 0372 7B60     		str	r3, [r7, #4]
 206:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****     SEGMENT *next;
 207:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****     
 208:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****     while (ptr != NULL) {
 791              		.loc 1 208 0
 792 0374 08E0     		b	.L52
 793              	.L53:
 794              	.LBB3:
 209:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****         next = ptr->next;
 795              		.loc 1 209 0
 796 0376 7B68     		ldr	r3, [r7, #4]
 797 0378 5B68     		ldr	r3, [r3, #4]
 798 037a 3B60     		str	r3, [r7]
 210:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****         free(ptr);
 799              		.loc 1 210 0
 800 037c 7B68     		ldr	r3, [r7, #4]
 801 037e 1800     		movs	r0, r3
 802 0380 FFF7FEFF 		bl	free
 211:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****         ptr = next;
 803              		.loc 1 211 0
 804 0384 3B68     		ldr	r3, [r7]
 805 0386 7B60     		str	r3, [r7, #4]
 806              	.L52:
 807              	.LBE3:
 208:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****         next = ptr->next;
 808              		.loc 1 208 0
 809 0388 7B68     		ldr	r3, [r7, #4]
 810 038a 002B     		cmp	r3, #0
 811 038c F3D1     		bne	.L53
 212:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****     }
 213:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****     
 214:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****     head = NULL;
 812              		.loc 1 214 0
 813 038e 084B     		ldr	r3, .L54+4
 814 0390 0022     		movs	r2, #0
 815 0392 1A60     		str	r2, [r3]
 215:C:/Users/sid/Documents/snek/snek-MOP\startup.c ****     tail = NULL;
 816              		.loc 1 215 0
 817 0394 054B     		ldr	r3, .L54
 818 0396 0022     		movs	r2, #0
 819 0398 1A60     		str	r2, [r3]
 216:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 
 217:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	free(apple);
 820              		.loc 1 217 0
 821 039a 064B     		ldr	r3, .L54+8
 822 039c 1B68     		ldr	r3, [r3]
 823 039e 1800     		movs	r0, r3
 824 03a0 FFF7FEFF 		bl	free
 218:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** }
 825              		.loc 1 218 0
 826 03a4 C046     		nop
 827 03a6 BD46     		mov	sp, r7
 828 03a8 02B0     		add	sp, sp, #8
 829              		@ sp needed
 830 03aa 80BD     		pop	{r7, pc}
 831              	.L55:
 832              		.align	2
 833              	.L54:
 834 03ac 00000000 		.word	tail
 835 03b0 04000000 		.word	head
 836 03b4 08000000 		.word	apple
 837              		.cfi_endproc
 838              	.LFE11:
 840              		.align	2
 841              		.code	16
 842              		.thumb_func
 844              	play_game:
 845              	.LFB12:
 219:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 
 220:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** static void play_game(void)
 221:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** {
 846              		.loc 1 221 0
 847              		.cfi_startproc
 848 03b8 80B5     		push	{r7, lr}
 849              		.cfi_def_cfa_offset 8
 850              		.cfi_offset 7, -8
 851              		.cfi_offset 14, -4
 852 03ba 00AF     		add	r7, sp, #0
 853              		.cfi_def_cfa_register 7
 222:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	init_game();
 854              		.loc 1 222 0
 855 03bc FFF734FF 		bl	init_game
 223:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	//Execute the game
 224:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	while(game_over == 0) {
 856              		.loc 1 224 0
 857 03c0 07E0     		b	.L57
 858              	.L58:
 859              	.LBB4:
 225:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 		control_snake(); //behöver skapas
 860              		.loc 1 225 0
 861 03c2 FFF7FEFF 		bl	control_snake
 226:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 		check_collision(); //creates new apple if necessary
 862              		.loc 1 226 0
 863 03c6 FFF76BFF 		bl	check_collision
 227:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 		write_disp(); // behöver skapas
 864              		.loc 1 227 0
 865 03ca FFF7FEFF 		bl	write_disp
 228:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 		write_ascii(); //behöver skapas
 866              		.loc 1 228 0
 867 03ce FFF7FEFF 		bl	write_ascii
 868              	.L57:
 869              	.LBE4:
 224:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 		control_snake(); //behöver skapas
 870              		.loc 1 224 0
 871 03d2 044B     		ldr	r3, .L59
 872 03d4 1B68     		ldr	r3, [r3]
 873 03d6 002B     		cmp	r3, #0
 874 03d8 F3D0     		beq	.L58
 229:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	}
 230:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	free_game();
 875              		.loc 1 230 0
 876 03da FFF7C5FF 		bl	free_game
 231:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** }
 877              		.loc 1 231 0
 878 03de C046     		nop
 879 03e0 BD46     		mov	sp, r7
 880              		@ sp needed
 881 03e2 80BD     		pop	{r7, pc}
 882              	.L60:
 883              		.align	2
 884              	.L59:
 885 03e4 00000000 		.word	game_over
 886              		.cfi_endproc
 887              	.LFE12:
 889              		.align	2
 890              		.code	16
 891              		.thumb_func
 893              	show_game_over:
 894              	.LFB13:
 232:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	
 233:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	
 234:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** static void show_game_over(void)
 235:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** {
 895              		.loc 1 235 0
 896              		.cfi_startproc
 897 03e8 80B5     		push	{r7, lr}
 898              		.cfi_def_cfa_offset 8
 899              		.cfi_offset 7, -8
 900              		.cfi_offset 14, -4
 901 03ea 00AF     		add	r7, sp, #0
 902              		.cfi_def_cfa_register 7
 236:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	return;
 903              		.loc 1 236 0
 904 03ec C046     		nop
 237:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** }
 905              		.loc 1 237 0
 906 03ee BD46     		mov	sp, r7
 907              		@ sp needed
 908 03f0 80BD     		pop	{r7, pc}
 909              		.cfi_endproc
 910              	.LFE13:
 912 03f2 C046     		.align	2
 913              		.global	main
 914              		.code	16
 915              		.thumb_func
 917              	main:
 918              	.LFB14:
 238:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 
 239:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 
 240:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** void main(void)
 241:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** {
 919              		.loc 1 241 0
 920              		.cfi_startproc
 921 03f4 80B5     		push	{r7, lr}
 922              		.cfi_def_cfa_offset 8
 923              		.cfi_offset 7, -8
 924              		.cfi_offset 14, -4
 925 03f6 00AF     		add	r7, sp, #0
 926              		.cfi_def_cfa_register 7
 242:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	/* Här: anropa alla init-funktioner */
 243:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	//keypad on upper GPIO D
 244:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	keypad_init();
 927              		.loc 1 244 0
 928 03f8 FFF7FEFF 		bl	keypad_init
 245:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	//Display on entire GPIO E
 246:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	init_app(); //init for graphics display. (Lite illa valt namn)
 929              		.loc 1 246 0
 930 03fc FFF7FEFF 		bl	init_app
 247:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	ascii_init();
 931              		.loc 1 247 0
 932 0400 FFF7FEFF 		bl	ascii_init
 933              	.L64:
 934              	.LBB5:
 248:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	while(1)
 249:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	{
 250:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 		show_menu(); //behöver skapas
 935              		.loc 1 250 0 discriminator 1
 936 0404 FFF7FEFF 		bl	show_menu
 251:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 		play_game(); //nollställer score efter att ha initierat srand och game_over i init_game
 937              		.loc 1 251 0 discriminator 1
 938 0408 FFF7D6FF 		bl	play_game
 252:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 		show_game_over();
 939              		.loc 1 252 0 discriminator 1
 940 040c FFF7ECFF 		bl	show_game_over
 941              	.LBE5:
 253:C:/Users/sid/Documents/snek/snek-MOP\startup.c **** 	}
 942              		.loc 1 253 0 discriminator 1
 943 0410 F8E7     		b	.L64
 944              		.cfi_endproc
 945              	.LFE14:
 947              	.Letext0:
 948              		.file 2 "<built-in>"
