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
  30              	.LFB1:
  31              		.file 1 "/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c"
   1:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c **** /*
   2:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c **** * libMD407.c
   3:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c **** * MD407 library
   4:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c **** */
   5:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c **** 
   6:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c **** /* declarations goes to  'libMD407.h' */
   7:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c **** #include "libMD407.h"
   8:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c **** 
   9:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c **** /* Define variables here */
  10:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c **** static char* heap_end;
  11:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c **** 
  12:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c **** int _fstat(int file, struct stat* st)
  13:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c **** {
  32              		.loc 1 13 0
  33              		.cfi_startproc
  34              		@ args = 0, pretend = 0, frame = 8
  35              		@ frame_needed = 1, uses_anonymous_args = 0
  36 0000 80B5     		push	{r7, lr}
  37              		.cfi_def_cfa_offset 8
  38              		.cfi_offset 7, -8
  39              		.cfi_offset 14, -4
  40 0002 82B0     		sub	sp, sp, #8
  41              		.cfi_def_cfa_offset 16
  42 0004 00AF     		add	r7, sp, #0
  43              		.cfi_def_cfa_register 7
  44 0006 7860     		str	r0, [r7, #4]
  45 0008 3960     		str	r1, [r7]
  14:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c ****     st->st_mode = S_IFCHR;
  46              		.loc 1 14 0
  47 000a 3B68     		ldr	r3, [r7]
  48 000c 8022     		movs	r2, #128
  49 000e 9201     		lsls	r2, r2, #6
  50 0010 5A60     		str	r2, [r3, #4]
  15:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c ****     return 0;
  51              		.loc 1 15 0
  52 0012 0023     		movs	r3, #0
  16:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c **** }
  53              		.loc 1 16 0
  54 0014 1800     		movs	r0, r3
  55 0016 BD46     		mov	sp, r7
  56 0018 02B0     		add	sp, sp, #8
  57              		@ sp needed
  58 001a 80BD     		pop	{r7, pc}
  59              		.cfi_endproc
  60              	.LFE1:
  62              		.align	2
  63              		.global	_isatty
  64              		.code	16
  65              		.thumb_func
  67              	_isatty:
  68              	.LFB2:
  17:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c **** 
  18:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c **** int _isatty(int file)
  19:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c **** {
  69              		.loc 1 19 0
  70              		.cfi_startproc
  71              		@ args = 0, pretend = 0, frame = 8
  72              		@ frame_needed = 1, uses_anonymous_args = 0
  73 001c 80B5     		push	{r7, lr}
  74              		.cfi_def_cfa_offset 8
  75              		.cfi_offset 7, -8
  76              		.cfi_offset 14, -4
  77 001e 82B0     		sub	sp, sp, #8
  78              		.cfi_def_cfa_offset 16
  79 0020 00AF     		add	r7, sp, #0
  80              		.cfi_def_cfa_register 7
  81 0022 7860     		str	r0, [r7, #4]
  20:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c ****     return 1;
  82              		.loc 1 20 0
  83 0024 0123     		movs	r3, #1
  21:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c **** }
  84              		.loc 1 21 0
  85 0026 1800     		movs	r0, r3
  86 0028 BD46     		mov	sp, r7
  87 002a 02B0     		add	sp, sp, #8
  88              		@ sp needed
  89 002c 80BD     		pop	{r7, pc}
  90              		.cfi_endproc
  91              	.LFE2:
  93 002e C046     		.align	2
  94              		.global	_open
  95              		.code	16
  96              		.thumb_func
  98              	_open:
  99              	.LFB3:
  22:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c **** 
  23:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c **** int _open(const char* name, int flags, int mode)
  24:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c **** {
 100              		.loc 1 24 0
 101              		.cfi_startproc
 102              		@ args = 0, pretend = 0, frame = 16
 103              		@ frame_needed = 1, uses_anonymous_args = 0
 104 0030 80B5     		push	{r7, lr}
 105              		.cfi_def_cfa_offset 8
 106              		.cfi_offset 7, -8
 107              		.cfi_offset 14, -4
 108 0032 84B0     		sub	sp, sp, #16
 109              		.cfi_def_cfa_offset 24
 110 0034 00AF     		add	r7, sp, #0
 111              		.cfi_def_cfa_register 7
 112 0036 F860     		str	r0, [r7, #12]
 113 0038 B960     		str	r1, [r7, #8]
 114 003a 7A60     		str	r2, [r7, #4]
  25:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c ****     return -1;
 115              		.loc 1 25 0
 116 003c 0123     		movs	r3, #1
 117 003e 5B42     		rsbs	r3, r3, #0
  26:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c **** }
 118              		.loc 1 26 0
 119 0040 1800     		movs	r0, r3
 120 0042 BD46     		mov	sp, r7
 121 0044 04B0     		add	sp, sp, #16
 122              		@ sp needed
 123 0046 80BD     		pop	{r7, pc}
 124              		.cfi_endproc
 125              	.LFE3:
 127              		.align	2
 128              		.global	_close
 129              		.code	16
 130              		.thumb_func
 132              	_close:
 133              	.LFB4:
  27:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c **** 
  28:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c **** int _close(int file)
  29:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c **** {
 134              		.loc 1 29 0
 135              		.cfi_startproc
 136              		@ args = 0, pretend = 0, frame = 8
 137              		@ frame_needed = 1, uses_anonymous_args = 0
 138 0048 80B5     		push	{r7, lr}
 139              		.cfi_def_cfa_offset 8
 140              		.cfi_offset 7, -8
 141              		.cfi_offset 14, -4
 142 004a 82B0     		sub	sp, sp, #8
 143              		.cfi_def_cfa_offset 16
 144 004c 00AF     		add	r7, sp, #0
 145              		.cfi_def_cfa_register 7
 146 004e 7860     		str	r0, [r7, #4]
  30:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c ****     return -1;
 147              		.loc 1 30 0
 148 0050 0123     		movs	r3, #1
 149 0052 5B42     		rsbs	r3, r3, #0
  31:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c **** }
 150              		.loc 1 31 0
 151 0054 1800     		movs	r0, r3
 152 0056 BD46     		mov	sp, r7
 153 0058 02B0     		add	sp, sp, #8
 154              		@ sp needed
 155 005a 80BD     		pop	{r7, pc}
 156              		.cfi_endproc
 157              	.LFE4:
 159              		.align	2
 160              		.global	_lseek
 161              		.code	16
 162              		.thumb_func
 164              	_lseek:
 165              	.LFB5:
  32:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c **** 
  33:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c **** int _lseek(int file, int ptr, int dir)
  34:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c **** {
 166              		.loc 1 34 0
 167              		.cfi_startproc
 168              		@ args = 0, pretend = 0, frame = 16
 169              		@ frame_needed = 1, uses_anonymous_args = 0
 170 005c 80B5     		push	{r7, lr}
 171              		.cfi_def_cfa_offset 8
 172              		.cfi_offset 7, -8
 173              		.cfi_offset 14, -4
 174 005e 84B0     		sub	sp, sp, #16
 175              		.cfi_def_cfa_offset 24
 176 0060 00AF     		add	r7, sp, #0
 177              		.cfi_def_cfa_register 7
 178 0062 F860     		str	r0, [r7, #12]
 179 0064 B960     		str	r1, [r7, #8]
 180 0066 7A60     		str	r2, [r7, #4]
  35:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c ****     return 0;
 181              		.loc 1 35 0
 182 0068 0023     		movs	r3, #0
  36:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c **** }
 183              		.loc 1 36 0
 184 006a 1800     		movs	r0, r3
 185 006c BD46     		mov	sp, r7
 186 006e 04B0     		add	sp, sp, #16
 187              		@ sp needed
 188 0070 80BD     		pop	{r7, pc}
 189              		.cfi_endproc
 190              	.LFE5:
 192 0072 C046     		.align	2
 193              		.global	_write
 194              		.code	16
 195              		.thumb_func
 197              	_write:
 198              	.LFB6:
  37:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c **** 
  38:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c **** int _write(int file, char* ptr, int len)
  39:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c **** {
 199              		.loc 1 39 0
 200              		.cfi_startproc
 201              		@ args = 0, pretend = 0, frame = 24
 202              		@ frame_needed = 1, uses_anonymous_args = 0
 203 0074 80B5     		push	{r7, lr}
 204              		.cfi_def_cfa_offset 8
 205              		.cfi_offset 7, -8
 206              		.cfi_offset 14, -4
 207 0076 86B0     		sub	sp, sp, #24
 208              		.cfi_def_cfa_offset 32
 209 0078 00AF     		add	r7, sp, #0
 210              		.cfi_def_cfa_register 7
 211 007a F860     		str	r0, [r7, #12]
 212 007c B960     		str	r1, [r7, #8]
 213 007e 7A60     		str	r2, [r7, #4]
  40:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c ****     int todo;
  41:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c ****     for(todo = 0; todo < len; todo++) {
 214              		.loc 1 41 0
 215 0080 0023     		movs	r3, #0
 216 0082 7B61     		str	r3, [r7, #20]
 217 0084 09E0     		b	.L12
 218              	.L13:
  42:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c **** 		_outchar(*ptr++);
 219              		.loc 1 42 0 discriminator 3
 220 0086 BB68     		ldr	r3, [r7, #8]
 221 0088 5A1C     		adds	r2, r3, #1
 222 008a BA60     		str	r2, [r7, #8]
 223 008c 1B78     		ldrb	r3, [r3]
 224 008e 1800     		movs	r0, r3
 225 0090 FFF7FEFF 		bl	_outchar
  41:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c **** 		_outchar(*ptr++);
 226              		.loc 1 41 0 discriminator 3
 227 0094 7B69     		ldr	r3, [r7, #20]
 228 0096 0133     		adds	r3, r3, #1
 229 0098 7B61     		str	r3, [r7, #20]
 230              	.L12:
  41:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c **** 		_outchar(*ptr++);
 231              		.loc 1 41 0 is_stmt 0 discriminator 1
 232 009a 7A69     		ldr	r2, [r7, #20]
 233 009c 7B68     		ldr	r3, [r7, #4]
 234 009e 9A42     		cmp	r2, r3
 235 00a0 F1DB     		blt	.L13
  43:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c ****     }
  44:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c ****     return len;
 236              		.loc 1 44 0 is_stmt 1
 237 00a2 7B68     		ldr	r3, [r7, #4]
  45:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c **** }
 238              		.loc 1 45 0
 239 00a4 1800     		movs	r0, r3
 240 00a6 BD46     		mov	sp, r7
 241 00a8 06B0     		add	sp, sp, #24
 242              		@ sp needed
 243 00aa 80BD     		pop	{r7, pc}
 244              		.cfi_endproc
 245              	.LFE6:
 247              		.align	2
 248              		.global	_read
 249              		.code	16
 250              		.thumb_func
 252              	_read:
 253              	.LFB7:
  46:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c **** 
  47:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c **** int _read(int file, char* ptr, int len)
  48:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c **** {
 254              		.loc 1 48 0
 255              		.cfi_startproc
 256              		@ args = 0, pretend = 0, frame = 16
 257              		@ frame_needed = 1, uses_anonymous_args = 0
 258 00ac 80B5     		push	{r7, lr}
 259              		.cfi_def_cfa_offset 8
 260              		.cfi_offset 7, -8
 261              		.cfi_offset 14, -4
 262 00ae 84B0     		sub	sp, sp, #16
 263              		.cfi_def_cfa_offset 24
 264 00b0 00AF     		add	r7, sp, #0
 265              		.cfi_def_cfa_register 7
 266 00b2 F860     		str	r0, [r7, #12]
 267 00b4 B960     		str	r1, [r7, #8]
 268 00b6 7A60     		str	r2, [r7, #4]
  49:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c **** 	return 0;
 269              		.loc 1 49 0
 270 00b8 0023     		movs	r3, #0
  50:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c **** /*    int todo;
  51:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c **** 
  52:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c ****     if(len == 0)
  53:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c **** 		return 0;
  54:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c **** 
  55:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c ****     for(todo = 1; todo < len; todo++) {
  56:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c **** 		*ptr++ = _inchar();
  57:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c ****     }
  58:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c ****     return todo;*/
  59:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c **** }
 271              		.loc 1 59 0
 272 00ba 1800     		movs	r0, r3
 273 00bc BD46     		mov	sp, r7
 274 00be 04B0     		add	sp, sp, #16
 275              		@ sp needed
 276 00c0 80BD     		pop	{r7, pc}
 277              		.cfi_endproc
 278              	.LFE7:
 280 00c2 C046     		.align	2
 281              		.global	_sbrk
 282              		.code	16
 283              		.thumb_func
 285              	_sbrk:
 286              	.LFB8:
  60:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c **** 
  61:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c **** char* _sbrk(int incr)
  62:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c **** {
 287              		.loc 1 62 0
 288              		.cfi_startproc
 289              		@ args = 0, pretend = 0, frame = 16
 290              		@ frame_needed = 1, uses_anonymous_args = 0
 291 00c4 80B5     		push	{r7, lr}
 292              		.cfi_def_cfa_offset 8
 293              		.cfi_offset 7, -8
 294              		.cfi_offset 14, -4
 295 00c6 84B0     		sub	sp, sp, #16
 296              		.cfi_def_cfa_offset 24
 297 00c8 00AF     		add	r7, sp, #0
 298              		.cfi_def_cfa_register 7
 299 00ca 7860     		str	r0, [r7, #4]
  63:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c ****     char* prev_heap_end;
  64:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c **** 
  65:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c ****     if(heap_end == 0) {
 300              		.loc 1 65 0
 301 00cc 114B     		ldr	r3, .L21
 302 00ce 1B68     		ldr	r3, [r3]
 303 00d0 002B     		cmp	r3, #0
 304 00d2 02D1     		bne	.L18
  66:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c **** 		heap_end = &heap_low;
 305              		.loc 1 66 0
 306 00d4 0F4B     		ldr	r3, .L21
 307 00d6 104A     		ldr	r2, .L21+4
 308 00d8 1A60     		str	r2, [r3]
 309              	.L18:
  67:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c ****     }
  68:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c ****     prev_heap_end = heap_end;
 310              		.loc 1 68 0
 311 00da 0E4B     		ldr	r3, .L21
 312 00dc 1B68     		ldr	r3, [r3]
 313 00de FB60     		str	r3, [r7, #12]
  69:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c **** 
  70:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c ****     if(heap_end + incr > &heap_top) {
 314              		.loc 1 70 0
 315 00e0 0C4B     		ldr	r3, .L21
 316 00e2 1A68     		ldr	r2, [r3]
 317 00e4 7B68     		ldr	r3, [r7, #4]
 318 00e6 D218     		adds	r2, r2, r3
 319 00e8 0C4B     		ldr	r3, .L21+8
 320 00ea 9A42     		cmp	r2, r3
 321 00ec 07D9     		bls	.L19
  71:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c **** 		/* Heap and stack collision */
  72:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c **** 		errno = ENOMEM;
 322              		.loc 1 72 0
 323 00ee FFF7FEFF 		bl	__errno
 324 00f2 0300     		movs	r3, r0
 325 00f4 0C22     		movs	r2, #12
 326 00f6 1A60     		str	r2, [r3]
  73:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c **** 		return (char*)-1;
 327              		.loc 1 73 0
 328 00f8 0123     		movs	r3, #1
 329 00fa 5B42     		rsbs	r3, r3, #0
 330 00fc 06E0     		b	.L20
 331              	.L19:
  74:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c ****     }
  75:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c ****     heap_end += incr;
 332              		.loc 1 75 0
 333 00fe 054B     		ldr	r3, .L21
 334 0100 1A68     		ldr	r2, [r3]
 335 0102 7B68     		ldr	r3, [r7, #4]
 336 0104 D218     		adds	r2, r2, r3
 337 0106 034B     		ldr	r3, .L21
 338 0108 1A60     		str	r2, [r3]
  76:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c ****     return (char*)prev_heap_end;
 339              		.loc 1 76 0
 340 010a FB68     		ldr	r3, [r7, #12]
 341              	.L20:
  77:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c **** }
 342              		.loc 1 77 0
 343 010c 1800     		movs	r0, r3
 344 010e BD46     		mov	sp, r7
 345 0110 04B0     		add	sp, sp, #16
 346              		@ sp needed
 347 0112 80BD     		pop	{r7, pc}
 348              	.L22:
 349              		.align	2
 350              	.L21:
 351 0114 00000000 		.word	heap_end
 352 0118 00000000 		.word	heap_low
 353 011c 00000000 		.word	heap_top
 354              		.cfi_endproc
 355              	.LFE8:
 357              		.align	2
 358              		.global	crt_init
 359              		.code	16
 360              		.thumb_func
 362              	crt_init:
 363              	.LFB9:
  78:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c **** 
  79:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c **** void crt_init()
  80:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c **** {
 364              		.loc 1 80 0
 365              		.cfi_startproc
 366              		@ args = 0, pretend = 0, frame = 8
 367              		@ frame_needed = 1, uses_anonymous_args = 0
 368 0120 80B5     		push	{r7, lr}
 369              		.cfi_def_cfa_offset 8
 370              		.cfi_offset 7, -8
 371              		.cfi_offset 14, -4
 372 0122 82B0     		sub	sp, sp, #8
 373              		.cfi_def_cfa_offset 16
 374 0124 00AF     		add	r7, sp, #0
 375              		.cfi_def_cfa_register 7
  81:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c ****     extern char _sbss; /* Defined by linker */
  82:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c ****     extern char _ebss; /* Defined by linker */
  83:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c **** 	char* s;
  84:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c ****     s = &_sbss;
 376              		.loc 1 84 0
 377 0126 0F4B     		ldr	r3, .L28
 378 0128 7B60     		str	r3, [r7, #4]
  85:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c **** 	
  86:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c ****     while(s < &_ebss)
 379              		.loc 1 86 0
 380 012a 04E0     		b	.L24
 381              	.L25:
  87:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c **** 		*s++ = 0;
 382              		.loc 1 87 0
 383 012c 7B68     		ldr	r3, [r7, #4]
 384 012e 5A1C     		adds	r2, r3, #1
 385 0130 7A60     		str	r2, [r7, #4]
 386 0132 0022     		movs	r2, #0
 387 0134 1A70     		strb	r2, [r3]
 388              	.L24:
  86:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c **** 		*s++ = 0;
 389              		.loc 1 86 0
 390 0136 7A68     		ldr	r2, [r7, #4]
 391 0138 0B4B     		ldr	r3, .L28+4
 392 013a 9A42     		cmp	r2, r3
 393 013c F6D3     		bcc	.L25
  88:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c **** 		
  89:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c ****     s = &heap_low;
 394              		.loc 1 89 0
 395 013e 0B4B     		ldr	r3, .L28+8
 396 0140 7B60     		str	r3, [r7, #4]
  90:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c ****     while(s < &heap_top)
 397              		.loc 1 90 0
 398 0142 04E0     		b	.L26
 399              	.L27:
  91:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c **** 		*s++ = 0;
 400              		.loc 1 91 0
 401 0144 7B68     		ldr	r3, [r7, #4]
 402 0146 5A1C     		adds	r2, r3, #1
 403 0148 7A60     		str	r2, [r7, #4]
 404 014a 0022     		movs	r2, #0
 405 014c 1A70     		strb	r2, [r3]
 406              	.L26:
  90:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c ****     while(s < &heap_top)
 407              		.loc 1 90 0
 408 014e 7A68     		ldr	r2, [r7, #4]
 409 0150 074B     		ldr	r3, .L28+12
 410 0152 9A42     		cmp	r2, r3
 411 0154 F6D3     		bcc	.L27
  92:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c **** 		
  93:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c ****     heap_end = 0;
 412              		.loc 1 93 0
 413 0156 074B     		ldr	r3, .L28+16
 414 0158 0022     		movs	r2, #0
 415 015a 1A60     		str	r2, [r3]
  94:/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.c **** }
 416              		.loc 1 94 0
 417 015c C046     		nop
 418 015e BD46     		mov	sp, r7
 419 0160 02B0     		add	sp, sp, #8
 420              		@ sp needed
 421 0162 80BD     		pop	{r7, pc}
 422              	.L29:
 423              		.align	2
 424              	.L28:
 425 0164 00000000 		.word	_sbss
 426 0168 00000000 		.word	_ebss
 427 016c 00000000 		.word	heap_low
 428 0170 00000000 		.word	heap_top
 429 0174 00000000 		.word	heap_end
 430              		.cfi_endproc
 431              	.LFE9:
 433              	.Letext0:
 434              		.file 2 "/usr/local/gcc-arm/arm-none-eabi/include/machine/_default_types.h"
 435              		.file 3 "/usr/local/gcc-arm/arm-none-eabi/include/sys/_types.h"
 436              		.file 4 "/usr/local/gcc-arm/arm-none-eabi/include/sys/_timeval.h"
 437              		.file 5 "/usr/local/gcc-arm/arm-none-eabi/include/sys/types.h"
 438              		.file 6 "/usr/local/gcc-arm/arm-none-eabi/include/sys/stat.h"
 439              		.file 7 "/home/grace/Dokument/MaskinorienteradProgrammering/labb5-sidju/snek-MOP/libMD407.h"
