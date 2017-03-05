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
  26              		.file 1 "/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/keypad.c"
   1:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/keypad.c **** #include "keypad.h"
   2:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/keypad.c **** 
   3:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/keypad.c **** /*vi konfigurerar port D genom att skriva 0x55005555 till moder.
   4:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/keypad.c ****  * Minst signifikanta 8 bitarna är utpinnar (sista 5555) kopplade till en display.
   5:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/keypad.c ****  * Mest signifikanta bitar är 4 in- och 4 utpinnar kopplade till ett tangentbord (5500)*/
   6:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/keypad.c ****      void keypad_init(void)
   7:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/keypad.c **** {
  27              		.loc 1 7 0
  28              		.cfi_startproc
  29              		@ args = 0, pretend = 0, frame = 16
  30              		@ frame_needed = 1, uses_anonymous_args = 0
  31 0000 80B5     		push	{r7, lr}
  32              		.cfi_def_cfa_offset 8
  33              		.cfi_offset 7, -8
  34              		.cfi_offset 14, -4
  35 0002 84B0     		sub	sp, sp, #16
  36              		.cfi_def_cfa_offset 24
  37 0004 00AF     		add	r7, sp, #0
  38              		.cfi_def_cfa_register 7
   8:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/keypad.c ****     const uint32_t Kbd_Disp_pinmode = 0x55000000; 
  39              		.loc 1 8 0
  40 0006 AA23     		movs	r3, #170
  41 0008 DB05     		lsls	r3, r3, #23
  42 000a FB60     		str	r3, [r7, #12]
   9:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/keypad.c ****     const uint16_t Kbd_Disp_otype = 0x0000;       /*alla pinnar ställs som pushpull*/
  43              		.loc 1 9 0
  44 000c 0A23     		movs	r3, #10
  45 000e FB18     		adds	r3, r7, r3
  46 0010 0022     		movs	r2, #0
  47 0012 1A80     		strh	r2, [r3]
  10:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/keypad.c ****     const uint32_t Kbd_Disp_pupd = 0x00aa0000;    /*inpinnar från kolumnerna pulluppulldow*/
  48              		.loc 1 10 0
  49 0014 AA23     		movs	r3, #170
  50 0016 1B04     		lsls	r3, r3, #16
  51 0018 7B60     		str	r3, [r7, #4]
  11:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/keypad.c **** 
  12:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/keypad.c ****     GPIO_D.moder = Kbd_Disp_pinmode;     /*skrivning*/
  52              		.loc 1 12 0
  53 001a 074B     		ldr	r3, .L2
  54 001c FA68     		ldr	r2, [r7, #12]
  55 001e 1A60     		str	r2, [r3]
  13:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/keypad.c ****     GPIO_D.otyper = Kbd_Disp_otype;
  56              		.loc 1 13 0
  57 0020 054A     		ldr	r2, .L2
  58 0022 0A23     		movs	r3, #10
  59 0024 FB18     		adds	r3, r7, r3
  60 0026 1B88     		ldrh	r3, [r3]
  61 0028 9380     		strh	r3, [r2, #4]
  14:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/keypad.c ****     GPIO_D.pupdr = Kbd_Disp_pupd;
  62              		.loc 1 14 0
  63 002a 034B     		ldr	r3, .L2
  64 002c 7A68     		ldr	r2, [r7, #4]
  65 002e DA60     		str	r2, [r3, #12]
  15:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/keypad.c **** 
  16:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/keypad.c **** }
  66              		.loc 1 16 0
  67 0030 C046     		nop
  68 0032 BD46     		mov	sp, r7
  69 0034 04B0     		add	sp, sp, #16
  70              		@ sp needed
  71 0036 80BD     		pop	{r7, pc}
  72              	.L3:
  73              		.align	2
  74              	.L2:
  75 0038 000C0240 		.word	1073875968
  76              		.cfi_endproc
  77              	.LFE0:
  79              		.align	2
  80              		.global	kbd_activate
  81              		.code	16
  82              		.thumb_func
  84              	kbd_activate:
  85              	.LFB1:
  17:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/keypad.c **** 
  18:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/keypad.c **** /*den aktiverar en rad, sätt spänning på "kablarna". Row är ett värde som kan vara 1,2,3,4 ell
  19:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/keypad.c **** void kbd_activate(uint32_t row)
  20:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/keypad.c **** {
  86              		.loc 1 20 0
  87              		.cfi_startproc
  88              		@ args = 0, pretend = 0, frame = 16
  89              		@ frame_needed = 1, uses_anonymous_args = 0
  90 003c 80B5     		push	{r7, lr}
  91              		.cfi_def_cfa_offset 8
  92              		.cfi_offset 7, -8
  93              		.cfi_offset 14, -4
  94 003e 84B0     		sub	sp, sp, #16
  95              		.cfi_def_cfa_offset 24
  96 0040 00AF     		add	r7, sp, #0
  97              		.cfi_def_cfa_register 7
  98 0042 7860     		str	r0, [r7, #4]
  21:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/keypad.c ****     if (row < 1 || row > 4) return;
  99              		.loc 1 21 0
 100 0044 7B68     		ldr	r3, [r7, #4]
 101 0046 002B     		cmp	r3, #0
 102 0048 1AD0     		beq	.L8
 103              		.loc 1 21 0 is_stmt 0 discriminator 1
 104 004a 7B68     		ldr	r3, [r7, #4]
 105 004c 042B     		cmp	r3, #4
 106 004e 17D8     		bhi	.L8
  22:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/keypad.c ****     
  23:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/keypad.c ****     uint32_t pattern = (1 << (3 + row));    /* row = 1 : ettställ bit 4 */
 107              		.loc 1 23 0 is_stmt 1
 108 0050 7B68     		ldr	r3, [r7, #4]
 109 0052 0333     		adds	r3, r3, #3
 110 0054 0122     		movs	r2, #1
 111 0056 9A40     		lsls	r2, r2, r3
 112 0058 1300     		movs	r3, r2
 113 005a FB60     		str	r3, [r7, #12]
  24:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/keypad.c ****     
  25:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/keypad.c ****     GPIO_D.odr_high &= 0x0f;        /* Skriver ingenting till IN-pinnarna! */
 114              		.loc 1 25 0
 115 005c 0A4A     		ldr	r2, .L9
 116 005e 0A4B     		ldr	r3, .L9
 117 0060 5B7D     		ldrb	r3, [r3, #21]
 118 0062 DBB2     		uxtb	r3, r3
 119 0064 0F21     		movs	r1, #15
 120 0066 0B40     		ands	r3, r1
 121 0068 DBB2     		uxtb	r3, r3
 122 006a 5375     		strb	r3, [r2, #21]
  26:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/keypad.c ****     GPIO_D.odr_high |= pattern;
 123              		.loc 1 26 0
 124 006c 0649     		ldr	r1, .L9
 125 006e 064B     		ldr	r3, .L9
 126 0070 5B7D     		ldrb	r3, [r3, #21]
 127 0072 DAB2     		uxtb	r2, r3
 128 0074 FB68     		ldr	r3, [r7, #12]
 129 0076 DBB2     		uxtb	r3, r3
 130 0078 1343     		orrs	r3, r2
 131 007a DBB2     		uxtb	r3, r3
 132 007c 4B75     		strb	r3, [r1, #21]
 133 007e 00E0     		b	.L4
 134              	.L8:
  21:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/keypad.c ****     
 135              		.loc 1 21 0
 136 0080 C046     		nop
 137              	.L4:
  27:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/keypad.c **** }
 138              		.loc 1 27 0
 139 0082 BD46     		mov	sp, r7
 140 0084 04B0     		add	sp, sp, #16
 141              		@ sp needed
 142 0086 80BD     		pop	{r7, pc}
 143              	.L10:
 144              		.align	2
 145              	.L9:
 146 0088 000C0240 		.word	1073875968
 147              		.cfi_endproc
 148              	.LFE1:
 150              		.align	2
 151              		.global	kbd_col
 152              		.code	16
 153              		.thumb_func
 155              	kbd_col:
 156              	.LFB2:
  28:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/keypad.c **** 
  29:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/keypad.c **** /*läsa av om någon knapp på den aktiva raden är nertrykt */
  30:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/keypad.c **** int kbd_col (void)
  31:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/keypad.c **** {
 157              		.loc 1 31 0
 158              		.cfi_startproc
 159              		@ args = 0, pretend = 0, frame = 8
 160              		@ frame_needed = 1, uses_anonymous_args = 0
 161 008c 80B5     		push	{r7, lr}
 162              		.cfi_def_cfa_offset 8
 163              		.cfi_offset 7, -8
 164              		.cfi_offset 14, -4
 165 008e 82B0     		sub	sp, sp, #8
 166              		.cfi_def_cfa_offset 16
 167 0090 00AF     		add	r7, sp, #0
 168              		.cfi_def_cfa_register 7
  32:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/keypad.c ****     uint8_t c = GPIO_D.idr_high; 
 169              		.loc 1 32 0
 170 0092 124A     		ldr	r2, .L17
 171 0094 FB1D     		adds	r3, r7, #7
 172 0096 527C     		ldrb	r2, [r2, #17]
 173 0098 1A70     		strb	r2, [r3]
  33:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/keypad.c ****     if (c & 0x08) return 4;
 174              		.loc 1 33 0
 175 009a FB1D     		adds	r3, r7, #7
 176 009c 1B78     		ldrb	r3, [r3]
 177 009e 0822     		movs	r2, #8
 178 00a0 1340     		ands	r3, r2
 179 00a2 01D0     		beq	.L12
 180              		.loc 1 33 0 is_stmt 0 discriminator 1
 181 00a4 0423     		movs	r3, #4
 182 00a6 15E0     		b	.L13
 183              	.L12:
  34:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/keypad.c ****     if (c & 0x04) return 3;
 184              		.loc 1 34 0 is_stmt 1
 185 00a8 FB1D     		adds	r3, r7, #7
 186 00aa 1B78     		ldrb	r3, [r3]
 187 00ac 0422     		movs	r2, #4
 188 00ae 1340     		ands	r3, r2
 189 00b0 01D0     		beq	.L14
 190              		.loc 1 34 0 is_stmt 0 discriminator 1
 191 00b2 0323     		movs	r3, #3
 192 00b4 0EE0     		b	.L13
 193              	.L14:
  35:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/keypad.c ****     if (c & 0x02) return 2; 
 194              		.loc 1 35 0 is_stmt 1
 195 00b6 FB1D     		adds	r3, r7, #7
 196 00b8 1B78     		ldrb	r3, [r3]
 197 00ba 0222     		movs	r2, #2
 198 00bc 1340     		ands	r3, r2
 199 00be 01D0     		beq	.L15
 200              		.loc 1 35 0 is_stmt 0 discriminator 1
 201 00c0 0223     		movs	r3, #2
 202 00c2 07E0     		b	.L13
 203              	.L15:
  36:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/keypad.c ****     if (c & 0x01) return 1; 
 204              		.loc 1 36 0 is_stmt 1
 205 00c4 FB1D     		adds	r3, r7, #7
 206 00c6 1B78     		ldrb	r3, [r3]
 207 00c8 0122     		movs	r2, #1
 208 00ca 1340     		ands	r3, r2
 209 00cc 01D0     		beq	.L16
 210              		.loc 1 36 0 is_stmt 0 discriminator 1
 211 00ce 0123     		movs	r3, #1
 212 00d0 00E0     		b	.L13
 213              	.L16:
  37:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/keypad.c ****     return 0; 
 214              		.loc 1 37 0 is_stmt 1
 215 00d2 0023     		movs	r3, #0
 216              	.L13:
  38:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/keypad.c **** }
 217              		.loc 1 38 0
 218 00d4 1800     		movs	r0, r3
 219 00d6 BD46     		mov	sp, r7
 220 00d8 02B0     		add	sp, sp, #8
 221              		@ sp needed
 222 00da 80BD     		pop	{r7, pc}
 223              	.L18:
 224              		.align	2
 225              	.L17:
 226 00dc 000C0240 		.word	1073875968
 227              		.cfi_endproc
 228              	.LFE2:
 230              		.section	.rodata
 231              		.align	2
 234              	Key:
 235 0000 01       		.byte	1
 236 0001 02       		.byte	2
 237 0002 03       		.byte	3
 238 0003 0A       		.byte	10
 239 0004 04       		.byte	4
 240 0005 05       		.byte	5
 241 0006 06       		.byte	6
 242 0007 0B       		.byte	11
 243 0008 07       		.byte	7
 244 0009 08       		.byte	8
 245 000a 09       		.byte	9
 246 000b 0C       		.byte	12
 247 000c 0E       		.byte	14
 248 000d 00       		.byte	0
 249 000e 0F       		.byte	15
 250 000f 0D       		.byte	13
 251              		.text
 252              		.align	2
 253              		.global	Keyb
 254              		.code	16
 255              		.thumb_func
 257              	Keyb:
 258              	.LFB3:
  39:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/keypad.c **** 
  40:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/keypad.c **** /*array med tangentkoder (1,2,3,A,4,5,6,B...) som i figuren*/
  41:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/keypad.c **** static const uint8_t Key[]={ 1,2,3,0xa,4,5,6,0xb,7,8,9,0xc,0xe,0,0xf,0xd };
  42:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/keypad.c **** 
  43:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/keypad.c **** /*huvudfunktionen för tangentbord*/
  44:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/keypad.c **** uint8_t Keyb (void)
  45:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/keypad.c **** {
 259              		.loc 1 45 0
 260              		.cfi_startproc
 261              		@ args = 0, pretend = 0, frame = 8
 262              		@ frame_needed = 1, uses_anonymous_args = 0
 263 00e0 80B5     		push	{r7, lr}
 264              		.cfi_def_cfa_offset 8
 265              		.cfi_offset 7, -8
 266              		.cfi_offset 14, -4
 267 00e2 82B0     		sub	sp, sp, #8
 268              		.cfi_def_cfa_offset 16
 269 00e4 00AF     		add	r7, sp, #0
 270              		.cfi_def_cfa_register 7
  46:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/keypad.c ****     uint32_t row, col; 
  47:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/keypad.c ****     
  48:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/keypad.c ****     /*loopa igenom raderna. Vi börjar med rad 1*/
  49:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/keypad.c ****     for(row=1; row<= 4; row ++)
 271              		.loc 1 49 0
 272 00e6 0123     		movs	r3, #1
 273 00e8 7B60     		str	r3, [r7, #4]
 274 00ea 1EE0     		b	.L20
 275              	.L23:
  50:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/keypad.c ****     {
  51:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/keypad.c ****         /*Vi skickar in rad i funktionen som ska aktivera den rad*/
  52:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/keypad.c ****         kbd_activate(row); 
 276              		.loc 1 52 0
 277 00ec 7B68     		ldr	r3, [r7, #4]
 278 00ee 1800     		movs	r0, r3
 279 00f0 FFF7FEFF 		bl	kbd_activate
  53:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/keypad.c ****         col = kbd_col();
 280              		.loc 1 53 0
 281 00f4 FFF7FEFF 		bl	kbd_col
 282 00f8 0300     		movs	r3, r0
 283 00fa 3B60     		str	r3, [r7]
  54:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/keypad.c ****         
  55:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/keypad.c ****         /*kolla kolumn*/
  56:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/keypad.c ****         if (col !=0)
 284              		.loc 1 56 0
 285 00fc 3B68     		ldr	r3, [r7]
 286 00fe 002B     		cmp	r3, #0
 287 0100 0DD0     		beq	.L21
  57:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/keypad.c ****         {
  58:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/keypad.c ****             kbd_activate(0);
 288              		.loc 1 58 0
 289 0102 0020     		movs	r0, #0
 290 0104 FFF7FEFF 		bl	kbd_activate
  59:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/keypad.c ****             return Key [4*(row-1)+(col-1)];   /*beräkna index för att välja rätt knapp*/
 291              		.loc 1 59 0
 292 0108 7B68     		ldr	r3, [r7, #4]
 293 010a 0C4A     		ldr	r2, .L24
 294 010c 9446     		mov	ip, r2
 295 010e 6344     		add	r3, r3, ip
 296 0110 9A00     		lsls	r2, r3, #2
 297 0112 3B68     		ldr	r3, [r7]
 298 0114 D318     		adds	r3, r2, r3
 299 0116 013B     		subs	r3, r3, #1
 300 0118 094A     		ldr	r2, .L24+4
 301 011a D35C     		ldrb	r3, [r2, r3]
 302 011c 09E0     		b	.L22
 303              	.L21:
  60:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/keypad.c ****         }
  61:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/keypad.c ****         kbd_activate (0); 
 304              		.loc 1 61 0 discriminator 2
 305 011e 0020     		movs	r0, #0
 306 0120 FFF7FEFF 		bl	kbd_activate
  49:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/keypad.c ****     {
 307              		.loc 1 49 0 discriminator 2
 308 0124 7B68     		ldr	r3, [r7, #4]
 309 0126 0133     		adds	r3, r3, #1
 310 0128 7B60     		str	r3, [r7, #4]
 311              	.L20:
  49:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/keypad.c ****     {
 312              		.loc 1 49 0 is_stmt 0 discriminator 1
 313 012a 7B68     		ldr	r3, [r7, #4]
 314 012c 042B     		cmp	r3, #4
 315 012e DDD9     		bls	.L23
  62:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/keypad.c ****     }
  63:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/keypad.c ****     return 0xff; 
 316              		.loc 1 63 0 is_stmt 1
 317 0130 FF23     		movs	r3, #255
 318              	.L22:
  64:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/keypad.c **** }...
 319              		.loc 1 64 0
 320 0132 1800     		movs	r0, r3
 321 0134 BD46     		mov	sp, r7
 322 0136 02B0     		add	sp, sp, #8
 323              		@ sp needed
 324 0138 80BD     		pop	{r7, pc}
 325              	.L25:
 326 013a C046     		.align	2
 327              	.L24:
 328 013c FFFFFF3F 		.word	1073741823
 329 0140 00000000 		.word	Key
 330              		.cfi_endproc
 331              	.LFE3:
 333              	.Letext0:
 334              		.file 2 "/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/gpio.h"
