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
<<<<<<< HEAD
  15              		.file	"ascii.c"
  16              		.text
  17              	.Ltext0:
  18              		.cfi_sections	.debug_frame
  19              		.align	2
  20              		.global	ascii_ctrl_bit_set
  21              		.code	16
  22              		.thumb_func
  24              	ascii_ctrl_bit_set:
  25              	.LFB0:
  26              		.file 1 "/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c"
   1:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** #include "gpio.h"
   2:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** #include "ascii.h"
   3:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** #include "delay.h"
   4:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** 
   5:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** 
   6:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** /*skriv till styrregistret*/
   7:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** void ascii_ctrl_bit_set(uint8_t bits)
   8:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** {
  27              		.loc 1 8 0
  28              		.cfi_startproc
  29              		@ args = 0, pretend = 0, frame = 8
  30              		@ frame_needed = 1, uses_anonymous_args = 0
  31 0000 80B5     		push	{r7, lr}
  32              		.cfi_def_cfa_offset 8
  33              		.cfi_offset 7, -8
  34              		.cfi_offset 14, -4
  35 0002 82B0     		sub	sp, sp, #8
  36              		.cfi_def_cfa_offset 16
  37 0004 00AF     		add	r7, sp, #0
  38              		.cfi_def_cfa_register 7
  39 0006 0200     		movs	r2, r0
  40 0008 FB1D     		adds	r3, r7, #7
  41 000a 1A70     		strb	r2, [r3]
   9:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c ****     GPIO_E.odr_low |= (B_SELECT | bits);  /*alltid select bit satt*/
  42              		.loc 1 9 0
  43 000c 0749     		ldr	r1, .L2
  44 000e 074B     		ldr	r3, .L2
  45 0010 1B7D     		ldrb	r3, [r3, #20]
  46 0012 DAB2     		uxtb	r2, r3
  47 0014 FB1D     		adds	r3, r7, #7
  48 0016 1B78     		ldrb	r3, [r3]
  49 0018 1343     		orrs	r3, r2
  50 001a DBB2     		uxtb	r3, r3
  51 001c 0422     		movs	r2, #4
  52 001e 1343     		orrs	r3, r2
  53 0020 DBB2     		uxtb	r3, r3
  54 0022 0B75     		strb	r3, [r1, #20]
  10:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** }
  55              		.loc 1 10 0
  56 0024 C046     		nop
  57 0026 BD46     		mov	sp, r7
  58 0028 02B0     		add	sp, sp, #8
  59              		@ sp needed
  60 002a 80BD     		pop	{r7, pc}
  61              	.L3:
  62              		.align	2
  63              	.L2:
  64 002c 00100240 		.word	1073876992
  65              		.cfi_endproc
  66              	.LFE0:
  68              		.align	2
  69              		.global	ascii_ctrl_bit_clear
  70              		.code	16
  71              		.thumb_func
  73              	ascii_ctrl_bit_clear:
  74              	.LFB1:
  11:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** 
  12:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** /*nolställa bitar i styrregister*/
  13:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** void ascii_ctrl_bit_clear(uint8_t bits)
  14:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** {
  75              		.loc 1 14 0
  76              		.cfi_startproc
  77              		@ args = 0, pretend = 0, frame = 8
  78              		@ frame_needed = 1, uses_anonymous_args = 0
  79 0030 80B5     		push	{r7, lr}
  80              		.cfi_def_cfa_offset 8
  81              		.cfi_offset 7, -8
  82              		.cfi_offset 14, -4
  83 0032 82B0     		sub	sp, sp, #8
  84              		.cfi_def_cfa_offset 16
  85 0034 00AF     		add	r7, sp, #0
  86              		.cfi_def_cfa_register 7
  87 0036 0200     		movs	r2, r0
  88 0038 FB1D     		adds	r3, r7, #7
  89 003a 1A70     		strb	r2, [r3]
  15:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c ****     GPIO_E.odr_low &= (B_SELECT |~bits);  /*nollställ aldrig select bit. Nollställa bitar som ski
  90              		.loc 1 15 0
  91 003c 0A49     		ldr	r1, .L5
  92 003e 0A4B     		ldr	r3, .L5
  93 0040 1B7D     		ldrb	r3, [r3, #20]
  94 0042 DBB2     		uxtb	r3, r3
  95 0044 5BB2     		sxtb	r3, r3
  96 0046 FA1D     		adds	r2, r7, #7
  97 0048 1278     		ldrb	r2, [r2]
  98 004a 52B2     		sxtb	r2, r2
  99 004c D243     		mvns	r2, r2
 100 004e 52B2     		sxtb	r2, r2
 101 0050 0420     		movs	r0, #4
 102 0052 0243     		orrs	r2, r0
 103 0054 52B2     		sxtb	r2, r2
 104 0056 1340     		ands	r3, r2
 105 0058 5BB2     		sxtb	r3, r3
 106 005a DBB2     		uxtb	r3, r3
 107 005c 0B75     		strb	r3, [r1, #20]
  16:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** }
 108              		.loc 1 16 0
 109 005e C046     		nop
 110 0060 BD46     		mov	sp, r7
 111 0062 02B0     		add	sp, sp, #8
 112              		@ sp needed
 113 0064 80BD     		pop	{r7, pc}
 114              	.L6:
 115 0066 C046     		.align	2
 116              	.L5:
 117 0068 00100240 		.word	1073876992
 118              		.cfi_endproc
 119              	.LFE1:
 121              		.align	2
 122              		.global	ascii_write_controller
 123              		.code	16
 124              		.thumb_func
 126              	ascii_write_controller:
 127              	.LFB2:
  17:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** 
  18:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** 
  19:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** /*skriv till display, kommando eller data, generellt*/
  20:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** void ascii_write_controller(uint8_t data)
  21:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** {
 128              		.loc 1 21 0
 129              		.cfi_startproc
 130              		@ args = 0, pretend = 0, frame = 8
 131              		@ frame_needed = 1, uses_anonymous_args = 0
 132 006c 80B5     		push	{r7, lr}
 133              		.cfi_def_cfa_offset 8
 134              		.cfi_offset 7, -8
 135              		.cfi_offset 14, -4
 136 006e 82B0     		sub	sp, sp, #8
 137              		.cfi_def_cfa_offset 16
 138 0070 00AF     		add	r7, sp, #0
 139              		.cfi_def_cfa_register 7
 140 0072 0200     		movs	r2, r0
 141 0074 FB1D     		adds	r3, r7, #7
 142 0076 1A70     		strb	r2, [r3]
  22:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c ****     ascii_ctrl_bit_set(B_E);  /*enable bit, bit6 */
 143              		.loc 1 22 0
 144 0078 4020     		movs	r0, #64
 145 007a FFF7FEFF 		bl	ascii_ctrl_bit_set
  23:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c ****     GPIO_E.odr_high = data; 
 146              		.loc 1 23 0
 147 007e 074A     		ldr	r2, .L8
 148 0080 FB1D     		adds	r3, r7, #7
 149 0082 1B78     		ldrb	r3, [r3]
 150 0084 5375     		strb	r3, [r2, #21]
  24:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c ****     delay_us(250); 
 151              		.loc 1 24 0
 152 0086 FA20     		movs	r0, #250
 153 0088 FFF7FEFF 		bl	delay_us
  25:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c ****     ascii_ctrl_bit_clear(B_E);   /*färdig med skrivningen*/
 154              		.loc 1 25 0
 155 008c 4020     		movs	r0, #64
 156 008e FFF7FEFF 		bl	ascii_ctrl_bit_clear
  26:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c ****     /*delay_10ns(); Det behövs inte. Tiden är så kort*/
  27:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** }
 157              		.loc 1 27 0
 158 0092 C046     		nop
 159 0094 BD46     		mov	sp, r7
 160 0096 02B0     		add	sp, sp, #8
 161              		@ sp needed
 162 0098 80BD     		pop	{r7, pc}
 163              	.L9:
 164 009a C046     		.align	2
 165              	.L8:
 166 009c 00100240 		.word	1073876992
 167              		.cfi_endproc
 168              	.LFE2:
 170              		.align	2
 171              		.global	ascii_write_cmd
 172              		.code	16
 173              		.thumb_func
 175              	ascii_write_cmd:
 176              	.LFB3:
  28:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** 
  29:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** /*skriv kommando till display*/
  30:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** void ascii_write_cmd(uint8_t command)
  31:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** {
 177              		.loc 1 31 0
 178              		.cfi_startproc
 179              		@ args = 0, pretend = 0, frame = 8
 180              		@ frame_needed = 1, uses_anonymous_args = 0
 181 00a0 80B5     		push	{r7, lr}
 182              		.cfi_def_cfa_offset 8
 183              		.cfi_offset 7, -8
 184              		.cfi_offset 14, -4
 185 00a2 82B0     		sub	sp, sp, #8
 186              		.cfi_def_cfa_offset 16
 187 00a4 00AF     		add	r7, sp, #0
 188              		.cfi_def_cfa_register 7
 189 00a6 0200     		movs	r2, r0
 190 00a8 FB1D     		adds	r3, r7, #7
 191 00aa 1A70     		strb	r2, [r3]
  32:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c ****     ascii_ctrl_bit_clear(B_RS | B_RW);  /*nollställ bit 0 och 1*/
 192              		.loc 1 32 0
 193 00ac 0320     		movs	r0, #3
 194 00ae FFF7FEFF 		bl	ascii_ctrl_bit_clear
  33:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c ****     delay_us(40);
 195              		.loc 1 33 0
 196 00b2 2820     		movs	r0, #40
 197 00b4 FFF7FEFF 		bl	delay_us
  34:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** 	ascii_write_controller(command);    /*info som ska skickas*/
 198              		.loc 1 34 0
 199 00b8 FB1D     		adds	r3, r7, #7
 200 00ba 1B78     		ldrb	r3, [r3]
 201 00bc 1800     		movs	r0, r3
 202 00be FFF7FEFF 		bl	ascii_write_controller
  35:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c ****     delay_us(250);    /*enligt tidsdiagrammet*/
 203              		.loc 1 35 0
 204 00c2 FA20     		movs	r0, #250
 205 00c4 FFF7FEFF 		bl	delay_us
  36:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** }
 206              		.loc 1 36 0
 207 00c8 C046     		nop
 208 00ca BD46     		mov	sp, r7
 209 00cc 02B0     		add	sp, sp, #8
 210              		@ sp needed
 211 00ce 80BD     		pop	{r7, pc}
 212              		.cfi_endproc
 213              	.LFE3:
 215              		.align	2
 216              		.global	ascii_write_data
 217              		.code	16
 218              		.thumb_func
 220              	ascii_write_data:
 221              	.LFB4:
  37:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** 
  38:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** void ascii_write_data(uint8_t data)
  39:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** {
 222              		.loc 1 39 0
 223              		.cfi_startproc
 224              		@ args = 0, pretend = 0, frame = 8
 225              		@ frame_needed = 1, uses_anonymous_args = 0
 226 00d0 80B5     		push	{r7, lr}
 227              		.cfi_def_cfa_offset 8
 228              		.cfi_offset 7, -8
 229              		.cfi_offset 14, -4
 230 00d2 82B0     		sub	sp, sp, #8
 231              		.cfi_def_cfa_offset 16
 232 00d4 00AF     		add	r7, sp, #0
 233              		.cfi_def_cfa_register 7
 234 00d6 0200     		movs	r2, r0
 235 00d8 FB1D     		adds	r3, r7, #7
 236 00da 1A70     		strb	r2, [r3]
  40:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c ****     ascii_ctrl_bit_set(B_RS); 
 237              		.loc 1 40 0
 238 00dc 0120     		movs	r0, #1
 239 00de FFF7FEFF 		bl	ascii_ctrl_bit_set
  41:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c ****     ascii_ctrl_bit_clear(B_RW);  
 240              		.loc 1 41 0
 241 00e2 0220     		movs	r0, #2
 242 00e4 FFF7FEFF 		bl	ascii_ctrl_bit_clear
  42:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c ****     ascii_write_controller(data);    
 243              		.loc 1 42 0
 244 00e8 FB1D     		adds	r3, r7, #7
 245 00ea 1B78     		ldrb	r3, [r3]
 246 00ec 1800     		movs	r0, r3
 247 00ee FFF7FEFF 		bl	ascii_write_controller
  43:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c ****     delay_us(250);    
 248              		.loc 1 43 0
 249 00f2 FA20     		movs	r0, #250
 250 00f4 FFF7FEFF 		bl	delay_us
  44:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** }
 251              		.loc 1 44 0
 252 00f8 C046     		nop
 253 00fa BD46     		mov	sp, r7
 254 00fc 02B0     		add	sp, sp, #8
 255              		@ sp needed
 256 00fe 80BD     		pop	{r7, pc}
 257              		.cfi_endproc
 258              	.LFE4:
 260              		.align	2
 261              		.global	ascii_read_controller
 262              		.code	16
 263              		.thumb_func
 265              	ascii_read_controller:
 266              	.LFB5:
  45:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** 
  46:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** uint8_t ascii_read_controller()
  47:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** {
 267              		.loc 1 47 0
 268              		.cfi_startproc
 269              		@ args = 0, pretend = 0, frame = 8
 270              		@ frame_needed = 1, uses_anonymous_args = 0
 271 0100 80B5     		push	{r7, lr}
 272              		.cfi_def_cfa_offset 8
 273              		.cfi_offset 7, -8
 274              		.cfi_offset 14, -4
 275 0102 82B0     		sub	sp, sp, #8
 276              		.cfi_def_cfa_offset 16
 277 0104 00AF     		add	r7, sp, #0
 278              		.cfi_def_cfa_register 7
  48:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c ****     uint8_t rv; 
  49:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c ****     ascii_ctrl_bit_set(B_E);
 279              		.loc 1 49 0
 280 0106 4020     		movs	r0, #64
 281 0108 FFF7FEFF 		bl	ascii_ctrl_bit_set
  50:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c ****     delay_us(360);
 282              		.loc 1 50 0
 283 010c B423     		movs	r3, #180
 284 010e 5B00     		lsls	r3, r3, #1
 285 0110 1800     		movs	r0, r3
 286 0112 FFF7FEFF 		bl	delay_us
  51:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c ****     rv= GPIO_E.idr_high;   /*läser från data bussen*/
 287              		.loc 1 51 0
 288 0116 094A     		ldr	r2, .L14
 289 0118 FB1D     		adds	r3, r7, #7
 290 011a 527C     		ldrb	r2, [r2, #17]
 291 011c 1A70     		strb	r2, [r3]
  52:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c ****     delay_us(90);  /*1000 -360-550*/
 292              		.loc 1 52 0
 293 011e 5A20     		movs	r0, #90
 294 0120 FFF7FEFF 		bl	delay_us
  53:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c ****     ascii_ctrl_bit_clear(B_E); 
 295              		.loc 1 53 0
 296 0124 4020     		movs	r0, #64
 297 0126 FFF7FEFF 		bl	ascii_ctrl_bit_clear
  54:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c ****     /*vänta 550ns*/
  55:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c ****     delay_us(1);
 298              		.loc 1 55 0
 299 012a 0120     		movs	r0, #1
 300 012c FFF7FEFF 		bl	delay_us
  56:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c ****     return rv; 
 301              		.loc 1 56 0
 302 0130 FB1D     		adds	r3, r7, #7
 303 0132 1B78     		ldrb	r3, [r3]
  57:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** }
 304              		.loc 1 57 0
 305 0134 1800     		movs	r0, r3
 306 0136 BD46     		mov	sp, r7
 307 0138 02B0     		add	sp, sp, #8
 308              		@ sp needed
 309 013a 80BD     		pop	{r7, pc}
 310              	.L15:
 311              		.align	2
 312              	.L14:
 313 013c 00100240 		.word	1073876992
 314              		.cfi_endproc
 315              	.LFE5:
 317              		.align	2
 318              		.global	ascii_read_status
 319              		.code	16
 320              		.thumb_func
 322              	ascii_read_status:
 323              	.LFB6:
  58:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** 
  59:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** uint8_t ascii_read_status()
  60:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** {   
 324              		.loc 1 60 0
 325              		.cfi_startproc
 326              		@ args = 0, pretend = 0, frame = 8
 327              		@ frame_needed = 1, uses_anonymous_args = 0
 328 0140 90B5     		push	{r4, r7, lr}
 329              		.cfi_def_cfa_offset 12
 330              		.cfi_offset 4, -12
 331              		.cfi_offset 7, -8
 332              		.cfi_offset 14, -4
 333 0142 83B0     		sub	sp, sp, #12
 334              		.cfi_def_cfa_offset 24
 335 0144 00AF     		add	r7, sp, #0
 336              		.cfi_def_cfa_register 7
  61:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c ****     uint8_t rv;
  62:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c ****     GPIO_E.moder &= 0x0000ffff;    /*konfigurerar port E, bit8-15 som ingångar*/
 337              		.loc 1 62 0
 338 0146 0E4B     		ldr	r3, .L18
 339 0148 0D4A     		ldr	r2, .L18
 340 014a 1268     		ldr	r2, [r2]
 341 014c 1204     		lsls	r2, r2, #16
 342 014e 120C     		lsrs	r2, r2, #16
 343 0150 1A60     		str	r2, [r3]
  63:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c ****     ascii_ctrl_bit_clear(B_RS);
 344              		.loc 1 63 0
 345 0152 0120     		movs	r0, #1
 346 0154 FFF7FEFF 		bl	ascii_ctrl_bit_clear
  64:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c ****     ascii_ctrl_bit_set(B_RW); 
 347              		.loc 1 64 0
 348 0158 0220     		movs	r0, #2
 349 015a FFF7FEFF 		bl	ascii_ctrl_bit_set
  65:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c ****     rv = ascii_read_controller(); 
 350              		.loc 1 65 0
 351 015e FC1D     		adds	r4, r7, #7
 352 0160 FFF7FEFF 		bl	ascii_read_controller
 353 0164 0300     		movs	r3, r0
 354 0166 2370     		strb	r3, [r4]
  66:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c ****     GPIO_E.moder |= 0x55550000;    /*port E bit 8-15 utgångar*/
 355              		.loc 1 66 0
 356 0168 054B     		ldr	r3, .L18
 357 016a 054A     		ldr	r2, .L18
 358 016c 1268     		ldr	r2, [r2]
 359 016e 0549     		ldr	r1, .L18+4
 360 0170 0A43     		orrs	r2, r1
 361 0172 1A60     		str	r2, [r3]
  67:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c ****     return rv; 
 362              		.loc 1 67 0
 363 0174 FB1D     		adds	r3, r7, #7
 364 0176 1B78     		ldrb	r3, [r3]
  68:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** }
 365              		.loc 1 68 0
 366 0178 1800     		movs	r0, r3
 367 017a BD46     		mov	sp, r7
 368 017c 03B0     		add	sp, sp, #12
 369              		@ sp needed
 370 017e 90BD     		pop	{r4, r7, pc}
 371              	.L19:
 372              		.align	2
 373              	.L18:
 374 0180 00100240 		.word	1073876992
 375 0184 00005555 		.word	1431633920
 376              		.cfi_endproc
 377              	.LFE6:
 379              		.align	2
 380              		.global	ascii_read_data
 381              		.code	16
 382              		.thumb_func
 384              	ascii_read_data:
 385              	.LFB7:
  69:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** 
  70:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** uint8_t ascii_read_data()
  71:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** {   
 386              		.loc 1 71 0
 387              		.cfi_startproc
 388              		@ args = 0, pretend = 0, frame = 8
 389              		@ frame_needed = 1, uses_anonymous_args = 0
 390 0188 90B5     		push	{r4, r7, lr}
 391              		.cfi_def_cfa_offset 12
 392              		.cfi_offset 4, -12
 393              		.cfi_offset 7, -8
 394              		.cfi_offset 14, -4
 395 018a 83B0     		sub	sp, sp, #12
 396              		.cfi_def_cfa_offset 24
 397 018c 00AF     		add	r7, sp, #0
 398              		.cfi_def_cfa_register 7
  72:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c ****     uint8_t rv;
  73:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c ****     GPIO_E.moder &= 0x0000ffff;    /*konfigurerar port E*/
 399              		.loc 1 73 0
 400 018e 0E4B     		ldr	r3, .L22
 401 0190 0D4A     		ldr	r2, .L22
 402 0192 1268     		ldr	r2, [r2]
 403 0194 1204     		lsls	r2, r2, #16
 404 0196 120C     		lsrs	r2, r2, #16
 405 0198 1A60     		str	r2, [r3]
  74:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c ****     ascii_ctrl_bit_set(B_RS);
 406              		.loc 1 74 0
 407 019a 0120     		movs	r0, #1
 408 019c FFF7FEFF 		bl	ascii_ctrl_bit_set
  75:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c ****     ascii_ctrl_bit_set(B_RW); 
 409              		.loc 1 75 0
 410 01a0 0220     		movs	r0, #2
 411 01a2 FFF7FEFF 		bl	ascii_ctrl_bit_set
  76:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c ****     rv = ascii_read_controller(); 
 412              		.loc 1 76 0
 413 01a6 FC1D     		adds	r4, r7, #7
 414 01a8 FFF7FEFF 		bl	ascii_read_controller
 415 01ac 0300     		movs	r3, r0
 416 01ae 2370     		strb	r3, [r4]
  77:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c ****     GPIO_E.moder |= 0x55550000;
 417              		.loc 1 77 0
 418 01b0 054B     		ldr	r3, .L22
 419 01b2 054A     		ldr	r2, .L22
 420 01b4 1268     		ldr	r2, [r2]
 421 01b6 0549     		ldr	r1, .L22+4
 422 01b8 0A43     		orrs	r2, r1
 423 01ba 1A60     		str	r2, [r3]
  78:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c ****     return rv; 
 424              		.loc 1 78 0
 425 01bc FB1D     		adds	r3, r7, #7
 426 01be 1B78     		ldrb	r3, [r3]
  79:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** }
 427              		.loc 1 79 0
 428 01c0 1800     		movs	r0, r3
 429 01c2 BD46     		mov	sp, r7
 430 01c4 03B0     		add	sp, sp, #12
 431              		@ sp needed
 432 01c6 90BD     		pop	{r4, r7, pc}
 433              	.L23:
 434              		.align	2
 435              	.L22:
 436 01c8 00100240 		.word	1073876992
 437 01cc 00005555 		.word	1431633920
 438              		.cfi_endproc
 439              	.LFE7:
 441              		.align	2
 442              		.global	ascii_command
 443              		.code	16
 444              		.thumb_func
 446              	ascii_command:
 447              	.LFB8:
  80:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** 
  81:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** void ascii_command (uint8_t command, uint32_t delay)
  82:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** {
 448              		.loc 1 82 0
 449              		.cfi_startproc
 450              		@ args = 0, pretend = 0, frame = 8
 451              		@ frame_needed = 1, uses_anonymous_args = 0
 452 01d0 80B5     		push	{r7, lr}
 453              		.cfi_def_cfa_offset 8
 454              		.cfi_offset 7, -8
 455              		.cfi_offset 14, -4
 456 01d2 82B0     		sub	sp, sp, #8
 457              		.cfi_def_cfa_offset 16
 458 01d4 00AF     		add	r7, sp, #0
 459              		.cfi_def_cfa_register 7
 460 01d6 0200     		movs	r2, r0
 461 01d8 3960     		str	r1, [r7]
 462 01da FB1D     		adds	r3, r7, #7
 463 01dc 1A70     		strb	r2, [r3]
  83:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c ****     while((ascii_read_status() & 0x080)== 0x080) ;
 464              		.loc 1 83 0
 465 01de C046     		nop
 466              	.L25:
 467              		.loc 1 83 0 is_stmt 0 discriminator 1
 468 01e0 FFF7FEFF 		bl	ascii_read_status
 469 01e4 0300     		movs	r3, r0
 470 01e6 5BB2     		sxtb	r3, r3
 471 01e8 002B     		cmp	r3, #0
 472 01ea F9DB     		blt	.L25
  84:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c ****    delay_ms(8);
 473              		.loc 1 84 0 is_stmt 1
 474 01ec 0820     		movs	r0, #8
 475 01ee FFF7FEFF 		bl	delay_ms
  85:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c ****    ascii_write_cmd(command);
 476              		.loc 1 85 0
 477 01f2 FB1D     		adds	r3, r7, #7
 478 01f4 1B78     		ldrb	r3, [r3]
 479 01f6 1800     		movs	r0, r3
 480 01f8 FFF7FEFF 		bl	ascii_write_cmd
  86:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c ****    delay_ms(delay);   /*tid att vänta är olika för olika kommando*/
 481              		.loc 1 86 0
 482 01fc 3B68     		ldr	r3, [r7]
 483 01fe 1800     		movs	r0, r3
 484 0200 FFF7FEFF 		bl	delay_ms
  87:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** }
 485              		.loc 1 87 0
 486 0204 C046     		nop
 487 0206 BD46     		mov	sp, r7
 488 0208 02B0     		add	sp, sp, #8
 489              		@ sp needed
 490 020a 80BD     		pop	{r7, pc}
 491              		.cfi_endproc
 492              	.LFE8:
 494              		.align	2
 495              		.global	ascii_init
 496              		.code	16
 497              		.thumb_func
 499              	ascii_init:
 500              	.LFB9:
  88:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** 
  89:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** void ascii_init()
  90:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** {
 501              		.loc 1 90 0
 502              		.cfi_startproc
 503              		@ args = 0, pretend = 0, frame = 0
 504              		@ frame_needed = 1, uses_anonymous_args = 0
 505 020c 80B5     		push	{r7, lr}
 506              		.cfi_def_cfa_offset 8
 507              		.cfi_offset 7, -8
 508              		.cfi_offset 14, -4
 509 020e 00AF     		add	r7, sp, #0
 510              		.cfi_def_cfa_register 7
  91:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c ****     GPIO_E.moder = 0x55555555; 
 511              		.loc 1 91 0
 512 0210 104B     		ldr	r3, .L27
 513 0212 114A     		ldr	r2, .L27+4
 514 0214 1A60     		str	r2, [r3]
  92:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c ****     RCC_AHB1ENR |= RCC_GPIO_E;   /*aktivera klockan för port D*/
 515              		.loc 1 92 0
 516 0216 114B     		ldr	r3, .L27+8
 517 0218 104A     		ldr	r2, .L27+8
 518 021a 1268     		ldr	r2, [r2]
 519 021c 1021     		movs	r1, #16
 520 021e 0A43     		orrs	r2, r1
 521 0220 1A60     		str	r2, [r3]
  93:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c ****     GPIO_E.otyper = 0xffff;       /*open drain*/
 522              		.loc 1 93 0
 523 0222 0C4B     		ldr	r3, .L27
 524 0224 0122     		movs	r2, #1
 525 0226 5242     		rsbs	r2, r2, #0
 526 0228 9A80     		strh	r2, [r3, #4]
  94:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c ****     
  95:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** 	// GPIO_E.otyper = 0;				// tre rader med tillägg
  96:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** 	// GPIO_E.pupdr =0x55550000;
  97:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** 	// GPIO_E.ospeedr = 0x55555555;
  98:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c ****     
  99:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** 	// ökad delay i asci commandsen här nedan (39 till 50) me undantag sista (1530 till 5000)
 100:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** 	
 101:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** 	ascii_command(0x38, 39);/*för att ha 2 rader och en viss storlek, måste kommandot function set v
 527              		.loc 1 101 0
 528 022a 2721     		movs	r1, #39
 529 022c 3820     		movs	r0, #56
 530 022e FFF7FEFF 		bl	ascii_command
 102:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c ****     ascii_command (0x0F, 39); /*kommando:display control, D=1,C=1, B=0  --> 0000 1110*/
 531              		.loc 1 102 0
 532 0232 2721     		movs	r1, #39
 533 0234 0F20     		movs	r0, #15
 534 0236 FFF7FEFF 		bl	ascii_command
 103:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c ****     ascii_command (0x06, 39); /*Kommando: entry mode set, ID=0, SH= 0  --> 0000 0100*/
 535              		.loc 1 103 0
 536 023a 2721     		movs	r1, #39
 537 023c 0620     		movs	r0, #6
 538 023e FFF7FEFF 		bl	ascii_command
 104:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c ****     ascii_command (0x01, 1530); /*kommando: clear display*/
 539              		.loc 1 104 0
 540 0242 074B     		ldr	r3, .L27+12
 541 0244 1900     		movs	r1, r3
 542 0246 0120     		movs	r0, #1
 543 0248 FFF7FEFF 		bl	ascii_command
 105:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** }
 544              		.loc 1 105 0
 545 024c C046     		nop
 546 024e BD46     		mov	sp, r7
 547              		@ sp needed
 548 0250 80BD     		pop	{r7, pc}
 549              	.L28:
 550 0252 C046     		.align	2
 551              	.L27:
 552 0254 00100240 		.word	1073876992
 553 0258 55555555 		.word	1431655765
 554 025c 30380240 		.word	1073887280
 555 0260 FA050000 		.word	1530
 556              		.cfi_endproc
 557              	.LFE9:
 559              		.align	2
 560              		.global	ascii_gotoxy
 561              		.code	16
 562              		.thumb_func
 564              	ascii_gotoxy:
 565              	.LFB10:
 106:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** 
 107:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** void ascii_gotoxy(uint8_t x, uint8_t y)
 108:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** {
 566              		.loc 1 108 0
 567              		.cfi_startproc
 568              		@ args = 0, pretend = 0, frame = 16
 569              		@ frame_needed = 1, uses_anonymous_args = 0
 570 0264 80B5     		push	{r7, lr}
 571              		.cfi_def_cfa_offset 8
 572              		.cfi_offset 7, -8
 573              		.cfi_offset 14, -4
 574 0266 84B0     		sub	sp, sp, #16
 575              		.cfi_def_cfa_offset 24
 576 0268 00AF     		add	r7, sp, #0
 577              		.cfi_def_cfa_register 7
 578 026a 0200     		movs	r2, r0
 579 026c FB1D     		adds	r3, r7, #7
 580 026e 1A70     		strb	r2, [r3]
 581 0270 BB1D     		adds	r3, r7, #6
 582 0272 0A1C     		adds	r2, r1, #0
 583 0274 1A70     		strb	r2, [r3]
 109:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c ****      uint8_t adress= x-1;
 584              		.loc 1 109 0
 585 0276 0F23     		movs	r3, #15
 586 0278 FB18     		adds	r3, r7, r3
 587 027a FA1D     		adds	r2, r7, #7
 588 027c 1278     		ldrb	r2, [r2]
 589 027e 013A     		subs	r2, r2, #1
 590 0280 1A70     		strb	r2, [r3]
 110:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c ****       
 111:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c ****     /*om raden är 2, sätt adress till adress + 0x40;*/
 112:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c ****     if (y ==2) {
 591              		.loc 1 112 0
 592 0282 BB1D     		adds	r3, r7, #6
 593 0284 1B78     		ldrb	r3, [r3]
 594 0286 022B     		cmp	r3, #2
 595 0288 06D1     		bne	.L30
 113:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c ****         adress= adress+0x40; 
 596              		.loc 1 113 0
 597 028a 0F23     		movs	r3, #15
 598 028c FB18     		adds	r3, r7, r3
 599 028e 0F22     		movs	r2, #15
 600 0290 BA18     		adds	r2, r7, r2
 601 0292 1278     		ldrb	r2, [r2]
 602 0294 4032     		adds	r2, r2, #64
 603 0296 1A70     		strb	r2, [r3]
 604              	.L30:
 114:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c ****     }
 115:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c ****     ascii_command((0x80| adress), 39);
 605              		.loc 1 115 0
 606 0298 0F23     		movs	r3, #15
 607 029a FB18     		adds	r3, r7, r3
 608 029c 1B78     		ldrb	r3, [r3]
 609 029e 8022     		movs	r2, #128
 610 02a0 5242     		rsbs	r2, r2, #0
 611 02a2 1343     		orrs	r3, r2
 612 02a4 DBB2     		uxtb	r3, r3
 613 02a6 2721     		movs	r1, #39
 614 02a8 1800     		movs	r0, r3
 615 02aa FFF7FEFF 		bl	ascii_command
 116:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c ****  
 117:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** }
 616              		.loc 1 117 0
 617 02ae C046     		nop
 618 02b0 BD46     		mov	sp, r7
 619 02b2 04B0     		add	sp, sp, #16
 620              		@ sp needed
 621 02b4 80BD     		pop	{r7, pc}
 622              		.cfi_endproc
 623              	.LFE10:
 625 02b6 C046     		.align	2
 626              		.global	ascii_write_char
 627              		.code	16
 628              		.thumb_func
 630              	ascii_write_char:
 631              	.LFB11:
 118:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** void ascii_write_char(unsigned char c)
 119:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** {
 632              		.loc 1 119 0
 633              		.cfi_startproc
 634              		@ args = 0, pretend = 0, frame = 8
 635              		@ frame_needed = 1, uses_anonymous_args = 0
 636 02b8 80B5     		push	{r7, lr}
 637              		.cfi_def_cfa_offset 8
 638              		.cfi_offset 7, -8
 639              		.cfi_offset 14, -4
 640 02ba 82B0     		sub	sp, sp, #8
 641              		.cfi_def_cfa_offset 16
 642 02bc 00AF     		add	r7, sp, #0
 643              		.cfi_def_cfa_register 7
 644 02be 0200     		movs	r2, r0
 645 02c0 FB1D     		adds	r3, r7, #7
 646 02c2 1A70     		strb	r2, [r3]
 120:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c ****     while((ascii_read_status() & 0x080)== 0x080) ;
 647              		.loc 1 120 0
 648 02c4 C046     		nop
 649              	.L32:
 650              		.loc 1 120 0 is_stmt 0 discriminator 1
 651 02c6 FFF7FEFF 		bl	ascii_read_status
 652 02ca 0300     		movs	r3, r0
 653 02cc 5BB2     		sxtb	r3, r3
 654 02ce 002B     		cmp	r3, #0
 655 02d0 F9DB     		blt	.L32
 121:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c ****     delay_ms(8);
 656              		.loc 1 121 0 is_stmt 1
 657 02d2 0820     		movs	r0, #8
 658 02d4 FFF7FEFF 		bl	delay_ms
 122:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c ****     ascii_write_data(c);
 659              		.loc 1 122 0
 660 02d8 FB1D     		adds	r3, r7, #7
 661 02da 1B78     		ldrb	r3, [r3]
 662 02dc 1800     		movs	r0, r3
 663 02de FFF7FEFF 		bl	ascii_write_data
 123:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c ****     delay_ms(43);
 664              		.loc 1 123 0
 665 02e2 2B20     		movs	r0, #43
 666 02e4 FFF7FEFF 		bl	delay_ms
 124:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** }
 667              		.loc 1 124 0
 668 02e8 C046     		nop
 669 02ea BD46     		mov	sp, r7
 670 02ec 02B0     		add	sp, sp, #8
 671              		@ sp needed
 672 02ee 80BD     		pop	{r7, pc}
 673              		.cfi_endproc
 674              	.LFE11:
 676              		.align	2
 677              		.global	ascii_print
 678              		.code	16
 679              		.thumb_func
 681              	ascii_print:
 682              	.LFB12:
 125:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** 
 126:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** void ascii_print(char* string)
 127:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** {
 683              		.loc 1 127 0
 684              		.cfi_startproc
 685              		@ args = 0, pretend = 0, frame = 24
 686              		@ frame_needed = 1, uses_anonymous_args = 0
 687 02f0 80B5     		push	{r7, lr}
 688              		.cfi_def_cfa_offset 8
 689              		.cfi_offset 7, -8
 690              		.cfi_offset 14, -4
 691 02f2 86B0     		sub	sp, sp, #24
 692              		.cfi_def_cfa_offset 32
 693 02f4 00AF     		add	r7, sp, #0
 694              		.cfi_def_cfa_register 7
 695 02f6 7860     		str	r0, [r7, #4]
 128:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** 	int end = 0;
 696              		.loc 1 128 0
 697 02f8 0023     		movs	r3, #0
 698 02fa 7B61     		str	r3, [r7, #20]
 699              	.LBB2:
 129:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** 	for(int i = 0; i < 28; i++)
 700              		.loc 1 129 0
 701 02fc 0023     		movs	r3, #0
 702 02fe 3B61     		str	r3, [r7, #16]
 703 0300 12E0     		b	.L34
 704              	.L37:
 130:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** 	{
 131:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** 		if( ! (*(string + i)) )
 705              		.loc 1 131 0
 706 0302 3B69     		ldr	r3, [r7, #16]
 707 0304 7A68     		ldr	r2, [r7, #4]
 708 0306 D318     		adds	r3, r2, r3
 709 0308 1B78     		ldrb	r3, [r3]
 710 030a 002B     		cmp	r3, #0
 711 030c 02D1     		bne	.L35
 132:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** 		{
 133:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** 			end = 1;
 712              		.loc 1 133 0
 713 030e 0123     		movs	r3, #1
 714 0310 7B61     		str	r3, [r7, #20]
 134:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** 			break;
 715              		.loc 1 134 0
 716 0312 0CE0     		b	.L36
 717              	.L35:
 135:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** 		}
 136:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** 		ascii_write_char(*(string + i));
 718              		.loc 1 136 0 discriminator 2
 719 0314 3B69     		ldr	r3, [r7, #16]
 720 0316 7A68     		ldr	r2, [r7, #4]
 721 0318 D318     		adds	r3, r2, r3
 722 031a 1B78     		ldrb	r3, [r3]
 723 031c 1800     		movs	r0, r3
 724 031e FFF7FEFF 		bl	ascii_write_char
 129:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** 	{
 725              		.loc 1 129 0 discriminator 2
 726 0322 3B69     		ldr	r3, [r7, #16]
 727 0324 0133     		adds	r3, r3, #1
 728 0326 3B61     		str	r3, [r7, #16]
 729              	.L34:
 129:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** 	{
 730              		.loc 1 129 0 is_stmt 0 discriminator 1
 731 0328 3B69     		ldr	r3, [r7, #16]
 732 032a 1B2B     		cmp	r3, #27
 733 032c E9DD     		ble	.L37
 734              	.L36:
 735              	.LBE2:
 137:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** 	}
 138:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** 	if( !(end) )
 736              		.loc 1 138 0 is_stmt 1
 737 032e 7B69     		ldr	r3, [r7, #20]
 738 0330 002B     		cmp	r3, #0
 739 0332 1BD1     		bne	.L43
 139:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** 	{
 140:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** 		ascii_gotoxy(1,2);
 740              		.loc 1 140 0
 741 0334 0221     		movs	r1, #2
 742 0336 0120     		movs	r0, #1
 743 0338 FFF7FEFF 		bl	ascii_gotoxy
 744              	.LBB3:
 141:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** 		for(int i = 28; i < 56; i++)
 745              		.loc 1 141 0
 746 033c 1C23     		movs	r3, #28
 747 033e FB60     		str	r3, [r7, #12]
 748 0340 0FE0     		b	.L39
 749              	.L41:
 142:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** 		{
 143:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** 			if( ! (*(string + i)) )
 750              		.loc 1 143 0
 751 0342 FB68     		ldr	r3, [r7, #12]
 752 0344 7A68     		ldr	r2, [r7, #4]
 753 0346 D318     		adds	r3, r2, r3
 754 0348 1B78     		ldrb	r3, [r3]
 755 034a 002B     		cmp	r3, #0
 756 034c 0DD0     		beq	.L44
 144:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** 			{
 145:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** 				break;
 146:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** 			}
 147:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** 			ascii_write_char(*(string + i));
 757              		.loc 1 147 0 discriminator 2
 758 034e FB68     		ldr	r3, [r7, #12]
 759 0350 7A68     		ldr	r2, [r7, #4]
 760 0352 D318     		adds	r3, r2, r3
 761 0354 1B78     		ldrb	r3, [r3]
 762 0356 1800     		movs	r0, r3
 763 0358 FFF7FEFF 		bl	ascii_write_char
 141:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** 		{
 764              		.loc 1 141 0 discriminator 2
 765 035c FB68     		ldr	r3, [r7, #12]
 766 035e 0133     		adds	r3, r3, #1
 767 0360 FB60     		str	r3, [r7, #12]
 768              	.L39:
 141:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** 		{
 769              		.loc 1 141 0 is_stmt 0 discriminator 1
 770 0362 FB68     		ldr	r3, [r7, #12]
 771 0364 372B     		cmp	r3, #55
 772 0366 ECDD     		ble	.L41
 773              	.LBE3:
 148:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** 		}
 149:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** 	}
 150:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** 	
 151:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** }
 774              		.loc 1 151 0 is_stmt 1
 775 0368 00E0     		b	.L43
 776              	.L44:
 777              	.LBB4:
 145:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/ascii.c **** 			}
 778              		.loc 1 145 0
 779 036a C046     		nop
 780              	.L43:
 781              	.LBE4:
 782              		.loc 1 151 0
 783 036c C046     		nop
 784 036e BD46     		mov	sp, r7
 785 0370 06B0     		add	sp, sp, #24
 786              		@ sp needed
 787 0372 80BD     		pop	{r7, pc}
 788              		.cfi_endproc
 789              	.LFE12:
 791              	.Letext0:
 792              		.file 2 "/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/gpio.h"
=======
  15              		.file	"libMD407.c"
  16              		.text
  17              	.Ltext0:
  18              		.cfi_sections	.debug_frame
  19              		.bss
  20              		.align	2
  21              	heap_end:
  22 0000 00000000 		.space	4
  23              		.text
  24              		.align	2
  25              		.global	_fstat
  26              		.code	16
  27              		.thumb_func
  29              	_fstat:
  30              	.LFB0:
  31              		.file 1 "C:/Users/sid/Documents/snek/snek-MOP/libMD407.c"
   1:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c **** /*
   2:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c **** * libMD407.c
   3:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c **** * MD407 library
   4:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c **** */
   5:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c **** 
   6:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c **** /* declarations goes to  'libMD407.h' */
   7:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c **** #include "libMD407.h"
   8:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c **** 
   9:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c **** /* Define variables here */
  10:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c **** static char* heap_end;
  11:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c **** 
  12:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c **** int _fstat(int file, struct stat* st)
  13:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c **** {
  32              		.loc 1 13 0
  33              		.cfi_startproc
  34 0000 80B5     		push	{r7, lr}
  35              		.cfi_def_cfa_offset 8
  36              		.cfi_offset 7, -8
  37              		.cfi_offset 14, -4
  38 0002 82B0     		sub	sp, sp, #8
  39              		.cfi_def_cfa_offset 16
  40 0004 00AF     		add	r7, sp, #0
  41              		.cfi_def_cfa_register 7
  42 0006 7860     		str	r0, [r7, #4]
  43 0008 3960     		str	r1, [r7]
  14:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c ****     st->st_mode = S_IFCHR;
  44              		.loc 1 14 0
  45 000a 3B68     		ldr	r3, [r7]
  46 000c 8022     		movs	r2, #128
  47 000e 9201     		lsls	r2, r2, #6
  48 0010 5A60     		str	r2, [r3, #4]
  15:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c ****     return 0;
  49              		.loc 1 15 0
  50 0012 0023     		movs	r3, #0
  16:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c **** }
  51              		.loc 1 16 0
  52 0014 1800     		movs	r0, r3
  53 0016 BD46     		mov	sp, r7
  54 0018 02B0     		add	sp, sp, #8
  55              		@ sp needed
  56 001a 80BD     		pop	{r7, pc}
  57              		.cfi_endproc
  58              	.LFE0:
  60              		.align	2
  61              		.global	_isatty
  62              		.code	16
  63              		.thumb_func
  65              	_isatty:
  66              	.LFB1:
  17:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c **** 
  18:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c **** int _isatty(int file)
  19:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c **** {
  67              		.loc 1 19 0
  68              		.cfi_startproc
  69 001c 80B5     		push	{r7, lr}
  70              		.cfi_def_cfa_offset 8
  71              		.cfi_offset 7, -8
  72              		.cfi_offset 14, -4
  73 001e 82B0     		sub	sp, sp, #8
  74              		.cfi_def_cfa_offset 16
  75 0020 00AF     		add	r7, sp, #0
  76              		.cfi_def_cfa_register 7
  77 0022 7860     		str	r0, [r7, #4]
  20:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c ****     return 1;
  78              		.loc 1 20 0
  79 0024 0123     		movs	r3, #1
  21:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c **** }
  80              		.loc 1 21 0
  81 0026 1800     		movs	r0, r3
  82 0028 BD46     		mov	sp, r7
  83 002a 02B0     		add	sp, sp, #8
  84              		@ sp needed
  85 002c 80BD     		pop	{r7, pc}
  86              		.cfi_endproc
  87              	.LFE1:
  89 002e C046     		.align	2
  90              		.global	_open
  91              		.code	16
  92              		.thumb_func
  94              	_open:
  95              	.LFB2:
  22:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c **** 
  23:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c **** int _open(const char* name, int flags, int mode)
  24:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c **** {
  96              		.loc 1 24 0
  97              		.cfi_startproc
  98 0030 80B5     		push	{r7, lr}
  99              		.cfi_def_cfa_offset 8
 100              		.cfi_offset 7, -8
 101              		.cfi_offset 14, -4
 102 0032 84B0     		sub	sp, sp, #16
 103              		.cfi_def_cfa_offset 24
 104 0034 00AF     		add	r7, sp, #0
 105              		.cfi_def_cfa_register 7
 106 0036 F860     		str	r0, [r7, #12]
 107 0038 B960     		str	r1, [r7, #8]
 108 003a 7A60     		str	r2, [r7, #4]
  25:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c ****     return -1;
 109              		.loc 1 25 0
 110 003c 0123     		movs	r3, #1
 111 003e 5B42     		rsbs	r3, r3, #0
  26:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c **** }
 112              		.loc 1 26 0
 113 0040 1800     		movs	r0, r3
 114 0042 BD46     		mov	sp, r7
 115 0044 04B0     		add	sp, sp, #16
 116              		@ sp needed
 117 0046 80BD     		pop	{r7, pc}
 118              		.cfi_endproc
 119              	.LFE2:
 121              		.align	2
 122              		.global	_close
 123              		.code	16
 124              		.thumb_func
 126              	_close:
 127              	.LFB3:
  27:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c **** 
  28:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c **** int _close(int file)
  29:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c **** {
 128              		.loc 1 29 0
 129              		.cfi_startproc
 130 0048 80B5     		push	{r7, lr}
 131              		.cfi_def_cfa_offset 8
 132              		.cfi_offset 7, -8
 133              		.cfi_offset 14, -4
 134 004a 82B0     		sub	sp, sp, #8
 135              		.cfi_def_cfa_offset 16
 136 004c 00AF     		add	r7, sp, #0
 137              		.cfi_def_cfa_register 7
 138 004e 7860     		str	r0, [r7, #4]
  30:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c ****     return -1;
 139              		.loc 1 30 0
 140 0050 0123     		movs	r3, #1
 141 0052 5B42     		rsbs	r3, r3, #0
  31:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c **** }
 142              		.loc 1 31 0
 143 0054 1800     		movs	r0, r3
 144 0056 BD46     		mov	sp, r7
 145 0058 02B0     		add	sp, sp, #8
 146              		@ sp needed
 147 005a 80BD     		pop	{r7, pc}
 148              		.cfi_endproc
 149              	.LFE3:
 151              		.align	2
 152              		.global	_lseek
 153              		.code	16
 154              		.thumb_func
 156              	_lseek:
 157              	.LFB4:
  32:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c **** 
  33:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c **** int _lseek(int file, int ptr, int dir)
  34:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c **** {
 158              		.loc 1 34 0
 159              		.cfi_startproc
 160 005c 80B5     		push	{r7, lr}
 161              		.cfi_def_cfa_offset 8
 162              		.cfi_offset 7, -8
 163              		.cfi_offset 14, -4
 164 005e 84B0     		sub	sp, sp, #16
 165              		.cfi_def_cfa_offset 24
 166 0060 00AF     		add	r7, sp, #0
 167              		.cfi_def_cfa_register 7
 168 0062 F860     		str	r0, [r7, #12]
 169 0064 B960     		str	r1, [r7, #8]
 170 0066 7A60     		str	r2, [r7, #4]
  35:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c ****     return 0;
 171              		.loc 1 35 0
 172 0068 0023     		movs	r3, #0
  36:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c **** }
 173              		.loc 1 36 0
 174 006a 1800     		movs	r0, r3
 175 006c BD46     		mov	sp, r7
 176 006e 04B0     		add	sp, sp, #16
 177              		@ sp needed
 178 0070 80BD     		pop	{r7, pc}
 179              		.cfi_endproc
 180              	.LFE4:
 182 0072 C046     		.align	2
 183              		.global	_write
 184              		.code	16
 185              		.thumb_func
 187              	_write:
 188              	.LFB5:
  37:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c **** 
  38:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c **** int _write(int file, char* ptr, int len)
  39:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c **** {
 189              		.loc 1 39 0
 190              		.cfi_startproc
 191 0074 80B5     		push	{r7, lr}
 192              		.cfi_def_cfa_offset 8
 193              		.cfi_offset 7, -8
 194              		.cfi_offset 14, -4
 195 0076 86B0     		sub	sp, sp, #24
 196              		.cfi_def_cfa_offset 32
 197 0078 00AF     		add	r7, sp, #0
 198              		.cfi_def_cfa_register 7
 199 007a F860     		str	r0, [r7, #12]
 200 007c B960     		str	r1, [r7, #8]
 201 007e 7A60     		str	r2, [r7, #4]
  40:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c ****     int todo;
  41:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c ****     for(todo = 0; todo < len; todo++) {
 202              		.loc 1 41 0
 203 0080 0023     		movs	r3, #0
 204 0082 7B61     		str	r3, [r7, #20]
 205 0084 09E0     		b	.L12
 206              	.L13:
  42:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c **** 		_outchar(*ptr++);
 207              		.loc 1 42 0 discriminator 3
 208 0086 BB68     		ldr	r3, [r7, #8]
 209 0088 5A1C     		adds	r2, r3, #1
 210 008a BA60     		str	r2, [r7, #8]
 211 008c 1B78     		ldrb	r3, [r3]
 212 008e 1800     		movs	r0, r3
 213 0090 FFF7FEFF 		bl	_outchar
  41:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c **** 		_outchar(*ptr++);
 214              		.loc 1 41 0 discriminator 3
 215 0094 7B69     		ldr	r3, [r7, #20]
 216 0096 0133     		adds	r3, r3, #1
 217 0098 7B61     		str	r3, [r7, #20]
 218              	.L12:
  41:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c **** 		_outchar(*ptr++);
 219              		.loc 1 41 0 is_stmt 0 discriminator 1
 220 009a 7A69     		ldr	r2, [r7, #20]
 221 009c 7B68     		ldr	r3, [r7, #4]
 222 009e 9A42     		cmp	r2, r3
 223 00a0 F1DB     		blt	.L13
  43:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c ****     }
  44:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c ****     return len;
 224              		.loc 1 44 0 is_stmt 1
 225 00a2 7B68     		ldr	r3, [r7, #4]
  45:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c **** }
 226              		.loc 1 45 0
 227 00a4 1800     		movs	r0, r3
 228 00a6 BD46     		mov	sp, r7
 229 00a8 06B0     		add	sp, sp, #24
 230              		@ sp needed
 231 00aa 80BD     		pop	{r7, pc}
 232              		.cfi_endproc
 233              	.LFE5:
 235              		.align	2
 236              		.global	_read
 237              		.code	16
 238              		.thumb_func
 240              	_read:
 241              	.LFB6:
  46:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c **** 
  47:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c **** int _read(int file, char* ptr, int len)
  48:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c **** {
 242              		.loc 1 48 0
 243              		.cfi_startproc
 244 00ac 80B5     		push	{r7, lr}
 245              		.cfi_def_cfa_offset 8
 246              		.cfi_offset 7, -8
 247              		.cfi_offset 14, -4
 248 00ae 84B0     		sub	sp, sp, #16
 249              		.cfi_def_cfa_offset 24
 250 00b0 00AF     		add	r7, sp, #0
 251              		.cfi_def_cfa_register 7
 252 00b2 F860     		str	r0, [r7, #12]
 253 00b4 B960     		str	r1, [r7, #8]
 254 00b6 7A60     		str	r2, [r7, #4]
  49:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c **** 	return 0;
 255              		.loc 1 49 0
 256 00b8 0023     		movs	r3, #0
  50:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c **** /*    int todo;
  51:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c **** 
  52:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c ****     if(len == 0)
  53:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c **** 		return 0;
  54:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c **** 
  55:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c ****     for(todo = 1; todo < len; todo++) {
  56:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c **** 		*ptr++ = _inchar();
  57:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c ****     }
  58:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c ****     return todo;*/
  59:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c **** }
 257              		.loc 1 59 0
 258 00ba 1800     		movs	r0, r3
 259 00bc BD46     		mov	sp, r7
 260 00be 04B0     		add	sp, sp, #16
 261              		@ sp needed
 262 00c0 80BD     		pop	{r7, pc}
 263              		.cfi_endproc
 264              	.LFE6:
 266 00c2 C046     		.align	2
 267              		.global	_sbrk
 268              		.code	16
 269              		.thumb_func
 271              	_sbrk:
 272              	.LFB7:
  60:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c **** 
  61:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c **** char* _sbrk(int incr)
  62:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c **** {
 273              		.loc 1 62 0
 274              		.cfi_startproc
 275 00c4 80B5     		push	{r7, lr}
 276              		.cfi_def_cfa_offset 8
 277              		.cfi_offset 7, -8
 278              		.cfi_offset 14, -4
 279 00c6 84B0     		sub	sp, sp, #16
 280              		.cfi_def_cfa_offset 24
 281 00c8 00AF     		add	r7, sp, #0
 282              		.cfi_def_cfa_register 7
 283 00ca 7860     		str	r0, [r7, #4]
  63:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c ****     char* prev_heap_end;
  64:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c **** 
  65:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c ****     if(heap_end == 0) {
 284              		.loc 1 65 0
 285 00cc 114B     		ldr	r3, .L21
 286 00ce 1B68     		ldr	r3, [r3]
 287 00d0 002B     		cmp	r3, #0
 288 00d2 02D1     		bne	.L18
  66:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c **** 		heap_end = &heap_low;
 289              		.loc 1 66 0
 290 00d4 0F4B     		ldr	r3, .L21
 291 00d6 104A     		ldr	r2, .L21+4
 292 00d8 1A60     		str	r2, [r3]
 293              	.L18:
  67:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c ****     }
  68:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c ****     prev_heap_end = heap_end;
 294              		.loc 1 68 0
 295 00da 0E4B     		ldr	r3, .L21
 296 00dc 1B68     		ldr	r3, [r3]
 297 00de FB60     		str	r3, [r7, #12]
  69:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c **** 
  70:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c ****     if(heap_end + incr > &heap_top) {
 298              		.loc 1 70 0
 299 00e0 0C4B     		ldr	r3, .L21
 300 00e2 1A68     		ldr	r2, [r3]
 301 00e4 7B68     		ldr	r3, [r7, #4]
 302 00e6 D218     		adds	r2, r2, r3
 303 00e8 0C4B     		ldr	r3, .L21+8
 304 00ea 9A42     		cmp	r2, r3
 305 00ec 07D9     		bls	.L19
  71:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c **** 		/* Heap and stack collision */
  72:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c **** 		errno = ENOMEM;
 306              		.loc 1 72 0
 307 00ee FFF7FEFF 		bl	__errno
 308 00f2 0300     		movs	r3, r0
 309 00f4 0C22     		movs	r2, #12
 310 00f6 1A60     		str	r2, [r3]
  73:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c **** 		return (char*)-1;
 311              		.loc 1 73 0
 312 00f8 0123     		movs	r3, #1
 313 00fa 5B42     		rsbs	r3, r3, #0
 314 00fc 06E0     		b	.L20
 315              	.L19:
  74:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c ****     }
  75:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c ****     heap_end += incr;
 316              		.loc 1 75 0
 317 00fe 054B     		ldr	r3, .L21
 318 0100 1A68     		ldr	r2, [r3]
 319 0102 7B68     		ldr	r3, [r7, #4]
 320 0104 D218     		adds	r2, r2, r3
 321 0106 034B     		ldr	r3, .L21
 322 0108 1A60     		str	r2, [r3]
  76:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c ****     return (char*)prev_heap_end;
 323              		.loc 1 76 0
 324 010a FB68     		ldr	r3, [r7, #12]
 325              	.L20:
  77:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c **** }
 326              		.loc 1 77 0
 327 010c 1800     		movs	r0, r3
 328 010e BD46     		mov	sp, r7
 329 0110 04B0     		add	sp, sp, #16
 330              		@ sp needed
 331 0112 80BD     		pop	{r7, pc}
 332              	.L22:
 333              		.align	2
 334              	.L21:
 335 0114 00000000 		.word	heap_end
 336 0118 00000000 		.word	heap_low
 337 011c 00000000 		.word	heap_top
 338              		.cfi_endproc
 339              	.LFE7:
 341              		.align	2
 342              		.global	crt_init
 343              		.code	16
 344              		.thumb_func
 346              	crt_init:
 347              	.LFB8:
  78:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c **** 
  79:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c **** void crt_init()
  80:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c **** {
 348              		.loc 1 80 0
 349              		.cfi_startproc
 350 0120 80B5     		push	{r7, lr}
 351              		.cfi_def_cfa_offset 8
 352              		.cfi_offset 7, -8
 353              		.cfi_offset 14, -4
 354 0122 82B0     		sub	sp, sp, #8
 355              		.cfi_def_cfa_offset 16
 356 0124 00AF     		add	r7, sp, #0
 357              		.cfi_def_cfa_register 7
  81:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c ****     extern char _sbss; /* Defined by linker */
  82:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c ****     extern char _ebss; /* Defined by linker */
  83:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c **** 	char* s;
  84:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c ****     s = &_sbss;
 358              		.loc 1 84 0
 359 0126 0F4B     		ldr	r3, .L28
 360 0128 7B60     		str	r3, [r7, #4]
  85:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c **** 	
  86:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c ****     while(s < &_ebss)
 361              		.loc 1 86 0
 362 012a 04E0     		b	.L24
 363              	.L25:
  87:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c **** 		*s++ = 0;
 364              		.loc 1 87 0
 365 012c 7B68     		ldr	r3, [r7, #4]
 366 012e 5A1C     		adds	r2, r3, #1
 367 0130 7A60     		str	r2, [r7, #4]
 368 0132 0022     		movs	r2, #0
 369 0134 1A70     		strb	r2, [r3]
 370              	.L24:
  86:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c **** 		*s++ = 0;
 371              		.loc 1 86 0
 372 0136 7A68     		ldr	r2, [r7, #4]
 373 0138 0B4B     		ldr	r3, .L28+4
 374 013a 9A42     		cmp	r2, r3
 375 013c F6D3     		bcc	.L25
  88:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c **** 		
  89:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c ****     s = &heap_low;
 376              		.loc 1 89 0
 377 013e 0B4B     		ldr	r3, .L28+8
 378 0140 7B60     		str	r3, [r7, #4]
  90:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c ****     while(s < &heap_top)
 379              		.loc 1 90 0
 380 0142 04E0     		b	.L26
 381              	.L27:
  91:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c **** 		*s++ = 0;
 382              		.loc 1 91 0
 383 0144 7B68     		ldr	r3, [r7, #4]
 384 0146 5A1C     		adds	r2, r3, #1
 385 0148 7A60     		str	r2, [r7, #4]
 386 014a 0022     		movs	r2, #0
 387 014c 1A70     		strb	r2, [r3]
 388              	.L26:
  90:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c ****     while(s < &heap_top)
 389              		.loc 1 90 0
 390 014e 7A68     		ldr	r2, [r7, #4]
 391 0150 074B     		ldr	r3, .L28+12
 392 0152 9A42     		cmp	r2, r3
 393 0154 F6D3     		bcc	.L27
  92:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c **** 		
  93:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c ****     heap_end = 0;
 394              		.loc 1 93 0
 395 0156 074B     		ldr	r3, .L28+16
 396 0158 0022     		movs	r2, #0
 397 015a 1A60     		str	r2, [r3]
  94:C:/Users/sid/Documents/snek/snek-MOP\libMD407.c **** }
 398              		.loc 1 94 0
 399 015c C046     		nop
 400 015e BD46     		mov	sp, r7
 401 0160 02B0     		add	sp, sp, #8
 402              		@ sp needed
 403 0162 80BD     		pop	{r7, pc}
 404              	.L29:
 405              		.align	2
 406              	.L28:
 407 0164 00000000 		.word	_sbss
 408 0168 00000000 		.word	_ebss
 409 016c 00000000 		.word	heap_low
 410 0170 00000000 		.word	heap_top
 411 0174 00000000 		.word	heap_end
 412              		.cfi_endproc
 413              	.LFE8:
 415              	.Letext0:
 416              		.file 2 "c:\\cseapp\\codelite\\tools\\gcc-arm\\arm-none-eabi\\include\\sys\\_types.h"
 417              		.file 3 "c:\\cseapp\\codelite\\tools\\gcc-arm\\arm-none-eabi\\include\\sys\\_timeval.h"
 418              		.file 4 "c:\\cseapp\\codelite\\tools\\gcc-arm\\arm-none-eabi\\include\\sys\\types.h"
 419              		.file 5 "c:\\cseapp\\codelite\\tools\\gcc-arm\\arm-none-eabi\\include\\sys\\stat.h"
 420              		.file 6 "C:/Users/sid/Documents/snek/snek-MOP/libMD407.h"
>>>>>>> 9a989604d7d4e7678e750d6d47737dbe68cd173e
