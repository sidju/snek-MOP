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
  15              		.file	"keypad.c"
  16              		.text
  17              	.Ltext0:
  18              		.cfi_sections	.debug_frame
  19              		.align	2
  20              		.global	keypad_init
  21              		.code	16
  22              		.thumb_func
  24              	keypad_init:
  25              	.LFB0:
  26              		.file 1 "C:/Users/sid/Documents/snek/snek-MOP/keypad.c"
   1:C:/Users/sid/Documents/snek/snek-MOP\keypad.c **** #include "keypad.h"
   2:C:/Users/sid/Documents/snek/snek-MOP\keypad.c **** 
   3:C:/Users/sid/Documents/snek/snek-MOP\keypad.c **** /*vi konfigurerar port D genom att skriva 0x55005555 till moder.
   4:C:/Users/sid/Documents/snek/snek-MOP\keypad.c ****  * Minst signifikanta 8 bitarna är utpinnar (sista 5555) kopplade till en display.
   5:C:/Users/sid/Documents/snek/snek-MOP\keypad.c ****  * Mest signifikanta bitar är 4 in- och 4 utpinnar kopplade till ett tangentbord (5500)*/
   6:C:/Users/sid/Documents/snek/snek-MOP\keypad.c ****      void keypad_init(void)
   7:C:/Users/sid/Documents/snek/snek-MOP\keypad.c **** {
  27              		.loc 1 7 0
  28              		.cfi_startproc
  29 0000 80B5     		push	{r7, lr}
  30              		.cfi_def_cfa_offset 8
  31              		.cfi_offset 7, -8
  32              		.cfi_offset 14, -4
  33 0002 84B0     		sub	sp, sp, #16
  34              		.cfi_def_cfa_offset 24
  35 0004 00AF     		add	r7, sp, #0
  36              		.cfi_def_cfa_register 7
   8:C:/Users/sid/Documents/snek/snek-MOP\keypad.c ****     const uint32_t Kbd_Disp_pinmode = 0x55000000; 
  37              		.loc 1 8 0
  38 0006 AA23     		movs	r3, #170
  39 0008 DB05     		lsls	r3, r3, #23
  40 000a FB60     		str	r3, [r7, #12]
   9:C:/Users/sid/Documents/snek/snek-MOP\keypad.c ****     const uint16_t Kbd_Disp_otype = 0x0000;       /*alla pinnar ställs som pushpull*/
  41              		.loc 1 9 0
  42 000c 0A23     		movs	r3, #10
  43 000e FB18     		adds	r3, r7, r3
  44 0010 0022     		movs	r2, #0
  45 0012 1A80     		strh	r2, [r3]
  10:C:/Users/sid/Documents/snek/snek-MOP\keypad.c ****     const uint32_t Kbd_Disp_pupd = 0x00aa0000;    /*inpinnar från kolumnerna pulluppulldow*/
  46              		.loc 1 10 0
  47 0014 AA23     		movs	r3, #170
  48 0016 1B04     		lsls	r3, r3, #16
  49 0018 7B60     		str	r3, [r7, #4]
  11:C:/Users/sid/Documents/snek/snek-MOP\keypad.c **** 
  12:C:/Users/sid/Documents/snek/snek-MOP\keypad.c ****     GPIO_D.moder = Kbd_Disp_pinmode;     /*skrivning*/
  50              		.loc 1 12 0
  51 001a 074B     		ldr	r3, .L2
  52 001c FA68     		ldr	r2, [r7, #12]
  53 001e 1A60     		str	r2, [r3]
  13:C:/Users/sid/Documents/snek/snek-MOP\keypad.c ****     GPIO_D.otyper = Kbd_Disp_otype;
  54              		.loc 1 13 0
  55 0020 054A     		ldr	r2, .L2
  56 0022 0A23     		movs	r3, #10
  57 0024 FB18     		adds	r3, r7, r3
  58 0026 1B88     		ldrh	r3, [r3]
  59 0028 9380     		strh	r3, [r2, #4]
  14:C:/Users/sid/Documents/snek/snek-MOP\keypad.c ****     GPIO_D.pupdr = Kbd_Disp_pupd;
  60              		.loc 1 14 0
  61 002a 034B     		ldr	r3, .L2
  62 002c 7A68     		ldr	r2, [r7, #4]
  63 002e DA60     		str	r2, [r3, #12]
  15:C:/Users/sid/Documents/snek/snek-MOP\keypad.c **** 
  16:C:/Users/sid/Documents/snek/snek-MOP\keypad.c **** }
  64              		.loc 1 16 0
  65 0030 C046     		nop
  66 0032 BD46     		mov	sp, r7
  67 0034 04B0     		add	sp, sp, #16
  68              		@ sp needed
  69 0036 80BD     		pop	{r7, pc}
  70              	.L3:
  71              		.align	2
  72              	.L2:
  73 0038 000C0240 		.word	1073875968
  74              		.cfi_endproc
  75              	.LFE0:
  77              		.align	2
  78              		.global	kbd_activate
  79              		.code	16
  80              		.thumb_func
  82              	kbd_activate:
  83              	.LFB1:
  17:C:/Users/sid/Documents/snek/snek-MOP\keypad.c **** 
  18:C:/Users/sid/Documents/snek/snek-MOP\keypad.c **** /*den aktiverar en rad, sätt spänning på "kablarna". Row är ett värde som kan vara 1,2,3,4 ell
  19:C:/Users/sid/Documents/snek/snek-MOP\keypad.c **** void kbd_activate(uint32_t row)
  20:C:/Users/sid/Documents/snek/snek-MOP\keypad.c **** {
  84              		.loc 1 20 0
  85              		.cfi_startproc
  86 003c 80B5     		push	{r7, lr}
  87              		.cfi_def_cfa_offset 8
  88              		.cfi_offset 7, -8
  89              		.cfi_offset 14, -4
  90 003e 84B0     		sub	sp, sp, #16
  91              		.cfi_def_cfa_offset 24
  92 0040 00AF     		add	r7, sp, #0
  93              		.cfi_def_cfa_register 7
  94 0042 7860     		str	r0, [r7, #4]
  21:C:/Users/sid/Documents/snek/snek-MOP\keypad.c ****     if (row < 1 || row > 4) return;
  95              		.loc 1 21 0
  96 0044 7B68     		ldr	r3, [r7, #4]
  97 0046 002B     		cmp	r3, #0
  98 0048 1AD0     		beq	.L8
  99              		.loc 1 21 0 is_stmt 0 discriminator 1
 100 004a 7B68     		ldr	r3, [r7, #4]
 101 004c 042B     		cmp	r3, #4
 102 004e 17D8     		bhi	.L8
  22:C:/Users/sid/Documents/snek/snek-MOP\keypad.c ****     
  23:C:/Users/sid/Documents/snek/snek-MOP\keypad.c ****     uint32_t pattern = (1 << (3 + row));    /* row = 1 : ettställ bit 4 */
 103              		.loc 1 23 0 is_stmt 1
 104 0050 7B68     		ldr	r3, [r7, #4]
 105 0052 0333     		adds	r3, r3, #3
 106 0054 0122     		movs	r2, #1
 107 0056 9A40     		lsls	r2, r2, r3
 108 0058 1300     		movs	r3, r2
 109 005a FB60     		str	r3, [r7, #12]
  24:C:/Users/sid/Documents/snek/snek-MOP\keypad.c ****     
  25:C:/Users/sid/Documents/snek/snek-MOP\keypad.c ****     GPIO_D.odr_high &= 0x0f;        /* Skriver ingenting till IN-pinnarna! */
 110              		.loc 1 25 0
 111 005c 0A4A     		ldr	r2, .L9
 112 005e 0A4B     		ldr	r3, .L9
 113 0060 5B7D     		ldrb	r3, [r3, #21]
 114 0062 DBB2     		uxtb	r3, r3
 115 0064 0F21     		movs	r1, #15
 116 0066 0B40     		ands	r3, r1
 117 0068 DBB2     		uxtb	r3, r3
 118 006a 5375     		strb	r3, [r2, #21]
  26:C:/Users/sid/Documents/snek/snek-MOP\keypad.c ****     GPIO_D.odr_high |= pattern;
 119              		.loc 1 26 0
 120 006c 0649     		ldr	r1, .L9
 121 006e 064B     		ldr	r3, .L9
 122 0070 5B7D     		ldrb	r3, [r3, #21]
 123 0072 DAB2     		uxtb	r2, r3
 124 0074 FB68     		ldr	r3, [r7, #12]
 125 0076 DBB2     		uxtb	r3, r3
 126 0078 1343     		orrs	r3, r2
 127 007a DBB2     		uxtb	r3, r3
 128 007c 4B75     		strb	r3, [r1, #21]
 129 007e 00E0     		b	.L4
 130              	.L8:
  21:C:/Users/sid/Documents/snek/snek-MOP\keypad.c ****     
 131              		.loc 1 21 0
 132 0080 C046     		nop
 133              	.L4:
  27:C:/Users/sid/Documents/snek/snek-MOP\keypad.c **** }
 134              		.loc 1 27 0
 135 0082 BD46     		mov	sp, r7
 136 0084 04B0     		add	sp, sp, #16
 137              		@ sp needed
 138 0086 80BD     		pop	{r7, pc}
 139              	.L10:
 140              		.align	2
 141              	.L9:
 142 0088 000C0240 		.word	1073875968
 143              		.cfi_endproc
 144              	.LFE1:
 146              		.align	2
 147              		.global	kbd_col
 148              		.code	16
 149              		.thumb_func
 151              	kbd_col:
 152              	.LFB2:
  28:C:/Users/sid/Documents/snek/snek-MOP\keypad.c **** 
  29:C:/Users/sid/Documents/snek/snek-MOP\keypad.c **** /*läsa av om någon knapp på den aktiva raden är nertrykt */
  30:C:/Users/sid/Documents/snek/snek-MOP\keypad.c **** int kbd_col (void)
  31:C:/Users/sid/Documents/snek/snek-MOP\keypad.c **** {
 153              		.loc 1 31 0
 154              		.cfi_startproc
 155 008c 80B5     		push	{r7, lr}
 156              		.cfi_def_cfa_offset 8
 157              		.cfi_offset 7, -8
 158              		.cfi_offset 14, -4
 159 008e 82B0     		sub	sp, sp, #8
 160              		.cfi_def_cfa_offset 16
 161 0090 00AF     		add	r7, sp, #0
 162              		.cfi_def_cfa_register 7
  32:C:/Users/sid/Documents/snek/snek-MOP\keypad.c ****     uint8_t c = GPIO_D.idr_high; 
 163              		.loc 1 32 0
 164 0092 124A     		ldr	r2, .L17
 165 0094 FB1D     		adds	r3, r7, #7
 166 0096 527C     		ldrb	r2, [r2, #17]
 167 0098 1A70     		strb	r2, [r3]
  33:C:/Users/sid/Documents/snek/snek-MOP\keypad.c ****     if (c & 0x08) return 4;
 168              		.loc 1 33 0
 169 009a FB1D     		adds	r3, r7, #7
 170 009c 1B78     		ldrb	r3, [r3]
 171 009e 0822     		movs	r2, #8
 172 00a0 1340     		ands	r3, r2
 173 00a2 01D0     		beq	.L12
 174              		.loc 1 33 0 is_stmt 0 discriminator 1
 175 00a4 0423     		movs	r3, #4
 176 00a6 15E0     		b	.L13
 177              	.L12:
  34:C:/Users/sid/Documents/snek/snek-MOP\keypad.c ****     if (c & 0x04) return 3;
 178              		.loc 1 34 0 is_stmt 1
 179 00a8 FB1D     		adds	r3, r7, #7
 180 00aa 1B78     		ldrb	r3, [r3]
 181 00ac 0422     		movs	r2, #4
 182 00ae 1340     		ands	r3, r2
 183 00b0 01D0     		beq	.L14
 184              		.loc 1 34 0 is_stmt 0 discriminator 1
 185 00b2 0323     		movs	r3, #3
 186 00b4 0EE0     		b	.L13
 187              	.L14:
  35:C:/Users/sid/Documents/snek/snek-MOP\keypad.c ****     if (c & 0x02) return 2; 
 188              		.loc 1 35 0 is_stmt 1
 189 00b6 FB1D     		adds	r3, r7, #7
 190 00b8 1B78     		ldrb	r3, [r3]
 191 00ba 0222     		movs	r2, #2
 192 00bc 1340     		ands	r3, r2
 193 00be 01D0     		beq	.L15
 194              		.loc 1 35 0 is_stmt 0 discriminator 1
 195 00c0 0223     		movs	r3, #2
 196 00c2 07E0     		b	.L13
 197              	.L15:
  36:C:/Users/sid/Documents/snek/snek-MOP\keypad.c ****     if (c & 0x01) return 1; 
 198              		.loc 1 36 0 is_stmt 1
 199 00c4 FB1D     		adds	r3, r7, #7
 200 00c6 1B78     		ldrb	r3, [r3]
 201 00c8 0122     		movs	r2, #1
 202 00ca 1340     		ands	r3, r2
 203 00cc 01D0     		beq	.L16
 204              		.loc 1 36 0 is_stmt 0 discriminator 1
 205 00ce 0123     		movs	r3, #1
 206 00d0 00E0     		b	.L13
 207              	.L16:
  37:C:/Users/sid/Documents/snek/snek-MOP\keypad.c ****     return 0; 
 208              		.loc 1 37 0 is_stmt 1
 209 00d2 0023     		movs	r3, #0
 210              	.L13:
  38:C:/Users/sid/Documents/snek/snek-MOP\keypad.c **** }
 211              		.loc 1 38 0
 212 00d4 1800     		movs	r0, r3
 213 00d6 BD46     		mov	sp, r7
 214 00d8 02B0     		add	sp, sp, #8
 215              		@ sp needed
 216 00da 80BD     		pop	{r7, pc}
 217              	.L18:
 218              		.align	2
 219              	.L17:
 220 00dc 000C0240 		.word	1073875968
 221              		.cfi_endproc
 222              	.LFE2:
 224              		.section	.rodata
 225              		.align	2
 228              	Key:
 229 0000 01       		.byte	1
 230 0001 02       		.byte	2
 231 0002 03       		.byte	3
 232 0003 0A       		.byte	10
 233 0004 04       		.byte	4
 234 0005 05       		.byte	5
 235 0006 06       		.byte	6
 236 0007 0B       		.byte	11
 237 0008 07       		.byte	7
 238 0009 08       		.byte	8
 239 000a 09       		.byte	9
 240 000b 0C       		.byte	12
 241 000c 0E       		.byte	14
 242 000d 00       		.byte	0
 243 000e 0F       		.byte	15
 244 000f 0D       		.byte	13
 245              		.text
 246              		.align	2
 247              		.global	Keyb
 248              		.code	16
 249              		.thumb_func
 251              	Keyb:
 252              	.LFB3:
  39:C:/Users/sid/Documents/snek/snek-MOP\keypad.c **** 
  40:C:/Users/sid/Documents/snek/snek-MOP\keypad.c **** /*array med tangentkoder (1,2,3,A,4,5,6,B...) som i figuren*/
  41:C:/Users/sid/Documents/snek/snek-MOP\keypad.c **** static const uint8_t Key[]={ 1,2,3,0xa,4,5,6,0xb,7,8,9,0xc,0xe,0,0xf,0xd };
  42:C:/Users/sid/Documents/snek/snek-MOP\keypad.c **** 
  43:C:/Users/sid/Documents/snek/snek-MOP\keypad.c **** /*huvudfunktionen för tangentbord*/
  44:C:/Users/sid/Documents/snek/snek-MOP\keypad.c **** uint8_t Keyb (void)
  45:C:/Users/sid/Documents/snek/snek-MOP\keypad.c **** {
 253              		.loc 1 45 0
 254              		.cfi_startproc
 255 00e0 80B5     		push	{r7, lr}
 256              		.cfi_def_cfa_offset 8
 257              		.cfi_offset 7, -8
 258              		.cfi_offset 14, -4
 259 00e2 82B0     		sub	sp, sp, #8
 260              		.cfi_def_cfa_offset 16
 261 00e4 00AF     		add	r7, sp, #0
 262              		.cfi_def_cfa_register 7
  46:C:/Users/sid/Documents/snek/snek-MOP\keypad.c ****     uint32_t row, col; 
  47:C:/Users/sid/Documents/snek/snek-MOP\keypad.c ****     
  48:C:/Users/sid/Documents/snek/snek-MOP\keypad.c ****     /*loopa igenom raderna. Vi börjar med rad 1*/
  49:C:/Users/sid/Documents/snek/snek-MOP\keypad.c ****     for(row=1; row<= 4; row ++)
 263              		.loc 1 49 0
 264 00e6 0123     		movs	r3, #1
 265 00e8 7B60     		str	r3, [r7, #4]
 266 00ea 1EE0     		b	.L20
 267              	.L23:
  50:C:/Users/sid/Documents/snek/snek-MOP\keypad.c ****     {
  51:C:/Users/sid/Documents/snek/snek-MOP\keypad.c ****         /*Vi skickar in rad i funktionen som ska aktivera den rad*/
  52:C:/Users/sid/Documents/snek/snek-MOP\keypad.c ****         kbd_activate(row); 
 268              		.loc 1 52 0
 269 00ec 7B68     		ldr	r3, [r7, #4]
 270 00ee 1800     		movs	r0, r3
 271 00f0 FFF7FEFF 		bl	kbd_activate
  53:C:/Users/sid/Documents/snek/snek-MOP\keypad.c ****         col = kbd_col();
 272              		.loc 1 53 0
 273 00f4 FFF7FEFF 		bl	kbd_col
 274 00f8 0300     		movs	r3, r0
 275 00fa 3B60     		str	r3, [r7]
  54:C:/Users/sid/Documents/snek/snek-MOP\keypad.c ****         
  55:C:/Users/sid/Documents/snek/snek-MOP\keypad.c ****         /*kolla kolumn*/
  56:C:/Users/sid/Documents/snek/snek-MOP\keypad.c ****         if (col !=0)
 276              		.loc 1 56 0
 277 00fc 3B68     		ldr	r3, [r7]
 278 00fe 002B     		cmp	r3, #0
 279 0100 0DD0     		beq	.L21
  57:C:/Users/sid/Documents/snek/snek-MOP\keypad.c ****         {
  58:C:/Users/sid/Documents/snek/snek-MOP\keypad.c ****             kbd_activate(0);
 280              		.loc 1 58 0
 281 0102 0020     		movs	r0, #0
 282 0104 FFF7FEFF 		bl	kbd_activate
  59:C:/Users/sid/Documents/snek/snek-MOP\keypad.c ****             return Key [4*(row-1)+(col-1)];   /*beräkna index för att välja rätt knapp*/
 283              		.loc 1 59 0
 284 0108 7B68     		ldr	r3, [r7, #4]
 285 010a 0C4A     		ldr	r2, .L24
 286 010c 9446     		mov	ip, r2
 287 010e 6344     		add	r3, r3, ip
 288 0110 9A00     		lsls	r2, r3, #2
 289 0112 3B68     		ldr	r3, [r7]
 290 0114 D318     		adds	r3, r2, r3
 291 0116 013B     		subs	r3, r3, #1
 292 0118 094A     		ldr	r2, .L24+4
 293 011a D35C     		ldrb	r3, [r2, r3]
 294 011c 09E0     		b	.L22
 295              	.L21:
  60:C:/Users/sid/Documents/snek/snek-MOP\keypad.c ****         }
  61:C:/Users/sid/Documents/snek/snek-MOP\keypad.c ****         kbd_activate (0); 
 296              		.loc 1 61 0 discriminator 2
 297 011e 0020     		movs	r0, #0
 298 0120 FFF7FEFF 		bl	kbd_activate
  49:C:/Users/sid/Documents/snek/snek-MOP\keypad.c ****     {
 299              		.loc 1 49 0 discriminator 2
 300 0124 7B68     		ldr	r3, [r7, #4]
 301 0126 0133     		adds	r3, r3, #1
 302 0128 7B60     		str	r3, [r7, #4]
 303              	.L20:
  49:C:/Users/sid/Documents/snek/snek-MOP\keypad.c ****     {
 304              		.loc 1 49 0 is_stmt 0 discriminator 1
 305 012a 7B68     		ldr	r3, [r7, #4]
 306 012c 042B     		cmp	r3, #4
 307 012e DDD9     		bls	.L23
  62:C:/Users/sid/Documents/snek/snek-MOP\keypad.c ****     }
  63:C:/Users/sid/Documents/snek/snek-MOP\keypad.c ****     return 0xff; 
 308              		.loc 1 63 0 is_stmt 1
 309 0130 FF23     		movs	r3, #255
 310              	.L22:
  64:C:/Users/sid/Documents/snek/snek-MOP\keypad.c **** }...
 311              		.loc 1 64 0
 312 0132 1800     		movs	r0, r3
 313 0134 BD46     		mov	sp, r7
 314 0136 02B0     		add	sp, sp, #8
 315              		@ sp needed
 316 0138 80BD     		pop	{r7, pc}
 317              	.L25:
 318 013a C046     		.align	2
 319              	.L24:
 320 013c FFFFFF3F 		.word	1073741823
 321 0140 00000000 		.word	Key
 322              		.cfi_endproc
 323              	.LFE3:
 325              	.Letext0:
 326              		.file 2 "C:/Users/sid/Documents/snek/snek-MOP/gpio.h"
