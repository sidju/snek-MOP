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
