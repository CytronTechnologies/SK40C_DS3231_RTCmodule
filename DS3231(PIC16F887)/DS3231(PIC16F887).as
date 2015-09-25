opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 6738"

opt pagewidth 120

	opt lm

	processor	16F887
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 9 "C:\Users\younce\Documents\DS3231(PIC16F887)\ds3231.c"
	psect config,class=CONFIG,delta=2 ;#
# 9 "C:\Users\younce\Documents\DS3231(PIC16F887)\ds3231.c"
	dw 0x3FFA & 0x3FF7 & 0x3FEF & 0x3CFF & 0x2FFF ;#
	FNCALL	_main,_init
	FNCALL	_main,_RTC_WRITE
	FNCALL	_main,_uc_i2c_rtc_get_seconds
	FNCALL	_main,_uc_i2c_rtc_get_minutes
	FNCALL	_main,_uc_i2c_rtc_get_hours
	FNCALL	_main,_uc_i2c_rtc_get_day
	FNCALL	_main,_uc_i2c_rtc_get_date
	FNCALL	_main,_uc_i2c_rtc_get_month
	FNCALL	_main,_uc_i2c_rtc_get_year
	FNCALL	_main,_lcd_goto
	FNCALL	_main,_lcd_bcd
	FNCALL	_main,_lcd_putchar
	FNCALL	_RTC_WRITE,_delay_ms
	FNCALL	_RTC_WRITE,_lcd_goto
	FNCALL	_RTC_WRITE,_lcd_bcd
	FNCALL	_RTC_WRITE,_lcd_putchar
	FNCALL	_RTC_WRITE,_i2c_rtc_set_day
	FNCALL	_RTC_WRITE,_i2c_rtc_set_seconds
	FNCALL	_RTC_WRITE,_i2c_rtc_set_minutes
	FNCALL	_RTC_WRITE,_i2c_rtc_set_hours
	FNCALL	_RTC_WRITE,_i2c_rtc_set_date
	FNCALL	_RTC_WRITE,_i2c_rtc_set_month
	FNCALL	_RTC_WRITE,_i2c_rtc_set_year
	FNCALL	_init,_lcd_initialize
	FNCALL	_init,_i2c_initialize
	FNCALL	_init,_i2c_rtc_initialize
	FNCALL	_lcd_initialize,_set_lcd_e
	FNCALL	_lcd_initialize,_send_lcd_data
	FNCALL	_lcd_initialize,_lcd_clear
	FNCALL	_lcd_bcd,___lwdiv
	FNCALL	_lcd_bcd,___lwmod
	FNCALL	_lcd_bcd,_lcd_putchar
	FNCALL	_lcd_clear,_send_lcd_data
	FNCALL	_lcd_putchar,_send_lcd_data
	FNCALL	_lcd_goto,_send_lcd_data
	FNCALL	_send_lcd_data,_set_lcd_rs
	FNCALL	_send_lcd_data,_set_lcd_data
	FNCALL	_send_lcd_data,_set_lcd_e
	FNCALL	_i2c_rtc_set_year,___awmod
	FNCALL	_i2c_rtc_set_year,___awdiv
	FNCALL	_i2c_rtc_set_year,_uc_i2c_write
	FNCALL	_i2c_rtc_set_month,___awmod
	FNCALL	_i2c_rtc_set_month,___awdiv
	FNCALL	_i2c_rtc_set_month,_uc_i2c_write
	FNCALL	_i2c_rtc_set_date,___awmod
	FNCALL	_i2c_rtc_set_date,___awdiv
	FNCALL	_i2c_rtc_set_date,_uc_i2c_write
	FNCALL	_i2c_rtc_set_hours,___awmod
	FNCALL	_i2c_rtc_set_hours,___awdiv
	FNCALL	_i2c_rtc_set_hours,_uc_i2c_read
	FNCALL	_i2c_rtc_set_hours,_uc_i2c_write
	FNCALL	_i2c_rtc_set_minutes,___awmod
	FNCALL	_i2c_rtc_set_minutes,___awdiv
	FNCALL	_i2c_rtc_set_minutes,_uc_i2c_write
	FNCALL	_i2c_rtc_set_seconds,___awmod
	FNCALL	_i2c_rtc_set_seconds,___awdiv
	FNCALL	_i2c_rtc_set_seconds,_uc_i2c_read
	FNCALL	_i2c_rtc_set_seconds,_uc_i2c_write
	FNCALL	_i2c_rtc_set_day,_uc_i2c_write
	FNCALL	_i2c_rtc_initialize,_uc_i2c_read
	FNCALL	_i2c_rtc_initialize,_uc_i2c_write
	FNCALL	_uc_i2c_rtc_get_year,_uc_i2c_read
	FNCALL	_uc_i2c_rtc_get_year,___bmul
	FNCALL	_uc_i2c_rtc_get_month,_uc_i2c_read
	FNCALL	_uc_i2c_rtc_get_month,___bmul
	FNCALL	_uc_i2c_rtc_get_date,_uc_i2c_read
	FNCALL	_uc_i2c_rtc_get_date,___bmul
	FNCALL	_uc_i2c_rtc_get_day,_uc_i2c_read
	FNCALL	_uc_i2c_rtc_get_hours,_uc_i2c_read
	FNCALL	_uc_i2c_rtc_get_hours,___bmul
	FNCALL	_uc_i2c_rtc_get_minutes,_uc_i2c_read
	FNCALL	_uc_i2c_rtc_get_minutes,___bmul
	FNCALL	_uc_i2c_rtc_get_seconds,_uc_i2c_read
	FNCALL	_uc_i2c_rtc_get_seconds,___bmul
	FNROOT	_main
	global	lcd_bcd@F810
	global	_b_i2c_error_flag
	global	_clkhrs
	global	_clkmin
	global	_clksec
	global	_date
	global	_day
	global	_i
	global	_j
	global	_k
	global	_l
	global	_month
	global	_step
	global	_store
	global	_year
	global	_PORTD
psect	text624,local,class=CODE,delta=2
global __ptext624
__ptext624:
_PORTD	set	8
	global	_SSPBUF
_SSPBUF	set	19
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_RB4
_RB4	set	52
	global	_RB5
_RB5	set	53
	global	_SSPEN
_SSPEN	set	165
	global	_SSPM0
_SSPM0	set	160
	global	_SSPM1
_SSPM1	set	161
	global	_SSPM2
_SSPM2	set	162
	global	_SSPM3
_SSPM3	set	163
	global	_SSPOV
_SSPOV	set	166
	global	_WCOL
_WCOL	set	167
	global	_SSPADD
_SSPADD	set	147
	global	_TRISB
_TRISB	set	134
	global	_TRISD
_TRISD	set	136
	global	_ACKDT
_ACKDT	set	1165
	global	_ACKEN
_ACKEN	set	1164
	global	_ACKSTAT
_ACKSTAT	set	1166
	global	_BF
_BF	set	1184
	global	_PEN
_PEN	set	1162
	global	_RCEN
_RCEN	set	1163
	global	_RSEN
_RSEN	set	1161
	global	_RW
_RW	set	1186
	global	_SEN
_SEN	set	1160
	global	_TRISC3
_TRISC3	set	1083
	global	_TRISC4
_TRISC4	set	1084
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	file	"DS3231(PIC16F887).as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
lcd_bcd@F810:
       ds      10

_b_i2c_error_flag:
       ds      1

_clkhrs:
       ds      1

_clkmin:
       ds      1

_clksec:
       ds      1

_date:
       ds      1

_day:
       ds      1

_i:
       ds      1

_j:
       ds      1

_k:
       ds      1

_l:
       ds      1

_month:
       ds      1

_step:
       ds      1

_store:
       ds      1

_year:
       ds      1

psect clrtext,class=CODE,delta=2
global clear_ram
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram:
	clrwdt			;clear the watchdog before getting into this loop
clrloop:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop		;do the next byte

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+018h)
	fcall	clear_ram
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_init
?_init:	; 0 bytes @ 0x0
	global	?_RTC_WRITE
?_RTC_WRITE:	; 0 bytes @ 0x0
	global	?_lcd_goto
?_lcd_goto:	; 0 bytes @ 0x0
	global	?_lcd_putchar
?_lcd_putchar:	; 0 bytes @ 0x0
	global	?_lcd_initialize
?_lcd_initialize:	; 0 bytes @ 0x0
	global	?_i2c_initialize
?_i2c_initialize:	; 0 bytes @ 0x0
	global	??_i2c_initialize
??_i2c_initialize:	; 0 bytes @ 0x0
	global	?_i2c_rtc_initialize
?_i2c_rtc_initialize:	; 0 bytes @ 0x0
	global	?_i2c_rtc_set_day
?_i2c_rtc_set_day:	; 0 bytes @ 0x0
	global	?_i2c_rtc_set_seconds
?_i2c_rtc_set_seconds:	; 0 bytes @ 0x0
	global	?_i2c_rtc_set_minutes
?_i2c_rtc_set_minutes:	; 0 bytes @ 0x0
	global	?_i2c_rtc_set_hours
?_i2c_rtc_set_hours:	; 0 bytes @ 0x0
	global	?_i2c_rtc_set_date
?_i2c_rtc_set_date:	; 0 bytes @ 0x0
	global	?_i2c_rtc_set_month
?_i2c_rtc_set_month:	; 0 bytes @ 0x0
	global	?_i2c_rtc_set_year
?_i2c_rtc_set_year:	; 0 bytes @ 0x0
	global	?_set_lcd_e
?_set_lcd_e:	; 0 bytes @ 0x0
	global	??_set_lcd_e
??_set_lcd_e:	; 0 bytes @ 0x0
	global	?_lcd_clear
?_lcd_clear:	; 0 bytes @ 0x0
	global	?_set_lcd_rs
?_set_lcd_rs:	; 0 bytes @ 0x0
	global	??_set_lcd_rs
??_set_lcd_rs:	; 0 bytes @ 0x0
	global	?_set_lcd_data
?_set_lcd_data:	; 0 bytes @ 0x0
	global	??_set_lcd_data
??_set_lcd_data:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_delay_ms
?_delay_ms:	; 0 bytes @ 0x0
	global	?_uc_i2c_write
?_uc_i2c_write:	; 0 bytes @ 0x0
	global	?_uc_i2c_rtc_get_seconds
?_uc_i2c_rtc_get_seconds:	; 1 bytes @ 0x0
	global	?_uc_i2c_rtc_get_minutes
?_uc_i2c_rtc_get_minutes:	; 1 bytes @ 0x0
	global	?_uc_i2c_rtc_get_hours
?_uc_i2c_rtc_get_hours:	; 1 bytes @ 0x0
	global	?_uc_i2c_rtc_get_day
?_uc_i2c_rtc_get_day:	; 1 bytes @ 0x0
	global	?_uc_i2c_rtc_get_date
?_uc_i2c_rtc_get_date:	; 1 bytes @ 0x0
	global	?_uc_i2c_rtc_get_month
?_uc_i2c_rtc_get_month:	; 1 bytes @ 0x0
	global	?_uc_i2c_rtc_get_year
?_uc_i2c_rtc_get_year:	; 1 bytes @ 0x0
	global	?_uc_i2c_read
?_uc_i2c_read:	; 1 bytes @ 0x0
	global	?___bmul
?___bmul:	; 1 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	uc_i2c_read@uc_register
uc_i2c_read@uc_register:	; 1 bytes @ 0x0
	global	uc_i2c_write@uc_register
uc_i2c_write@uc_register:	; 1 bytes @ 0x0
	global	set_lcd_e@b_output
set_lcd_e@b_output:	; 1 bytes @ 0x0
	global	set_lcd_rs@b_output
set_lcd_rs@b_output:	; 1 bytes @ 0x0
	global	set_lcd_data@uc_data
set_lcd_data@uc_data:	; 1 bytes @ 0x0
	global	___bmul@multiplicand
___bmul@multiplicand:	; 1 bytes @ 0x0
	global	delay_ms@ui_value
delay_ms@ui_value:	; 2 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	ds	1
	global	?_send_lcd_data
?_send_lcd_data:	; 0 bytes @ 0x1
	global	??_uc_i2c_read
??_uc_i2c_read:	; 0 bytes @ 0x1
	global	??___bmul
??___bmul:	; 0 bytes @ 0x1
	global	uc_i2c_write@uc_data
uc_i2c_write@uc_data:	; 1 bytes @ 0x1
	global	send_lcd_data@uc_data
send_lcd_data@uc_data:	; 1 bytes @ 0x1
	ds	1
	global	??_send_lcd_data
??_send_lcd_data:	; 0 bytes @ 0x2
	global	??_delay_ms
??_delay_ms:	; 0 bytes @ 0x2
	global	??_uc_i2c_write
??_uc_i2c_write:	; 0 bytes @ 0x2
	global	___bmul@product
___bmul@product:	; 1 bytes @ 0x2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	1
	global	uc_i2c_write@uc_slave_address
uc_i2c_write@uc_slave_address:	; 1 bytes @ 0x3
	global	___bmul@multiplier
___bmul@multiplier:	; 1 bytes @ 0x3
	ds	1
	global	??_i2c_rtc_set_day
??_i2c_rtc_set_day:	; 0 bytes @ 0x4
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0x4
	global	??___lwmod
??___lwmod:	; 0 bytes @ 0x4
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0x4
	global	??___awmod
??___awmod:	; 0 bytes @ 0x4
	global	send_lcd_data@b_rs
send_lcd_data@b_rs:	; 1 bytes @ 0x4
	ds	1
	global	??_lcd_goto
??_lcd_goto:	; 0 bytes @ 0x5
	global	??_lcd_putchar
??_lcd_putchar:	; 0 bytes @ 0x5
	global	??_lcd_initialize
??_lcd_initialize:	; 0 bytes @ 0x5
	global	??_lcd_clear
??_lcd_clear:	; 0 bytes @ 0x5
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x5
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x5
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x5
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x5
	global	uc_i2c_read@count
uc_i2c_read@count:	; 4 bytes @ 0x5
	ds	1
	global	i2c_rtc_set_day@uc_value
i2c_rtc_set_day@uc_value:	; 1 bytes @ 0x6
	global	lcd_goto@uc_position
lcd_goto@uc_position:	; 1 bytes @ 0x6
	global	lcd_putchar@c_data
lcd_putchar@c_data:	; 1 bytes @ 0x6
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x6
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x6
	ds	1
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x7
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x7
	ds	1
	global	?_lcd_bcd
?_lcd_bcd:	; 0 bytes @ 0x8
	global	lcd_bcd@ui_number
lcd_bcd@ui_number:	; 2 bytes @ 0x8
	ds	1
	global	uc_i2c_read@uc_received_byte
uc_i2c_read@uc_received_byte:	; 1 bytes @ 0x9
	global	i2c_rtc_set_minutes@uc_value
i2c_rtc_set_minutes@uc_value:	; 1 bytes @ 0x9
	global	i2c_rtc_set_date@uc_value
i2c_rtc_set_date@uc_value:	; 1 bytes @ 0x9
	global	i2c_rtc_set_month@uc_value
i2c_rtc_set_month@uc_value:	; 1 bytes @ 0x9
	global	i2c_rtc_set_year@uc_value
i2c_rtc_set_year@uc_value:	; 1 bytes @ 0x9
	ds	1
	global	??_lcd_bcd
??_lcd_bcd:	; 0 bytes @ 0xA
	global	uc_i2c_read@uc_slave_address
uc_i2c_read@uc_slave_address:	; 1 bytes @ 0xA
	ds	1
	global	??_uc_i2c_rtc_get_seconds
??_uc_i2c_rtc_get_seconds:	; 0 bytes @ 0xB
	global	??_uc_i2c_rtc_get_minutes
??_uc_i2c_rtc_get_minutes:	; 0 bytes @ 0xB
	global	??_uc_i2c_rtc_get_hours
??_uc_i2c_rtc_get_hours:	; 0 bytes @ 0xB
	global	??_uc_i2c_rtc_get_day
??_uc_i2c_rtc_get_day:	; 0 bytes @ 0xB
	global	??_uc_i2c_rtc_get_date
??_uc_i2c_rtc_get_date:	; 0 bytes @ 0xB
	global	??_uc_i2c_rtc_get_month
??_uc_i2c_rtc_get_month:	; 0 bytes @ 0xB
	global	??_uc_i2c_rtc_get_year
??_uc_i2c_rtc_get_year:	; 0 bytes @ 0xB
	global	??_i2c_rtc_initialize
??_i2c_rtc_initialize:	; 0 bytes @ 0xB
	global	i2c_rtc_set_seconds@uc_current_register_value
i2c_rtc_set_seconds@uc_current_register_value:	; 1 bytes @ 0xB
	global	i2c_rtc_set_hours@uc_current_register_value
i2c_rtc_set_hours@uc_current_register_value:	; 1 bytes @ 0xB
	ds	1
	global	i2c_rtc_set_seconds@uc_value
i2c_rtc_set_seconds@uc_value:	; 1 bytes @ 0xC
	global	i2c_rtc_set_hours@uc_value
i2c_rtc_set_hours@uc_value:	; 1 bytes @ 0xC
	ds	1
	global	??_init
??_init:	; 0 bytes @ 0xD
	ds	1
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_i2c_rtc_set_seconds
??_i2c_rtc_set_seconds:	; 0 bytes @ 0x0
	global	??_i2c_rtc_set_minutes
??_i2c_rtc_set_minutes:	; 0 bytes @ 0x0
	global	??_i2c_rtc_set_hours
??_i2c_rtc_set_hours:	; 0 bytes @ 0x0
	global	??_i2c_rtc_set_date
??_i2c_rtc_set_date:	; 0 bytes @ 0x0
	global	??_i2c_rtc_set_month
??_i2c_rtc_set_month:	; 0 bytes @ 0x0
	global	??_i2c_rtc_set_year
??_i2c_rtc_set_year:	; 0 bytes @ 0x0
	global	uc_i2c_rtc_get_seconds@uc_i2c_data
uc_i2c_rtc_get_seconds@uc_i2c_data:	; 1 bytes @ 0x0
	global	uc_i2c_rtc_get_minutes@uc_i2c_data
uc_i2c_rtc_get_minutes@uc_i2c_data:	; 1 bytes @ 0x0
	global	uc_i2c_rtc_get_hours@uc_i2c_data
uc_i2c_rtc_get_hours@uc_i2c_data:	; 1 bytes @ 0x0
	global	uc_i2c_rtc_get_date@uc_i2c_data
uc_i2c_rtc_get_date@uc_i2c_data:	; 1 bytes @ 0x0
	global	uc_i2c_rtc_get_month@uc_i2c_data
uc_i2c_rtc_get_month@uc_i2c_data:	; 1 bytes @ 0x0
	global	uc_i2c_rtc_get_year@uc_i2c_data
uc_i2c_rtc_get_year@uc_i2c_data:	; 1 bytes @ 0x0
	global	i2c_rtc_initialize@i
i2c_rtc_initialize@i:	; 2 bytes @ 0x0
	global	lcd_bcd@ui_decimal
lcd_bcd@ui_decimal:	; 10 bytes @ 0x0
	ds	2
	global	i2c_rtc_initialize@uc_current_register_value
i2c_rtc_initialize@uc_current_register_value:	; 1 bytes @ 0x2
	ds	8
	global	lcd_bcd@uc_digit
lcd_bcd@uc_digit:	; 1 bytes @ 0xA
	ds	1
	global	??_RTC_WRITE
??_RTC_WRITE:	; 0 bytes @ 0xB
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0xD
	ds	2
;;Data sizes: Strings 0, constant 0, data 0, bss 24, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     15      39
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___lwmod	unsigned int  size(1) Largest target is 0
;;
;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; ?___awdiv	int  size(1) Largest target is 0
;;
;; ?___awmod	int  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_uc_i2c_rtc_get_seconds
;;   _main->_uc_i2c_rtc_get_minutes
;;   _main->_uc_i2c_rtc_get_hours
;;   _main->_uc_i2c_rtc_get_date
;;   _main->_uc_i2c_rtc_get_month
;;   _main->_uc_i2c_rtc_get_year
;;   _main->_lcd_bcd
;;   _RTC_WRITE->_lcd_bcd
;;   _init->_i2c_rtc_initialize
;;   _lcd_initialize->_send_lcd_data
;;   _lcd_bcd->___lwdiv
;;   _lcd_clear->_send_lcd_data
;;   _lcd_putchar->_send_lcd_data
;;   _lcd_goto->_send_lcd_data
;;   _send_lcd_data->_set_lcd_rs
;;   _send_lcd_data->_set_lcd_data
;;   _send_lcd_data->_set_lcd_e
;;   _i2c_rtc_set_year->___awdiv
;;   _i2c_rtc_set_month->___awdiv
;;   _i2c_rtc_set_date->___awdiv
;;   _i2c_rtc_set_hours->_uc_i2c_read
;;   _i2c_rtc_set_minutes->___awdiv
;;   _i2c_rtc_set_seconds->_uc_i2c_read
;;   _i2c_rtc_set_day->_uc_i2c_write
;;   _i2c_rtc_initialize->_uc_i2c_read
;;   _uc_i2c_rtc_get_year->_uc_i2c_read
;;   _uc_i2c_rtc_get_month->_uc_i2c_read
;;   _uc_i2c_rtc_get_date->_uc_i2c_read
;;   _uc_i2c_rtc_get_day->_uc_i2c_read
;;   _uc_i2c_rtc_get_hours->_uc_i2c_read
;;   _uc_i2c_rtc_get_minutes->_uc_i2c_read
;;   _uc_i2c_rtc_get_seconds->_uc_i2c_read
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_RTC_WRITE
;;   _RTC_WRITE->_lcd_bcd
;;   _init->_i2c_rtc_initialize
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 2     2      0    9502
;;                                             13 BANK0      2     2      0
;;                               _init
;;                          _RTC_WRITE
;;             _uc_i2c_rtc_get_seconds
;;             _uc_i2c_rtc_get_minutes
;;               _uc_i2c_rtc_get_hours
;;                 _uc_i2c_rtc_get_day
;;                _uc_i2c_rtc_get_date
;;               _uc_i2c_rtc_get_month
;;                _uc_i2c_rtc_get_year
;;                           _lcd_goto
;;                            _lcd_bcd
;;                        _lcd_putchar
;; ---------------------------------------------------------------------------------
;; (1) _RTC_WRITE                                            2     2      0    6158
;;                                             11 BANK0      2     2      0
;;                           _delay_ms
;;                           _lcd_goto
;;                            _lcd_bcd
;;                        _lcd_putchar
;;                    _i2c_rtc_set_day
;;                _i2c_rtc_set_seconds
;;                _i2c_rtc_set_minutes
;;                  _i2c_rtc_set_hours
;;                   _i2c_rtc_set_date
;;                  _i2c_rtc_set_month
;;                   _i2c_rtc_set_year
;; ---------------------------------------------------------------------------------
;; (1) _init                                                 0     0      0     556
;;                     _lcd_initialize
;;                     _i2c_initialize
;;                 _i2c_rtc_initialize
;; ---------------------------------------------------------------------------------
;; (2) _lcd_initialize                                       2     2      0     242
;;                                              5 COMMON     2     2      0
;;                          _set_lcd_e
;;                      _send_lcd_data
;;                          _lcd_clear
;; ---------------------------------------------------------------------------------
;; (1) _lcd_bcd                                             17    15      2     918
;;                                              8 COMMON     6     4      2
;;                                              0 BANK0     11    11      0
;;                            ___lwdiv
;;                            ___lwmod
;;                        _lcd_putchar
;; ---------------------------------------------------------------------------------
;; (3) _lcd_clear                                            0     0      0     110
;;                      _send_lcd_data
;; ---------------------------------------------------------------------------------
;; (1) _lcd_putchar                                          2     2      0     132
;;                                              5 COMMON     2     2      0
;;                      _send_lcd_data
;; ---------------------------------------------------------------------------------
;; (1) _lcd_goto                                             2     2      0     132
;;                                              5 COMMON     2     2      0
;;                      _send_lcd_data
;; ---------------------------------------------------------------------------------
;; (2) _send_lcd_data                                        4     3      1     110
;;                                              1 COMMON     4     3      1
;;                         _set_lcd_rs
;;                       _set_lcd_data
;;                          _set_lcd_e
;; ---------------------------------------------------------------------------------
;; (2) _i2c_rtc_set_year                                     7     7      0     751
;;                                              9 COMMON     1     1      0
;;                                              0 BANK0      6     6      0
;;                            ___awmod
;;                            ___awdiv
;;                       _uc_i2c_write
;; ---------------------------------------------------------------------------------
;; (2) _i2c_rtc_set_month                                    7     7      0     773
;;                                              9 COMMON     1     1      0
;;                                              0 BANK0      6     6      0
;;                            ___awmod
;;                            ___awdiv
;;                       _uc_i2c_write
;; ---------------------------------------------------------------------------------
;; (2) _i2c_rtc_set_date                                     7     7      0     773
;;                                              9 COMMON     1     1      0
;;                                              0 BANK0      6     6      0
;;                            ___awmod
;;                            ___awdiv
;;                       _uc_i2c_write
;; ---------------------------------------------------------------------------------
;; (2) _i2c_rtc_set_hours                                    8     8      0     887
;;                                             11 COMMON     2     2      0
;;                                              0 BANK0      6     6      0
;;                            ___awmod
;;                            ___awdiv
;;                        _uc_i2c_read
;;                       _uc_i2c_write
;; ---------------------------------------------------------------------------------
;; (2) _i2c_rtc_set_minutes                                  7     7      0     751
;;                                              9 COMMON     1     1      0
;;                                              0 BANK0      6     6      0
;;                            ___awmod
;;                            ___awdiv
;;                       _uc_i2c_write
;; ---------------------------------------------------------------------------------
;; (2) _i2c_rtc_set_seconds                                  8     8      0     887
;;                                             11 COMMON     2     2      0
;;                                              0 BANK0      6     6      0
;;                            ___awmod
;;                            ___awdiv
;;                        _uc_i2c_read
;;                       _uc_i2c_write
;; ---------------------------------------------------------------------------------
;; (2) _i2c_rtc_set_day                                      3     3      0     132
;;                                              4 COMMON     3     3      0
;;                       _uc_i2c_write
;; ---------------------------------------------------------------------------------
;; (2) _delay_ms                                             4     2      2      22
;;                                              0 COMMON     4     2      2
;; ---------------------------------------------------------------------------------
;; (2) _i2c_rtc_initialize                                   5     5      0     314
;;                                             11 COMMON     2     2      0
;;                                              0 BANK0      3     3      0
;;                        _uc_i2c_read
;;                       _uc_i2c_write
;; ---------------------------------------------------------------------------------
;; (1) _uc_i2c_rtc_get_year                                  4     4      0     249
;;                                             11 COMMON     3     3      0
;;                                              0 BANK0      1     1      0
;;                        _uc_i2c_read
;;                             ___bmul
;; ---------------------------------------------------------------------------------
;; (1) _uc_i2c_rtc_get_month                                 4     4      0     249
;;                                             11 COMMON     3     3      0
;;                                              0 BANK0      1     1      0
;;                        _uc_i2c_read
;;                             ___bmul
;; ---------------------------------------------------------------------------------
;; (1) _uc_i2c_rtc_get_date                                  4     4      0     249
;;                                             11 COMMON     3     3      0
;;                                              0 BANK0      1     1      0
;;                        _uc_i2c_read
;;                             ___bmul
;; ---------------------------------------------------------------------------------
;; (1) _uc_i2c_rtc_get_day                                   1     1      0     112
;;                                             11 COMMON     1     1      0
;;                        _uc_i2c_read
;; ---------------------------------------------------------------------------------
;; (1) _uc_i2c_rtc_get_hours                                 4     4      0     249
;;                                             11 COMMON     3     3      0
;;                                              0 BANK0      1     1      0
;;                        _uc_i2c_read
;;                             ___bmul
;; ---------------------------------------------------------------------------------
;; (1) _uc_i2c_rtc_get_minutes                               4     4      0     249
;;                                             11 COMMON     3     3      0
;;                                              0 BANK0      1     1      0
;;                        _uc_i2c_read
;;                             ___bmul
;; ---------------------------------------------------------------------------------
;; (1) _uc_i2c_rtc_get_seconds                               4     4      0     249
;;                                             11 COMMON     3     3      0
;;                                              0 BANK0      1     1      0
;;                        _uc_i2c_read
;;                             ___bmul
;; ---------------------------------------------------------------------------------
;; (3) ___awmod                                              7     3      4     296
;;                                              0 COMMON     7     3      4
;; ---------------------------------------------------------------------------------
;; (3) ___awdiv                                              9     5      4     300
;;                                              0 COMMON     9     5      4
;; ---------------------------------------------------------------------------------
;; (2) ___lwmod                                              6     2      4     159
;;                                              0 COMMON     6     2      4
;; ---------------------------------------------------------------------------------
;; (2) ___lwdiv                                              8     4      4     162
;;                                              0 COMMON     8     4      4
;; ---------------------------------------------------------------------------------
;; (2) ___bmul                                               4     3      1      92
;;                                              0 COMMON     4     3      1
;; ---------------------------------------------------------------------------------
;; (3) _set_lcd_data                                         1     1      0      22
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (3) _set_lcd_rs                                           1     1      0      22
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (3) _set_lcd_e                                            1     1      0      22
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (3) _uc_i2c_write                                         4     2      2      66
;;                                              0 COMMON     4     2      2
;; ---------------------------------------------------------------------------------
;; (2) _uc_i2c_read                                         11    10      1     112
;;                                              0 COMMON    11    10      1
;; ---------------------------------------------------------------------------------
;; (2) _i2c_initialize                                       0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _init
;;     _lcd_initialize
;;       _set_lcd_e
;;       _send_lcd_data
;;         _set_lcd_rs
;;         _set_lcd_data
;;         _set_lcd_e
;;       _lcd_clear
;;         _send_lcd_data
;;           _set_lcd_rs
;;           _set_lcd_data
;;           _set_lcd_e
;;     _i2c_initialize
;;     _i2c_rtc_initialize
;;       _uc_i2c_read
;;       _uc_i2c_write
;;   _RTC_WRITE
;;     _delay_ms
;;     _lcd_goto
;;       _send_lcd_data
;;         _set_lcd_rs
;;         _set_lcd_data
;;         _set_lcd_e
;;     _lcd_bcd
;;       ___lwdiv
;;       ___lwmod
;;       _lcd_putchar
;;         _send_lcd_data
;;           _set_lcd_rs
;;           _set_lcd_data
;;           _set_lcd_e
;;     _lcd_putchar
;;       _send_lcd_data
;;         _set_lcd_rs
;;         _set_lcd_data
;;         _set_lcd_e
;;     _i2c_rtc_set_day
;;       _uc_i2c_write
;;     _i2c_rtc_set_seconds
;;       ___awmod
;;       ___awdiv
;;       _uc_i2c_read
;;       _uc_i2c_write
;;     _i2c_rtc_set_minutes
;;       ___awmod
;;       ___awdiv
;;       _uc_i2c_write
;;     _i2c_rtc_set_hours
;;       ___awmod
;;       ___awdiv
;;       _uc_i2c_read
;;       _uc_i2c_write
;;     _i2c_rtc_set_date
;;       ___awmod
;;       ___awdiv
;;       _uc_i2c_write
;;     _i2c_rtc_set_month
;;       ___awmod
;;       ___awdiv
;;       _uc_i2c_write
;;     _i2c_rtc_set_year
;;       ___awmod
;;       ___awdiv
;;       _uc_i2c_write
;;   _uc_i2c_rtc_get_seconds
;;     _uc_i2c_read
;;     ___bmul
;;   _uc_i2c_rtc_get_minutes
;;     _uc_i2c_read
;;     ___bmul
;;   _uc_i2c_rtc_get_hours
;;     _uc_i2c_read
;;     ___bmul
;;   _uc_i2c_rtc_get_day
;;     _uc_i2c_read
;;   _uc_i2c_rtc_get_date
;;     _uc_i2c_read
;;     ___bmul
;;   _uc_i2c_rtc_get_month
;;     _uc_i2c_read
;;     ___bmul
;;   _uc_i2c_rtc_get_year
;;     _uc_i2c_read
;;     ___bmul
;;   _lcd_goto
;;     _send_lcd_data
;;       _set_lcd_rs
;;       _set_lcd_data
;;       _set_lcd_e
;;   _lcd_bcd
;;     ___lwdiv
;;     ___lwmod
;;     _lcd_putchar
;;       _send_lcd_data
;;         _set_lcd_rs
;;         _set_lcd_data
;;         _set_lcd_e
;;   _lcd_putchar
;;     _send_lcd_data
;;       _set_lcd_rs
;;       _set_lcd_data
;;       _set_lcd_e
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      E       E       1      100.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       5       2        0.0%
;;ABS                  0      0      35       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      F      27       5       48.8%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      3A      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 53 in file "C:\Users\younce\Documents\DS3231(PIC16F887)\ds3231.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_init
;;		_RTC_WRITE
;;		_uc_i2c_rtc_get_seconds
;;		_uc_i2c_rtc_get_minutes
;;		_uc_i2c_rtc_get_hours
;;		_uc_i2c_rtc_get_day
;;		_uc_i2c_rtc_get_date
;;		_uc_i2c_rtc_get_month
;;		_uc_i2c_rtc_get_year
;;		_lcd_goto
;;		_lcd_bcd
;;		_lcd_putchar
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\younce\Documents\DS3231(PIC16F887)\ds3231.c"
	line	53
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 3
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	54
	
l6459:	
;ds3231.c: 54: init();
	fcall	_init
	goto	l6461
	line	55
;ds3231.c: 55: while(1)
	
l907:	
	line	57
	
l6461:	
;ds3231.c: 56: {
;ds3231.c: 57: if(RB0==0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(48/8),(48)&7
	goto	u4431
	goto	u4430
u4431:
	goto	l6465
u4430:
	line	59
	
l6463:	
;ds3231.c: 58: {
;ds3231.c: 59: RTC_WRITE();
	fcall	_RTC_WRITE
	line	60
;ds3231.c: 60: }
	goto	l6461
	line	63
	
l908:	
	line	65
	
l6465:	
;ds3231.c: 63: else
;ds3231.c: 64: {
;ds3231.c: 65: clksec=uc_i2c_rtc_get_seconds();
	fcall	_uc_i2c_rtc_get_seconds
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_clksec)
	line	66
;ds3231.c: 66: clkmin= uc_i2c_rtc_get_minutes();
	fcall	_uc_i2c_rtc_get_minutes
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_clkmin)
	line	67
;ds3231.c: 67: clkhrs=uc_i2c_rtc_get_hours();
	fcall	_uc_i2c_rtc_get_hours
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_clkhrs)
	line	68
;ds3231.c: 68: day=uc_i2c_rtc_get_day();
	fcall	_uc_i2c_rtc_get_day
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_day)
	line	69
;ds3231.c: 69: date=uc_i2c_rtc_get_date();
	fcall	_uc_i2c_rtc_get_date
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_date)
	line	70
;ds3231.c: 70: month=uc_i2c_rtc_get_month();
	fcall	_uc_i2c_rtc_get_month
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_month)
	line	71
;ds3231.c: 71: year=uc_i2c_rtc_get_year();
	fcall	_uc_i2c_rtc_get_year
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_year)
	line	73
;ds3231.c: 73: lcd_goto(0x83);
	movlw	(083h)
	fcall	_lcd_goto
	line	74
	
l6467:	
;ds3231.c: 74: lcd_bcd(2,clkhrs);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_clkhrs),w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(?_lcd_bcd)
	movf	1+(??_main+0)+0,w
	movwf	(?_lcd_bcd+1)
	movlw	(02h)
	fcall	_lcd_bcd
	line	76
	
l6469:	
;ds3231.c: 76: lcd_putchar(':');
	movlw	(03Ah)
	fcall	_lcd_putchar
	line	78
	
l6471:	
;ds3231.c: 78: lcd_goto(0x86);
	movlw	(086h)
	fcall	_lcd_goto
	line	79
	
l6473:	
;ds3231.c: 79: lcd_bcd(2,clkmin);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_clkmin),w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(?_lcd_bcd)
	movf	1+(??_main+0)+0,w
	movwf	(?_lcd_bcd+1)
	movlw	(02h)
	fcall	_lcd_bcd
	line	81
;ds3231.c: 81: lcd_putchar(':');
	movlw	(03Ah)
	fcall	_lcd_putchar
	line	83
;ds3231.c: 83: lcd_goto(0x89);
	movlw	(089h)
	fcall	_lcd_goto
	line	84
	
l6475:	
;ds3231.c: 84: lcd_bcd(2,clksec);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_clksec),w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(?_lcd_bcd)
	movf	1+(??_main+0)+0,w
	movwf	(?_lcd_bcd+1)
	movlw	(02h)
	fcall	_lcd_bcd
	line	86
	
l6477:	
;ds3231.c: 86: lcd_goto(0xc3);
	movlw	(0C3h)
	fcall	_lcd_goto
	line	87
;ds3231.c: 87: lcd_bcd(2,date);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_date),w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(?_lcd_bcd)
	movf	1+(??_main+0)+0,w
	movwf	(?_lcd_bcd+1)
	movlw	(02h)
	fcall	_lcd_bcd
	line	89
	
l6479:	
;ds3231.c: 89: lcd_putchar(0x2F);
	movlw	(02Fh)
	fcall	_lcd_putchar
	line	91
	
l6481:	
;ds3231.c: 91: lcd_goto(0xc6);
	movlw	(0C6h)
	fcall	_lcd_goto
	line	92
;ds3231.c: 92: lcd_bcd(2,month);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_month),w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(?_lcd_bcd)
	movf	1+(??_main+0)+0,w
	movwf	(?_lcd_bcd+1)
	movlw	(02h)
	fcall	_lcd_bcd
	line	94
	
l6483:	
;ds3231.c: 94: lcd_putchar(0x2F);
	movlw	(02Fh)
	fcall	_lcd_putchar
	line	96
	
l6485:	
;ds3231.c: 96: lcd_goto(0xc9);
	movlw	(0C9h)
	fcall	_lcd_goto
	line	97
;ds3231.c: 97: lcd_bcd(2,year);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_year),w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(?_lcd_bcd)
	movf	1+(??_main+0)+0,w
	movwf	(?_lcd_bcd+1)
	movlw	(02h)
	fcall	_lcd_bcd
	goto	l6461
	line	99
	
l909:	
	goto	l6461
	line	101
	
l910:	
	line	55
	goto	l6461
	
l911:	
	goto	l913
	line	102
;ds3231.c: 99: }
;ds3231.c: 101: }
;ds3231.c: 102: while(1) continue;
	
l912:	
	
l913:	
	goto	l913
	
l914:	
	line	103
	
l915:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_RTC_WRITE
psect	text625,local,class=CODE,delta=2
global __ptext625
__ptext625:

;; *************** function _RTC_WRITE *****************
;; Defined at:
;;		line 138 in file "C:\Users\younce\Documents\DS3231(PIC16F887)\ds3231.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_delay_ms
;;		_lcd_goto
;;		_lcd_bcd
;;		_lcd_putchar
;;		_i2c_rtc_set_day
;;		_i2c_rtc_set_seconds
;;		_i2c_rtc_set_minutes
;;		_i2c_rtc_set_hours
;;		_i2c_rtc_set_date
;;		_i2c_rtc_set_month
;;		_i2c_rtc_set_year
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text625
	file	"C:\Users\younce\Documents\DS3231(PIC16F887)\ds3231.c"
	line	138
	global	__size_of_RTC_WRITE
	__size_of_RTC_WRITE	equ	__end_of_RTC_WRITE-_RTC_WRITE
	
_RTC_WRITE:	
	opt	stack 3
; Regs used in _RTC_WRITE: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	141
	
l6263:	
;ds3231.c: 141: while(RB0==0);
	goto	l927
	
l928:	
	
l927:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(48/8),(48)&7
	goto	u4121
	goto	u4120
u4121:
	goto	l927
u4120:
	goto	l6291
	
l929:	
	line	143
;ds3231.c: 143: while(RB0 == 1)
	goto	l6291
	
l931:	
	line	146
;ds3231.c: 144: {
;ds3231.c: 146: if(RB1==0)
	btfsc	(49/8),(49)&7
	goto	u4131
	goto	u4130
u4131:
	goto	l6275
u4130:
	line	148
	
l6265:	
;ds3231.c: 147: {
;ds3231.c: 148: delay_ms(50);
	movlw	low(032h)
	movwf	(?_delay_ms)
	movlw	high(032h)
	movwf	((?_delay_ms))+1
	fcall	_delay_ms
	line	149
;ds3231.c: 149: while(RB1==0);
	goto	l933
	
l934:	
	
l933:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(49/8),(49)&7
	goto	u4141
	goto	u4140
u4141:
	goto	l933
u4140:
	goto	l6267
	
l935:	
	line	150
	
l6267:	
;ds3231.c: 150: delay_ms(50);
	movlw	low(032h)
	movwf	(?_delay_ms)
	movlw	high(032h)
	movwf	((?_delay_ms))+1
	fcall	_delay_ms
	line	151
	
l6269:	
;ds3231.c: 151: if(clkhrs<=22)clkhrs++;
	movlw	(017h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(_clkhrs),w
	skipnc
	goto	u4151
	goto	u4150
u4151:
	goto	l6273
u4150:
	
l6271:	
	movlw	(01h)
	movwf	(??_RTC_WRITE+0)+0
	movf	(??_RTC_WRITE+0)+0,w
	addwf	(_clkhrs),f
	goto	l6291
	line	152
	
l936:	
	
l6273:	
;ds3231.c: 152: else clkhrs=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_clkhrs)
	goto	l6291
	
l937:	
	line	153
;ds3231.c: 153: }
	goto	l6291
	line	155
	
l932:	
	line	157
	
l6275:	
;ds3231.c: 155: else
;ds3231.c: 156: {
;ds3231.c: 157: lcd_goto(0x83);
	movlw	(083h)
	fcall	_lcd_goto
	line	158
	
l6277:	
;ds3231.c: 158: lcd_bcd(2,clkhrs);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_clkhrs),w
	movwf	(??_RTC_WRITE+0)+0
	clrf	(??_RTC_WRITE+0)+0+1
	movf	0+(??_RTC_WRITE+0)+0,w
	movwf	(?_lcd_bcd)
	movf	1+(??_RTC_WRITE+0)+0,w
	movwf	(?_lcd_bcd+1)
	movlw	(02h)
	fcall	_lcd_bcd
	line	159
	
l6279:	
;ds3231.c: 159: delay_ms(100);
	movlw	low(064h)
	movwf	(?_delay_ms)
	movlw	high(064h)
	movwf	((?_delay_ms))+1
	fcall	_delay_ms
	line	160
	
l6281:	
;ds3231.c: 160: lcd_goto(0x83);
	movlw	(083h)
	fcall	_lcd_goto
	line	161
	
l6283:	
;ds3231.c: 161: lcd_putchar(' ');
	movlw	(020h)
	fcall	_lcd_putchar
	line	162
	
l6285:	
;ds3231.c: 162: lcd_goto(0x84);
	movlw	(084h)
	fcall	_lcd_goto
	line	163
	
l6287:	
;ds3231.c: 163: lcd_putchar(' ');
	movlw	(020h)
	fcall	_lcd_putchar
	line	165
	
l6289:	
;ds3231.c: 165: delay_ms(150);
	movlw	low(096h)
	movwf	(?_delay_ms)
	movlw	high(096h)
	movwf	((?_delay_ms))+1
	fcall	_delay_ms
	goto	l6291
	line	166
	
l938:	
	goto	l6291
	line	167
	
l930:	
	line	143
	
l6291:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(48/8),(48)&7
	goto	u4161
	goto	u4160
u4161:
	goto	l931
u4160:
	goto	l6293
	
l939:	
	line	168
	
l6293:	
;ds3231.c: 166: }
;ds3231.c: 167: }
;ds3231.c: 168: lcd_goto(0x83);
	movlw	(083h)
	fcall	_lcd_goto
	line	169
	
l6295:	
;ds3231.c: 169: lcd_bcd(2,clkhrs);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_clkhrs),w
	movwf	(??_RTC_WRITE+0)+0
	clrf	(??_RTC_WRITE+0)+0+1
	movf	0+(??_RTC_WRITE+0)+0,w
	movwf	(?_lcd_bcd)
	movf	1+(??_RTC_WRITE+0)+0,w
	movwf	(?_lcd_bcd+1)
	movlw	(02h)
	fcall	_lcd_bcd
	line	170
;ds3231.c: 170: while(RB0==0);
	goto	l940
	
l941:	
	
l940:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(48/8),(48)&7
	goto	u4171
	goto	u4170
u4171:
	goto	l940
u4170:
	goto	l6297
	
l942:	
	line	171
	
l6297:	
;ds3231.c: 171: delay_ms(50);
	movlw	low(032h)
	movwf	(?_delay_ms)
	movlw	high(032h)
	movwf	((?_delay_ms))+1
	fcall	_delay_ms
	line	175
;ds3231.c: 175: while(RB0 == 1)
	goto	l6323
	
l944:	
	line	178
;ds3231.c: 176: {
;ds3231.c: 178: if(RB1==0)
	btfsc	(49/8),(49)&7
	goto	u4181
	goto	u4180
u4181:
	goto	l6307
u4180:
	line	180
	
l6299:	
;ds3231.c: 179: {
;ds3231.c: 180: delay_ms(50);
	movlw	low(032h)
	movwf	(?_delay_ms)
	movlw	high(032h)
	movwf	((?_delay_ms))+1
	fcall	_delay_ms
	line	181
;ds3231.c: 181: while(RB1==0);
	goto	l946
	
l947:	
	
l946:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(49/8),(49)&7
	goto	u4191
	goto	u4190
u4191:
	goto	l946
u4190:
	goto	l6301
	
l948:	
	line	183
	
l6301:	
;ds3231.c: 183: if(clkmin<=58)clkmin++;
	movlw	(03Bh)
	subwf	(_clkmin),w
	skipnc
	goto	u4201
	goto	u4200
u4201:
	goto	l6305
u4200:
	
l6303:	
	movlw	(01h)
	movwf	(??_RTC_WRITE+0)+0
	movf	(??_RTC_WRITE+0)+0,w
	addwf	(_clkmin),f
	goto	l6323
	line	184
	
l949:	
	
l6305:	
;ds3231.c: 184: else clkmin=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_clkmin)
	goto	l6323
	
l950:	
	line	185
;ds3231.c: 185: }
	goto	l6323
	line	188
	
l945:	
	line	190
	
l6307:	
;ds3231.c: 188: else
;ds3231.c: 189: {
;ds3231.c: 190: lcd_goto(0x86);
	movlw	(086h)
	fcall	_lcd_goto
	line	191
	
l6309:	
;ds3231.c: 191: lcd_bcd(2,clkmin);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_clkmin),w
	movwf	(??_RTC_WRITE+0)+0
	clrf	(??_RTC_WRITE+0)+0+1
	movf	0+(??_RTC_WRITE+0)+0,w
	movwf	(?_lcd_bcd)
	movf	1+(??_RTC_WRITE+0)+0,w
	movwf	(?_lcd_bcd+1)
	movlw	(02h)
	fcall	_lcd_bcd
	line	192
	
l6311:	
;ds3231.c: 192: delay_ms(100);
	movlw	low(064h)
	movwf	(?_delay_ms)
	movlw	high(064h)
	movwf	((?_delay_ms))+1
	fcall	_delay_ms
	line	193
	
l6313:	
;ds3231.c: 193: lcd_goto(0x86);
	movlw	(086h)
	fcall	_lcd_goto
	line	194
	
l6315:	
;ds3231.c: 194: lcd_putchar(' ');
	movlw	(020h)
	fcall	_lcd_putchar
	line	195
	
l6317:	
;ds3231.c: 195: lcd_goto(0x87);
	movlw	(087h)
	fcall	_lcd_goto
	line	196
	
l6319:	
;ds3231.c: 196: lcd_putchar(' ');
	movlw	(020h)
	fcall	_lcd_putchar
	line	198
	
l6321:	
;ds3231.c: 198: delay_ms(150);
	movlw	low(096h)
	movwf	(?_delay_ms)
	movlw	high(096h)
	movwf	((?_delay_ms))+1
	fcall	_delay_ms
	goto	l6323
	line	199
	
l951:	
	goto	l6323
	line	201
	
l943:	
	line	175
	
l6323:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(48/8),(48)&7
	goto	u4211
	goto	u4210
u4211:
	goto	l944
u4210:
	goto	l6325
	
l952:	
	line	203
	
l6325:	
;ds3231.c: 199: }
;ds3231.c: 201: }
;ds3231.c: 203: lcd_goto(0x86);
	movlw	(086h)
	fcall	_lcd_goto
	line	204
	
l6327:	
;ds3231.c: 204: lcd_bcd(2,clkmin);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_clkmin),w
	movwf	(??_RTC_WRITE+0)+0
	clrf	(??_RTC_WRITE+0)+0+1
	movf	0+(??_RTC_WRITE+0)+0,w
	movwf	(?_lcd_bcd)
	movf	1+(??_RTC_WRITE+0)+0,w
	movwf	(?_lcd_bcd+1)
	movlw	(02h)
	fcall	_lcd_bcd
	line	205
;ds3231.c: 205: while(RB0==0);
	goto	l953
	
l954:	
	
l953:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(48/8),(48)&7
	goto	u4221
	goto	u4220
u4221:
	goto	l953
u4220:
	goto	l6329
	
l955:	
	line	206
	
l6329:	
;ds3231.c: 206: delay_ms(50);
	movlw	low(032h)
	movwf	(?_delay_ms)
	movlw	high(032h)
	movwf	((?_delay_ms))+1
	fcall	_delay_ms
	line	210
;ds3231.c: 210: while(RB0 == 1)
	goto	l6355
	
l957:	
	line	213
;ds3231.c: 211: {
;ds3231.c: 213: if(RB1==0)
	btfsc	(49/8),(49)&7
	goto	u4231
	goto	u4230
u4231:
	goto	l6339
u4230:
	line	215
	
l6331:	
;ds3231.c: 214: {
;ds3231.c: 215: delay_ms(50);
	movlw	low(032h)
	movwf	(?_delay_ms)
	movlw	high(032h)
	movwf	((?_delay_ms))+1
	fcall	_delay_ms
	line	216
;ds3231.c: 216: while(RB1==0);
	goto	l959
	
l960:	
	
l959:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(49/8),(49)&7
	goto	u4241
	goto	u4240
u4241:
	goto	l959
u4240:
	goto	l6333
	
l961:	
	line	218
	
l6333:	
;ds3231.c: 218: if(clksec<=58)clksec++;
	movlw	(03Bh)
	subwf	(_clksec),w
	skipnc
	goto	u4251
	goto	u4250
u4251:
	goto	l6337
u4250:
	
l6335:	
	movlw	(01h)
	movwf	(??_RTC_WRITE+0)+0
	movf	(??_RTC_WRITE+0)+0,w
	addwf	(_clksec),f
	goto	l6355
	line	219
	
l962:	
	
l6337:	
;ds3231.c: 219: else clksec=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_clksec)
	goto	l6355
	
l963:	
	line	220
;ds3231.c: 220: }
	goto	l6355
	line	222
	
l958:	
	line	224
	
l6339:	
;ds3231.c: 222: else
;ds3231.c: 223: {
;ds3231.c: 224: lcd_goto(0x89);
	movlw	(089h)
	fcall	_lcd_goto
	line	225
	
l6341:	
;ds3231.c: 225: lcd_bcd(2,clksec);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_clksec),w
	movwf	(??_RTC_WRITE+0)+0
	clrf	(??_RTC_WRITE+0)+0+1
	movf	0+(??_RTC_WRITE+0)+0,w
	movwf	(?_lcd_bcd)
	movf	1+(??_RTC_WRITE+0)+0,w
	movwf	(?_lcd_bcd+1)
	movlw	(02h)
	fcall	_lcd_bcd
	line	226
	
l6343:	
;ds3231.c: 226: delay_ms(100);
	movlw	low(064h)
	movwf	(?_delay_ms)
	movlw	high(064h)
	movwf	((?_delay_ms))+1
	fcall	_delay_ms
	line	227
	
l6345:	
;ds3231.c: 227: lcd_goto(0x89);
	movlw	(089h)
	fcall	_lcd_goto
	line	228
	
l6347:	
;ds3231.c: 228: lcd_putchar(' ');
	movlw	(020h)
	fcall	_lcd_putchar
	line	229
	
l6349:	
;ds3231.c: 229: lcd_goto(0x8A);
	movlw	(08Ah)
	fcall	_lcd_goto
	line	230
	
l6351:	
;ds3231.c: 230: lcd_putchar(' ');
	movlw	(020h)
	fcall	_lcd_putchar
	line	232
	
l6353:	
;ds3231.c: 232: delay_ms(150);
	movlw	low(096h)
	movwf	(?_delay_ms)
	movlw	high(096h)
	movwf	((?_delay_ms))+1
	fcall	_delay_ms
	goto	l6355
	line	233
	
l964:	
	goto	l6355
	line	234
	
l956:	
	line	210
	
l6355:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(48/8),(48)&7
	goto	u4261
	goto	u4260
u4261:
	goto	l957
u4260:
	goto	l6357
	
l965:	
	line	236
	
l6357:	
;ds3231.c: 233: }
;ds3231.c: 234: }
;ds3231.c: 236: lcd_goto(0x89);
	movlw	(089h)
	fcall	_lcd_goto
	line	237
	
l6359:	
;ds3231.c: 237: lcd_bcd(2,clksec);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_clksec),w
	movwf	(??_RTC_WRITE+0)+0
	clrf	(??_RTC_WRITE+0)+0+1
	movf	0+(??_RTC_WRITE+0)+0,w
	movwf	(?_lcd_bcd)
	movf	1+(??_RTC_WRITE+0)+0,w
	movwf	(?_lcd_bcd+1)
	movlw	(02h)
	fcall	_lcd_bcd
	line	238
;ds3231.c: 238: while(RB0==0);
	goto	l966
	
l967:	
	
l966:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(48/8),(48)&7
	goto	u4271
	goto	u4270
u4271:
	goto	l966
u4270:
	goto	l6361
	
l968:	
	line	239
	
l6361:	
;ds3231.c: 239: delay_ms(50);
	movlw	low(032h)
	movwf	(?_delay_ms)
	movlw	high(032h)
	movwf	((?_delay_ms))+1
	fcall	_delay_ms
	line	244
;ds3231.c: 244: while(RB0 == 1)
	goto	l6387
	
l970:	
	line	247
;ds3231.c: 245: {
;ds3231.c: 247: if(RB1==0)
	btfsc	(49/8),(49)&7
	goto	u4281
	goto	u4280
u4281:
	goto	l6371
u4280:
	line	249
	
l6363:	
;ds3231.c: 248: {
;ds3231.c: 249: delay_ms(50);
	movlw	low(032h)
	movwf	(?_delay_ms)
	movlw	high(032h)
	movwf	((?_delay_ms))+1
	fcall	_delay_ms
	line	250
;ds3231.c: 250: while(RB1==0);
	goto	l972
	
l973:	
	
l972:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(49/8),(49)&7
	goto	u4291
	goto	u4290
u4291:
	goto	l972
u4290:
	goto	l6365
	
l974:	
	line	252
	
l6365:	
;ds3231.c: 252: if(date<=30)date++;
	movlw	(01Fh)
	subwf	(_date),w
	skipnc
	goto	u4301
	goto	u4300
u4301:
	goto	l6369
u4300:
	
l6367:	
	movlw	(01h)
	movwf	(??_RTC_WRITE+0)+0
	movf	(??_RTC_WRITE+0)+0,w
	addwf	(_date),f
	goto	l6387
	line	253
	
l975:	
	
l6369:	
;ds3231.c: 253: else date=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_date)
	goto	l6387
	
l976:	
	line	254
;ds3231.c: 254: }
	goto	l6387
	line	256
	
l971:	
	line	258
	
l6371:	
;ds3231.c: 256: else
;ds3231.c: 257: {
;ds3231.c: 258: lcd_goto(0xc3);
	movlw	(0C3h)
	fcall	_lcd_goto
	line	259
	
l6373:	
;ds3231.c: 259: lcd_bcd(2,date);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_date),w
	movwf	(??_RTC_WRITE+0)+0
	clrf	(??_RTC_WRITE+0)+0+1
	movf	0+(??_RTC_WRITE+0)+0,w
	movwf	(?_lcd_bcd)
	movf	1+(??_RTC_WRITE+0)+0,w
	movwf	(?_lcd_bcd+1)
	movlw	(02h)
	fcall	_lcd_bcd
	line	260
	
l6375:	
;ds3231.c: 260: delay_ms(100);
	movlw	low(064h)
	movwf	(?_delay_ms)
	movlw	high(064h)
	movwf	((?_delay_ms))+1
	fcall	_delay_ms
	line	261
	
l6377:	
;ds3231.c: 261: lcd_goto(0xc3);
	movlw	(0C3h)
	fcall	_lcd_goto
	line	262
	
l6379:	
;ds3231.c: 262: lcd_putchar(' ');
	movlw	(020h)
	fcall	_lcd_putchar
	line	263
	
l6381:	
;ds3231.c: 263: lcd_goto(0xc4);
	movlw	(0C4h)
	fcall	_lcd_goto
	line	264
	
l6383:	
;ds3231.c: 264: lcd_putchar(' ');
	movlw	(020h)
	fcall	_lcd_putchar
	line	266
	
l6385:	
;ds3231.c: 266: delay_ms(150);
	movlw	low(096h)
	movwf	(?_delay_ms)
	movlw	high(096h)
	movwf	((?_delay_ms))+1
	fcall	_delay_ms
	goto	l6387
	line	267
	
l977:	
	goto	l6387
	line	268
	
l969:	
	line	244
	
l6387:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(48/8),(48)&7
	goto	u4311
	goto	u4310
u4311:
	goto	l970
u4310:
	goto	l6389
	
l978:	
	line	270
	
l6389:	
;ds3231.c: 267: }
;ds3231.c: 268: }
;ds3231.c: 270: lcd_goto(0xc3);
	movlw	(0C3h)
	fcall	_lcd_goto
	line	271
	
l6391:	
;ds3231.c: 271: lcd_bcd(2,date);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_date),w
	movwf	(??_RTC_WRITE+0)+0
	clrf	(??_RTC_WRITE+0)+0+1
	movf	0+(??_RTC_WRITE+0)+0,w
	movwf	(?_lcd_bcd)
	movf	1+(??_RTC_WRITE+0)+0,w
	movwf	(?_lcd_bcd+1)
	movlw	(02h)
	fcall	_lcd_bcd
	line	272
;ds3231.c: 272: while(RB0==0);
	goto	l979
	
l980:	
	
l979:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(48/8),(48)&7
	goto	u4321
	goto	u4320
u4321:
	goto	l979
u4320:
	goto	l6393
	
l981:	
	line	273
	
l6393:	
;ds3231.c: 273: delay_ms(50);
	movlw	low(032h)
	movwf	(?_delay_ms)
	movlw	high(032h)
	movwf	((?_delay_ms))+1
	fcall	_delay_ms
	line	276
;ds3231.c: 276: while(RB0 == 1)
	goto	l6419
	
l983:	
	line	279
;ds3231.c: 277: {
;ds3231.c: 279: if(RB1==0)
	btfsc	(49/8),(49)&7
	goto	u4331
	goto	u4330
u4331:
	goto	l6403
u4330:
	line	281
	
l6395:	
;ds3231.c: 280: {
;ds3231.c: 281: delay_ms(50);
	movlw	low(032h)
	movwf	(?_delay_ms)
	movlw	high(032h)
	movwf	((?_delay_ms))+1
	fcall	_delay_ms
	line	282
;ds3231.c: 282: while(RB1==0);
	goto	l985
	
l986:	
	
l985:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(49/8),(49)&7
	goto	u4341
	goto	u4340
u4341:
	goto	l985
u4340:
	goto	l6397
	
l987:	
	line	284
	
l6397:	
;ds3231.c: 284: if(month<=11)month++;
	movlw	(0Ch)
	subwf	(_month),w
	skipnc
	goto	u4351
	goto	u4350
u4351:
	goto	l6401
u4350:
	
l6399:	
	movlw	(01h)
	movwf	(??_RTC_WRITE+0)+0
	movf	(??_RTC_WRITE+0)+0,w
	addwf	(_month),f
	goto	l6419
	line	285
	
l988:	
	
l6401:	
;ds3231.c: 285: else month=1;
	clrf	(_month)
	bsf	status,0
	rlf	(_month),f
	goto	l6419
	
l989:	
	line	286
;ds3231.c: 286: }
	goto	l6419
	line	288
	
l984:	
	line	290
	
l6403:	
;ds3231.c: 288: else
;ds3231.c: 289: {
;ds3231.c: 290: lcd_goto(0xc6);
	movlw	(0C6h)
	fcall	_lcd_goto
	line	291
	
l6405:	
;ds3231.c: 291: lcd_bcd(2,month);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_month),w
	movwf	(??_RTC_WRITE+0)+0
	clrf	(??_RTC_WRITE+0)+0+1
	movf	0+(??_RTC_WRITE+0)+0,w
	movwf	(?_lcd_bcd)
	movf	1+(??_RTC_WRITE+0)+0,w
	movwf	(?_lcd_bcd+1)
	movlw	(02h)
	fcall	_lcd_bcd
	line	292
	
l6407:	
;ds3231.c: 292: delay_ms(100);
	movlw	low(064h)
	movwf	(?_delay_ms)
	movlw	high(064h)
	movwf	((?_delay_ms))+1
	fcall	_delay_ms
	line	293
	
l6409:	
;ds3231.c: 293: lcd_goto(0xc6);
	movlw	(0C6h)
	fcall	_lcd_goto
	line	294
	
l6411:	
;ds3231.c: 294: lcd_putchar(' ');
	movlw	(020h)
	fcall	_lcd_putchar
	line	295
	
l6413:	
;ds3231.c: 295: lcd_goto(0xc7);
	movlw	(0C7h)
	fcall	_lcd_goto
	line	296
	
l6415:	
;ds3231.c: 296: lcd_putchar(' ');
	movlw	(020h)
	fcall	_lcd_putchar
	line	298
	
l6417:	
;ds3231.c: 298: delay_ms(150);
	movlw	low(096h)
	movwf	(?_delay_ms)
	movlw	high(096h)
	movwf	((?_delay_ms))+1
	fcall	_delay_ms
	goto	l6419
	line	299
	
l990:	
	goto	l6419
	line	300
	
l982:	
	line	276
	
l6419:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(48/8),(48)&7
	goto	u4361
	goto	u4360
u4361:
	goto	l983
u4360:
	goto	l6421
	
l991:	
	line	302
	
l6421:	
;ds3231.c: 299: }
;ds3231.c: 300: }
;ds3231.c: 302: lcd_goto(0xc6);
	movlw	(0C6h)
	fcall	_lcd_goto
	line	303
	
l6423:	
;ds3231.c: 303: lcd_bcd(2,month);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_month),w
	movwf	(??_RTC_WRITE+0)+0
	clrf	(??_RTC_WRITE+0)+0+1
	movf	0+(??_RTC_WRITE+0)+0,w
	movwf	(?_lcd_bcd)
	movf	1+(??_RTC_WRITE+0)+0,w
	movwf	(?_lcd_bcd+1)
	movlw	(02h)
	fcall	_lcd_bcd
	line	304
;ds3231.c: 304: while(RB0==0);
	goto	l992
	
l993:	
	
l992:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(48/8),(48)&7
	goto	u4371
	goto	u4370
u4371:
	goto	l992
u4370:
	goto	l6425
	
l994:	
	line	305
	
l6425:	
;ds3231.c: 305: delay_ms(50);
	movlw	low(032h)
	movwf	(?_delay_ms)
	movlw	high(032h)
	movwf	((?_delay_ms))+1
	fcall	_delay_ms
	line	311
;ds3231.c: 311: while(RB0 == 1)
	goto	l6451
	
l996:	
	line	314
;ds3231.c: 312: {
;ds3231.c: 314: if(RB1==0)
	btfsc	(49/8),(49)&7
	goto	u4381
	goto	u4380
u4381:
	goto	l6435
u4380:
	line	316
	
l6427:	
;ds3231.c: 315: {
;ds3231.c: 316: delay_ms(50);
	movlw	low(032h)
	movwf	(?_delay_ms)
	movlw	high(032h)
	movwf	((?_delay_ms))+1
	fcall	_delay_ms
	line	317
;ds3231.c: 317: while(RB1==0);
	goto	l998
	
l999:	
	
l998:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(49/8),(49)&7
	goto	u4391
	goto	u4390
u4391:
	goto	l998
u4390:
	goto	l6429
	
l1000:	
	line	319
	
l6429:	
;ds3231.c: 319: if(year<=20)year++;
	movlw	(015h)
	subwf	(_year),w
	skipnc
	goto	u4401
	goto	u4400
u4401:
	goto	l6433
u4400:
	
l6431:	
	movlw	(01h)
	movwf	(??_RTC_WRITE+0)+0
	movf	(??_RTC_WRITE+0)+0,w
	addwf	(_year),f
	goto	l6451
	line	320
	
l1001:	
	
l6433:	
;ds3231.c: 320: else year=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_year)
	goto	l6451
	
l1002:	
	line	321
;ds3231.c: 321: }
	goto	l6451
	line	323
	
l997:	
	line	325
	
l6435:	
;ds3231.c: 323: else
;ds3231.c: 324: {
;ds3231.c: 325: lcd_goto(0xc9);
	movlw	(0C9h)
	fcall	_lcd_goto
	line	326
	
l6437:	
;ds3231.c: 326: lcd_bcd(2,year);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_year),w
	movwf	(??_RTC_WRITE+0)+0
	clrf	(??_RTC_WRITE+0)+0+1
	movf	0+(??_RTC_WRITE+0)+0,w
	movwf	(?_lcd_bcd)
	movf	1+(??_RTC_WRITE+0)+0,w
	movwf	(?_lcd_bcd+1)
	movlw	(02h)
	fcall	_lcd_bcd
	line	327
	
l6439:	
;ds3231.c: 327: delay_ms(100);
	movlw	low(064h)
	movwf	(?_delay_ms)
	movlw	high(064h)
	movwf	((?_delay_ms))+1
	fcall	_delay_ms
	line	328
	
l6441:	
;ds3231.c: 328: lcd_goto(0xc9);
	movlw	(0C9h)
	fcall	_lcd_goto
	line	329
	
l6443:	
;ds3231.c: 329: lcd_putchar(' ');
	movlw	(020h)
	fcall	_lcd_putchar
	line	330
	
l6445:	
;ds3231.c: 330: lcd_goto(0xca);
	movlw	(0CAh)
	fcall	_lcd_goto
	line	331
	
l6447:	
;ds3231.c: 331: lcd_putchar(' ');
	movlw	(020h)
	fcall	_lcd_putchar
	line	333
	
l6449:	
;ds3231.c: 333: delay_ms(150);
	movlw	low(096h)
	movwf	(?_delay_ms)
	movlw	high(096h)
	movwf	((?_delay_ms))+1
	fcall	_delay_ms
	goto	l6451
	line	334
	
l1003:	
	goto	l6451
	line	335
	
l995:	
	line	311
	
l6451:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(48/8),(48)&7
	goto	u4411
	goto	u4410
u4411:
	goto	l996
u4410:
	goto	l6453
	
l1004:	
	line	337
	
l6453:	
;ds3231.c: 334: }
;ds3231.c: 335: }
;ds3231.c: 337: lcd_goto(0xc9);
	movlw	(0C9h)
	fcall	_lcd_goto
	line	338
	
l6455:	
;ds3231.c: 338: lcd_bcd(2,year);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_year),w
	movwf	(??_RTC_WRITE+0)+0
	clrf	(??_RTC_WRITE+0)+0+1
	movf	0+(??_RTC_WRITE+0)+0,w
	movwf	(?_lcd_bcd)
	movf	1+(??_RTC_WRITE+0)+0,w
	movwf	(?_lcd_bcd+1)
	movlw	(02h)
	fcall	_lcd_bcd
	line	339
;ds3231.c: 339: while(RB0==0);
	goto	l1005
	
l1006:	
	
l1005:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(48/8),(48)&7
	goto	u4421
	goto	u4420
u4421:
	goto	l1005
u4420:
	goto	l6457
	
l1007:	
	line	340
	
l6457:	
;ds3231.c: 340: delay_ms(50);
	movlw	low(032h)
	movwf	(?_delay_ms)
	movlw	high(032h)
	movwf	((?_delay_ms))+1
	fcall	_delay_ms
	line	342
;ds3231.c: 342: i2c_rtc_set_day(day);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_day),w
	fcall	_i2c_rtc_set_day
	line	343
;ds3231.c: 343: i2c_rtc_set_seconds(clksec);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_clksec),w
	fcall	_i2c_rtc_set_seconds
	line	344
;ds3231.c: 344: i2c_rtc_set_minutes(clkmin);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_clkmin),w
	fcall	_i2c_rtc_set_minutes
	line	345
;ds3231.c: 345: i2c_rtc_set_hours(clkhrs);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_clkhrs),w
	fcall	_i2c_rtc_set_hours
	line	346
;ds3231.c: 346: i2c_rtc_set_date(date);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_date),w
	fcall	_i2c_rtc_set_date
	line	347
;ds3231.c: 347: i2c_rtc_set_month(month);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_month),w
	fcall	_i2c_rtc_set_month
	line	348
;ds3231.c: 348: i2c_rtc_set_year(year);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_year),w
	fcall	_i2c_rtc_set_year
	line	350
	
l1008:	
	return
	opt stack 0
GLOBAL	__end_of_RTC_WRITE
	__end_of_RTC_WRITE:
;; =============== function _RTC_WRITE ends ============

	signat	_RTC_WRITE,88
	global	_init
psect	text626,local,class=CODE,delta=2
global __ptext626
__ptext626:

;; *************** function _init *****************
;; Defined at:
;;		line 107 in file "C:\Users\younce\Documents\DS3231(PIC16F887)\ds3231.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_lcd_initialize
;;		_i2c_initialize
;;		_i2c_rtc_initialize
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text626
	file	"C:\Users\younce\Documents\DS3231(PIC16F887)\ds3231.c"
	line	107
	global	__size_of_init
	__size_of_init	equ	__end_of_init-_init
	
_init:	
	opt	stack 3
; Regs used in _init: [wreg+status,2+status,0+pclath+cstack]
	line	108
	
l6249:	
;ds3231.c: 108: TRISB = 0b00000011;
	movlw	(03h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	109
	
l6251:	
;ds3231.c: 109: TRISD = 0b00000000;
	clrf	(136)^080h	;volatile
	line	110
	
l6253:	
;ds3231.c: 110: ANSEL = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	111
	
l6255:	
;ds3231.c: 111: ANSELH = 0;
	clrf	(393)^0180h	;volatile
	line	112
	
l6257:	
;ds3231.c: 112: lcd_initialize();
	fcall	_lcd_initialize
	line	113
	
l6259:	
;ds3231.c: 113: i2c_initialize();
	fcall	_i2c_initialize
	line	114
	
l6261:	
;ds3231.c: 114: i2c_rtc_initialize();
	fcall	_i2c_rtc_initialize
	line	115
	
l918:	
	return
	opt stack 0
GLOBAL	__end_of_init
	__end_of_init:
;; =============== function _init ends ============

	signat	_init,88
	global	_lcd_initialize
psect	text627,local,class=CODE,delta=2
global __ptext627
__ptext627:

;; *************** function _lcd_initialize *****************
;; Defined at:
;;		line 103 in file "C:\Users\younce\Documents\DS3231(PIC16F887)\lcd.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_set_lcd_e
;;		_send_lcd_data
;;		_lcd_clear
;; This function is called by:
;;		_init
;; This function uses a non-reentrant model
;;
psect	text627
	file	"C:\Users\younce\Documents\DS3231(PIC16F887)\lcd.c"
	line	103
	global	__size_of_lcd_initialize
	__size_of_lcd_initialize	equ	__end_of_lcd_initialize-_lcd_initialize
	
_lcd_initialize:	
	opt	stack 3
; Regs used in _lcd_initialize: [wreg+status,2+status,0+pclath+cstack]
	line	106
	
l6237:	
;lcd.c: 106: set_lcd_e(1);
	movlw	(01h)
	fcall	_set_lcd_e
	line	107
	
l6239:	
;lcd.c: 107: _delay((unsigned long)((15)*(20000000/4000.0)));
	opt asmopt_off
movlw	98
movwf	((??_lcd_initialize+0)+0+1),f
	movlw	101
movwf	((??_lcd_initialize+0)+0),f
u4447:
	decfsz	((??_lcd_initialize+0)+0),f
	goto	u4447
	decfsz	((??_lcd_initialize+0)+0+1),f
	goto	u4447
	nop2
opt asmopt_on

	line	110
	
l6241:	
;lcd.c: 110: send_lcd_data(0, 0b00100000 | 0b00010000 | 0b00001000 | 0b00000000);
	movlw	(038h)
	movwf	(??_lcd_initialize+0)+0
	movf	(??_lcd_initialize+0)+0,w
	movwf	(?_send_lcd_data)
	movlw	(0)
	fcall	_send_lcd_data
	line	114
	
l6243:	
;lcd.c: 114: send_lcd_data(0, 0b00000100 | 0b00000010 | 0b00000000);
	movlw	(06h)
	movwf	(??_lcd_initialize+0)+0
	movf	(??_lcd_initialize+0)+0,w
	movwf	(?_send_lcd_data)
	movlw	(0)
	fcall	_send_lcd_data
	line	117
	
l6245:	
;lcd.c: 117: send_lcd_data(0, 0b00001000 | 0b00000100 | 0b00000000 | 0b00000000);
	movlw	(0Ch)
	movwf	(??_lcd_initialize+0)+0
	movf	(??_lcd_initialize+0)+0,w
	movwf	(?_send_lcd_data)
	movlw	(0)
	fcall	_send_lcd_data
	line	120
	
l6247:	
;lcd.c: 120: lcd_clear();
	fcall	_lcd_clear
	line	121
	
l3662:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_initialize
	__end_of_lcd_initialize:
;; =============== function _lcd_initialize ends ============

	signat	_lcd_initialize,88
	global	_lcd_bcd
psect	text628,local,class=CODE,delta=2
global __ptext628
__ptext628:

;; *************** function _lcd_bcd *****************
;; Defined at:
;;		line 294 in file "C:\Users\younce\Documents\DS3231(PIC16F887)\lcd.c"
;; Parameters:    Size  Location     Type
;;  uc_digit        1    wreg     unsigned char 
;;  ui_number       2    8[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  uc_digit        1   10[BANK0 ] unsigned char 
;;  ui_decimal     10    0[BANK0 ] unsigned int [5]
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0      11       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         6      11       0       0       0
;;Total ram usage:       17 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___lwdiv
;;		___lwmod
;;		_lcd_putchar
;; This function is called by:
;;		_main
;;		_RTC_WRITE
;; This function uses a non-reentrant model
;;
psect	text628
	file	"C:\Users\younce\Documents\DS3231(PIC16F887)\lcd.c"
	line	294
	global	__size_of_lcd_bcd
	__size_of_lcd_bcd	equ	__end_of_lcd_bcd-_lcd_bcd
	
_lcd_bcd:	
	opt	stack 4
; Regs used in _lcd_bcd: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;lcd_bcd@uc_digit stored from wreg
	line	295
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(lcd_bcd@uc_digit)
	
l6205:	
;lcd.c: 295: unsigned int ui_decimal[5] ={ 0 };
	movlw	(lcd_bcd@ui_decimal)&0ffh
	movwf	fsr0
	movlw	low(lcd_bcd@F810)
	movwf	(??_lcd_bcd+0)+0
	movf	fsr0,w
	movwf	((??_lcd_bcd+0)+0+1)
	movlw	10
	movwf	((??_lcd_bcd+0)+0+2)
u4080:
	movf	(??_lcd_bcd+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	
	movf	indf,w
	movwf	((??_lcd_bcd+0)+0+3)
	incf	(??_lcd_bcd+0)+0,f
	movf	((??_lcd_bcd+0)+0+1),w
	movwf	fsr0
	
	movf	((??_lcd_bcd+0)+0+3),w
	movwf	indf
	incf	((??_lcd_bcd+0)+0+1),f
	decfsz	((??_lcd_bcd+0)+0+2),f
	goto	u4080
	line	297
	
l6207:	
;lcd.c: 297: ui_decimal[4] = ui_number/10000;
	movlw	low(02710h)
	movwf	(?___lwdiv)
	movlw	high(02710h)
	movwf	((?___lwdiv))+1
	movf	(lcd_bcd@ui_number+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(lcd_bcd@ui_number),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	1+(lcd_bcd@ui_decimal)+08h
	addwf	1+(lcd_bcd@ui_decimal)+08h
	movf	(0+(?___lwdiv)),w
	clrf	0+(lcd_bcd@ui_decimal)+08h
	addwf	0+(lcd_bcd@ui_decimal)+08h

	line	298
	
l6209:	
;lcd.c: 298: ui_decimal[3] = ui_number%10000;
	movlw	low(02710h)
	movwf	(?___lwmod)
	movlw	high(02710h)
	movwf	((?___lwmod))+1
	movf	(lcd_bcd@ui_number+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(lcd_bcd@ui_number),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	movf	(1+(?___lwmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	1+(lcd_bcd@ui_decimal)+06h
	addwf	1+(lcd_bcd@ui_decimal)+06h
	movf	(0+(?___lwmod)),w
	clrf	0+(lcd_bcd@ui_decimal)+06h
	addwf	0+(lcd_bcd@ui_decimal)+06h

	line	299
	
l6211:	
;lcd.c: 299: ui_decimal[2] = ui_decimal[3]%1000;
	movlw	low(03E8h)
	movwf	(?___lwmod)
	movlw	high(03E8h)
	movwf	((?___lwmod))+1
	movf	1+(lcd_bcd@ui_decimal)+06h,w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	0+(lcd_bcd@ui_decimal)+06h,w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	movf	(1+(?___lwmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	1+(lcd_bcd@ui_decimal)+04h
	addwf	1+(lcd_bcd@ui_decimal)+04h
	movf	(0+(?___lwmod)),w
	clrf	0+(lcd_bcd@ui_decimal)+04h
	addwf	0+(lcd_bcd@ui_decimal)+04h

	line	300
	
l6213:	
;lcd.c: 300: ui_decimal[3] = ui_decimal[3]/1000;
	movlw	low(03E8h)
	movwf	(?___lwdiv)
	movlw	high(03E8h)
	movwf	((?___lwdiv))+1
	movf	1+(lcd_bcd@ui_decimal)+06h,w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	0+(lcd_bcd@ui_decimal)+06h,w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	1+(lcd_bcd@ui_decimal)+06h
	addwf	1+(lcd_bcd@ui_decimal)+06h
	movf	(0+(?___lwdiv)),w
	clrf	0+(lcd_bcd@ui_decimal)+06h
	addwf	0+(lcd_bcd@ui_decimal)+06h

	line	301
	
l6215:	
;lcd.c: 301: ui_decimal[1] = ui_decimal[2]%100;
	movlw	low(064h)
	movwf	(?___lwmod)
	movlw	high(064h)
	movwf	((?___lwmod))+1
	movf	1+(lcd_bcd@ui_decimal)+04h,w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	0+(lcd_bcd@ui_decimal)+04h,w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	movf	(1+(?___lwmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	1+(lcd_bcd@ui_decimal)+02h
	addwf	1+(lcd_bcd@ui_decimal)+02h
	movf	(0+(?___lwmod)),w
	clrf	0+(lcd_bcd@ui_decimal)+02h
	addwf	0+(lcd_bcd@ui_decimal)+02h

	line	302
	
l6217:	
;lcd.c: 302: ui_decimal[2] = ui_decimal[2]/100;
	movlw	low(064h)
	movwf	(?___lwdiv)
	movlw	high(064h)
	movwf	((?___lwdiv))+1
	movf	1+(lcd_bcd@ui_decimal)+04h,w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	0+(lcd_bcd@ui_decimal)+04h,w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	1+(lcd_bcd@ui_decimal)+04h
	addwf	1+(lcd_bcd@ui_decimal)+04h
	movf	(0+(?___lwdiv)),w
	clrf	0+(lcd_bcd@ui_decimal)+04h
	addwf	0+(lcd_bcd@ui_decimal)+04h

	line	303
	
l6219:	
;lcd.c: 303: ui_decimal[0] = ui_decimal[1]%10;
	movlw	low(0Ah)
	movwf	(?___lwmod)
	movlw	high(0Ah)
	movwf	((?___lwmod))+1
	movf	1+(lcd_bcd@ui_decimal)+02h,w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	0+(lcd_bcd@ui_decimal)+02h,w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	movf	(1+(?___lwmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(lcd_bcd@ui_decimal+1)
	addwf	(lcd_bcd@ui_decimal+1)
	movf	(0+(?___lwmod)),w
	clrf	(lcd_bcd@ui_decimal)
	addwf	(lcd_bcd@ui_decimal)

	line	304
	
l6221:	
;lcd.c: 304: ui_decimal[1] = ui_decimal[1]/10;
	movlw	low(0Ah)
	movwf	(?___lwdiv)
	movlw	high(0Ah)
	movwf	((?___lwdiv))+1
	movf	1+(lcd_bcd@ui_decimal)+02h,w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	0+(lcd_bcd@ui_decimal)+02h,w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	1+(lcd_bcd@ui_decimal)+02h
	addwf	1+(lcd_bcd@ui_decimal)+02h
	movf	(0+(?___lwdiv)),w
	clrf	0+(lcd_bcd@ui_decimal)+02h
	addwf	0+(lcd_bcd@ui_decimal)+02h

	line	306
	
l6223:	
;lcd.c: 306: if (uc_digit > 5) uc_digit = 5;
	movlw	(06h)
	subwf	(lcd_bcd@uc_digit),w
	skipc
	goto	u4091
	goto	u4090
u4091:
	goto	l6227
u4090:
	
l6225:	
	movlw	(05h)
	movwf	(??_lcd_bcd+0)+0
	movf	(??_lcd_bcd+0)+0,w
	movwf	(lcd_bcd@uc_digit)
	goto	l6227
	
l3695:	
	line	307
	
l6227:	
;lcd.c: 307: for( ; uc_digit > 0; uc_digit--)
	movf	(lcd_bcd@uc_digit),f
	skipz
	goto	u4101
	goto	u4100
u4101:
	goto	l6231
u4100:
	goto	l3698
	
l6229:	
	goto	l3698
	line	308
	
l3696:	
	line	309
	
l6231:	
;lcd.c: 308: {
;lcd.c: 309: lcd_putchar(ui_decimal[uc_digit - 1] + 0x30);
	movf	(lcd_bcd@uc_digit),w
	movwf	(??_lcd_bcd+0)+0
	addwf	(??_lcd_bcd+0)+0,w
	addlw	0FEh
	addlw	lcd_bcd@ui_decimal&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	addlw	030h
	fcall	_lcd_putchar
	line	307
	
l6233:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(lcd_bcd@uc_digit),f
	
l6235:	
	movf	(lcd_bcd@uc_digit),f
	skipz
	goto	u4111
	goto	u4110
u4111:
	goto	l6231
u4110:
	goto	l3698
	
l3697:	
	line	311
	
l3698:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_bcd
	__end_of_lcd_bcd:
;; =============== function _lcd_bcd ends ============

	signat	_lcd_bcd,8312
	global	_lcd_clear
psect	text629,local,class=CODE,delta=2
global __ptext629
__ptext629:

;; *************** function _lcd_clear *****************
;; Defined at:
;;		line 156 in file "C:\Users\younce\Documents\DS3231(PIC16F887)\lcd.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_send_lcd_data
;; This function is called by:
;;		_lcd_initialize
;; This function uses a non-reentrant model
;;
psect	text629
	file	"C:\Users\younce\Documents\DS3231(PIC16F887)\lcd.c"
	line	156
	global	__size_of_lcd_clear
	__size_of_lcd_clear	equ	__end_of_lcd_clear-_lcd_clear
	
_lcd_clear:	
	opt	stack 3
; Regs used in _lcd_clear: [wreg+status,2+status,0+pclath+cstack]
	line	158
	
l6203:	
;lcd.c: 158: send_lcd_data(0, 0b00000001);
	clrf	(?_send_lcd_data)
	bsf	status,0
	rlf	(?_send_lcd_data),f
	movlw	(0)
	fcall	_send_lcd_data
	line	159
	
l3668:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_clear
	__end_of_lcd_clear:
;; =============== function _lcd_clear ends ============

	signat	_lcd_clear,88
	global	_lcd_putchar
psect	text630,local,class=CODE,delta=2
global __ptext630
__ptext630:

;; *************** function _lcd_putchar *****************
;; Defined at:
;;		line 240 in file "C:\Users\younce\Documents\DS3231(PIC16F887)\lcd.c"
;; Parameters:    Size  Location     Type
;;  c_data          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c_data          1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_send_lcd_data
;; This function is called by:
;;		_main
;;		_RTC_WRITE
;;		_lcd_bcd
;;		_lcd_putstr
;; This function uses a non-reentrant model
;;
psect	text630
	file	"C:\Users\younce\Documents\DS3231(PIC16F887)\lcd.c"
	line	240
	global	__size_of_lcd_putchar
	__size_of_lcd_putchar	equ	__end_of_lcd_putchar-_lcd_putchar
	
_lcd_putchar:	
	opt	stack 5
; Regs used in _lcd_putchar: [wreg+status,2+status,0+pclath+cstack]
;lcd_putchar@c_data stored from wreg
	line	242
	movwf	(lcd_putchar@c_data)
	
l6201:	
;lcd.c: 242: send_lcd_data(1, (unsigned char)c_data);
	movf	(lcd_putchar@c_data),w
	movwf	(??_lcd_putchar+0)+0
	movf	(??_lcd_putchar+0)+0,w
	movwf	(?_send_lcd_data)
	movlw	(01h)
	fcall	_send_lcd_data
	line	243
	
l3680:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_putchar
	__end_of_lcd_putchar:
;; =============== function _lcd_putchar ends ============

	signat	_lcd_putchar,4216
	global	_lcd_goto
psect	text631,local,class=CODE,delta=2
global __ptext631
__ptext631:

;; *************** function _lcd_goto *****************
;; Defined at:
;;		line 219 in file "C:\Users\younce\Documents\DS3231(PIC16F887)\lcd.c"
;; Parameters:    Size  Location     Type
;;  uc_position     1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  uc_position     1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_send_lcd_data
;; This function is called by:
;;		_main
;;		_RTC_WRITE
;; This function uses a non-reentrant model
;;
psect	text631
	file	"C:\Users\younce\Documents\DS3231(PIC16F887)\lcd.c"
	line	219
	global	__size_of_lcd_goto
	__size_of_lcd_goto	equ	__end_of_lcd_goto-_lcd_goto
	
_lcd_goto:	
	opt	stack 5
; Regs used in _lcd_goto: [wreg+status,2+status,0+pclath+cstack]
;lcd_goto@uc_position stored from wreg
	line	221
	movwf	(lcd_goto@uc_position)
	
l6199:	
;lcd.c: 221: send_lcd_data(0, 0b10000000 | uc_position);
	movf	(lcd_goto@uc_position),w
	iorlw	080h
	movwf	(??_lcd_goto+0)+0
	movf	(??_lcd_goto+0)+0,w
	movwf	(?_send_lcd_data)
	movlw	(0)
	fcall	_send_lcd_data
	line	222
	
l3677:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_goto
	__end_of_lcd_goto:
;; =============== function _lcd_goto ends ============

	signat	_lcd_goto,4216
	global	_send_lcd_data
psect	text632,local,class=CODE,delta=2
global __ptext632
__ptext632:

;; *************** function _send_lcd_data *****************
;; Defined at:
;;		line 328 in file "C:\Users\younce\Documents\DS3231(PIC16F887)\lcd.c"
;; Parameters:    Size  Location     Type
;;  b_rs            1    wreg     unsigned char 
;;  uc_data         1    1[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  b_rs            1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_set_lcd_rs
;;		_set_lcd_data
;;		_set_lcd_e
;; This function is called by:
;;		_lcd_initialize
;;		_lcd_clear
;;		_lcd_goto
;;		_lcd_putchar
;;		_lcd_config
;;		_lcd_home
;;		_lcd_2ndline
;; This function uses a non-reentrant model
;;
psect	text632
	file	"C:\Users\younce\Documents\DS3231(PIC16F887)\lcd.c"
	line	328
	global	__size_of_send_lcd_data
	__size_of_send_lcd_data	equ	__end_of_send_lcd_data-_send_lcd_data
	
_send_lcd_data:	
	opt	stack 5
; Regs used in _send_lcd_data: [wreg+status,2+status,0+pclath+cstack]
;send_lcd_data@b_rs stored from wreg
	line	330
	movwf	(send_lcd_data@b_rs)
	
l6189:	
;lcd.c: 330: set_lcd_rs(b_rs);
	movf	(send_lcd_data@b_rs),w
	fcall	_set_lcd_rs
	line	331
;lcd.c: 331: set_lcd_data(uc_data);
	movf	(send_lcd_data@uc_data),w
	fcall	_set_lcd_data
	line	334
;lcd.c: 334: set_lcd_e(1);
	movlw	(01h)
	fcall	_set_lcd_e
	line	335
	
l6191:	
;lcd.c: 335: _delay((unsigned long)((1)*(20000000/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_send_lcd_data+0)+0+1),f
	movlw	125
movwf	((??_send_lcd_data+0)+0),f
u4457:
	decfsz	((??_send_lcd_data+0)+0),f
	goto	u4457
	decfsz	((??_send_lcd_data+0)+0+1),f
	goto	u4457
opt asmopt_on

	line	336
	
l6193:	
;lcd.c: 336: set_lcd_e(0);
	movlw	(0)
	fcall	_set_lcd_e
	line	337
;lcd.c: 337: _delay((unsigned long)((2)*(20000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_send_lcd_data+0)+0+1),f
	movlw	251
movwf	((??_send_lcd_data+0)+0),f
u4467:
	decfsz	((??_send_lcd_data+0)+0),f
	goto	u4467
	decfsz	((??_send_lcd_data+0)+0+1),f
	goto	u4467
	nop2
opt asmopt_on

	line	340
	
l6195:	
;lcd.c: 340: set_lcd_rs(0);
	movlw	(0)
	fcall	_set_lcd_rs
	line	341
	
l6197:	
;lcd.c: 341: set_lcd_data(0);
	movlw	(0)
	fcall	_set_lcd_data
	line	342
	
l3701:	
	return
	opt stack 0
GLOBAL	__end_of_send_lcd_data
	__end_of_send_lcd_data:
;; =============== function _send_lcd_data ends ============

	signat	_send_lcd_data,8312
	global	_i2c_rtc_set_year
psect	text633,local,class=CODE,delta=2
global __ptext633
__ptext633:

;; *************** function _i2c_rtc_set_year *****************
;; Defined at:
;;		line 455 in file "C:\Users\younce\Documents\DS3231(PIC16F887)\i2c_rtc.c"
;; Parameters:    Size  Location     Type
;;  uc_value        1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  uc_value        1    9[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       6       0       0       0
;;      Totals:         1       6       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___awmod
;;		___awdiv
;;		_uc_i2c_write
;; This function is called by:
;;		_RTC_WRITE
;; This function uses a non-reentrant model
;;
psect	text633
	file	"C:\Users\younce\Documents\DS3231(PIC16F887)\i2c_rtc.c"
	line	455
	global	__size_of_i2c_rtc_set_year
	__size_of_i2c_rtc_set_year	equ	__end_of_i2c_rtc_set_year-_i2c_rtc_set_year
	
_i2c_rtc_set_year:	
	opt	stack 5
; Regs used in _i2c_rtc_set_year: [wreg+status,2+status,0+pclath+cstack]
;i2c_rtc_set_year@uc_value stored from wreg
	line	457
	movwf	(i2c_rtc_set_year@uc_value)
	
l6185:	
;i2c_rtc.c: 457: if (uc_value < 100) {
	movlw	(064h)
	subwf	(i2c_rtc_set_year@uc_value),w
	skipnc
	goto	u4061
	goto	u4060
u4061:
	goto	l2815
u4060:
	line	460
	
l6187:	
;i2c_rtc.c: 460: uc_value = ((uc_value / 10) << 4) + (uc_value % 10);
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(i2c_rtc_set_year@uc_value),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_i2c_rtc_set_year+0)+0
	clrf	(??_i2c_rtc_set_year+0)+0+1
	movf	0+(??_i2c_rtc_set_year+0)+0,w
	movwf	0+(?___awdiv)+02h
	movf	1+(??_i2c_rtc_set_year+0)+0,w
	movwf	1+(?___awdiv)+02h
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_i2c_rtc_set_year+2)+0
	movlw	04h
u4075:
	clrc
	rlf	(??_i2c_rtc_set_year+2)+0,f
	addlw	-1
	skipz
	goto	u4075
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(i2c_rtc_set_year@uc_value),w
	movwf	(??_i2c_rtc_set_year+3)+0
	clrf	(??_i2c_rtc_set_year+3)+0+1
	movf	0+(??_i2c_rtc_set_year+3)+0,w
	movwf	0+(?___awmod)+02h
	movf	1+(??_i2c_rtc_set_year+3)+0,w
	movwf	1+(?___awmod)+02h
	fcall	___awmod
	movf	(0+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	0+(??_i2c_rtc_set_year+2)+0,w
	movwf	(??_i2c_rtc_set_year+5)+0
	movf	(??_i2c_rtc_set_year+5)+0,w
	movwf	(i2c_rtc_set_year@uc_value)
	line	463
;i2c_rtc.c: 463: uc_i2c_write(0b01101000, 0x06, uc_value);
	movlw	(06h)
	movwf	(??_i2c_rtc_set_year+0)+0
	movf	(??_i2c_rtc_set_year+0)+0,w
	movwf	(?_uc_i2c_write)
	movf	(i2c_rtc_set_year@uc_value),w
	movwf	(??_i2c_rtc_set_year+1)+0
	movf	(??_i2c_rtc_set_year+1)+0,w
	movwf	0+(?_uc_i2c_write)+01h
	movlw	(068h)
	fcall	_uc_i2c_write
	goto	l2815
	line	464
	
l2814:	
	line	465
	
l2815:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_rtc_set_year
	__end_of_i2c_rtc_set_year:
;; =============== function _i2c_rtc_set_year ends ============

	signat	_i2c_rtc_set_year,4216
	global	_i2c_rtc_set_month
psect	text634,local,class=CODE,delta=2
global __ptext634
__ptext634:

;; *************** function _i2c_rtc_set_month *****************
;; Defined at:
;;		line 401 in file "C:\Users\younce\Documents\DS3231(PIC16F887)\i2c_rtc.c"
;; Parameters:    Size  Location     Type
;;  uc_value        1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  uc_value        1    9[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       6       0       0       0
;;      Totals:         1       6       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___awmod
;;		___awdiv
;;		_uc_i2c_write
;; This function is called by:
;;		_RTC_WRITE
;; This function uses a non-reentrant model
;;
psect	text634
	file	"C:\Users\younce\Documents\DS3231(PIC16F887)\i2c_rtc.c"
	line	401
	global	__size_of_i2c_rtc_set_month
	__size_of_i2c_rtc_set_month	equ	__end_of_i2c_rtc_set_month-_i2c_rtc_set_month
	
_i2c_rtc_set_month:	
	opt	stack 5
; Regs used in _i2c_rtc_set_month: [wreg+status,2+status,0+pclath+cstack]
;i2c_rtc_set_month@uc_value stored from wreg
	line	403
	movwf	(i2c_rtc_set_month@uc_value)
	
l6179:	
;i2c_rtc.c: 403: if (uc_value > 0 && uc_value <= 12) {
	movf	(i2c_rtc_set_month@uc_value),w
	skipz
	goto	u4030
	goto	l2808
u4030:
	
l6181:	
	movlw	(0Dh)
	subwf	(i2c_rtc_set_month@uc_value),w
	skipnc
	goto	u4041
	goto	u4040
u4041:
	goto	l2808
u4040:
	line	406
	
l6183:	
;i2c_rtc.c: 406: uc_value = ((uc_value / 10) << 4) + (uc_value % 10);
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(i2c_rtc_set_month@uc_value),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_i2c_rtc_set_month+0)+0
	clrf	(??_i2c_rtc_set_month+0)+0+1
	movf	0+(??_i2c_rtc_set_month+0)+0,w
	movwf	0+(?___awdiv)+02h
	movf	1+(??_i2c_rtc_set_month+0)+0,w
	movwf	1+(?___awdiv)+02h
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_i2c_rtc_set_month+2)+0
	movlw	04h
u4055:
	clrc
	rlf	(??_i2c_rtc_set_month+2)+0,f
	addlw	-1
	skipz
	goto	u4055
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(i2c_rtc_set_month@uc_value),w
	movwf	(??_i2c_rtc_set_month+3)+0
	clrf	(??_i2c_rtc_set_month+3)+0+1
	movf	0+(??_i2c_rtc_set_month+3)+0,w
	movwf	0+(?___awmod)+02h
	movf	1+(??_i2c_rtc_set_month+3)+0,w
	movwf	1+(?___awmod)+02h
	fcall	___awmod
	movf	(0+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	0+(??_i2c_rtc_set_month+2)+0,w
	movwf	(??_i2c_rtc_set_month+5)+0
	movf	(??_i2c_rtc_set_month+5)+0,w
	movwf	(i2c_rtc_set_month@uc_value)
	line	409
;i2c_rtc.c: 409: uc_i2c_write(0b01101000, 0x05, uc_value);
	movlw	(05h)
	movwf	(??_i2c_rtc_set_month+0)+0
	movf	(??_i2c_rtc_set_month+0)+0,w
	movwf	(?_uc_i2c_write)
	movf	(i2c_rtc_set_month@uc_value),w
	movwf	(??_i2c_rtc_set_month+1)+0
	movf	(??_i2c_rtc_set_month+1)+0,w
	movwf	0+(?_uc_i2c_write)+01h
	movlw	(068h)
	fcall	_uc_i2c_write
	goto	l2808
	line	410
	
l2807:	
	line	411
	
l2808:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_rtc_set_month
	__end_of_i2c_rtc_set_month:
;; =============== function _i2c_rtc_set_month ends ============

	signat	_i2c_rtc_set_month,4216
	global	_i2c_rtc_set_date
psect	text635,local,class=CODE,delta=2
global __ptext635
__ptext635:

;; *************** function _i2c_rtc_set_date *****************
;; Defined at:
;;		line 347 in file "C:\Users\younce\Documents\DS3231(PIC16F887)\i2c_rtc.c"
;; Parameters:    Size  Location     Type
;;  uc_value        1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  uc_value        1    9[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       6       0       0       0
;;      Totals:         1       6       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___awmod
;;		___awdiv
;;		_uc_i2c_write
;; This function is called by:
;;		_RTC_WRITE
;; This function uses a non-reentrant model
;;
psect	text635
	file	"C:\Users\younce\Documents\DS3231(PIC16F887)\i2c_rtc.c"
	line	347
	global	__size_of_i2c_rtc_set_date
	__size_of_i2c_rtc_set_date	equ	__end_of_i2c_rtc_set_date-_i2c_rtc_set_date
	
_i2c_rtc_set_date:	
	opt	stack 5
; Regs used in _i2c_rtc_set_date: [wreg+status,2+status,0+pclath+cstack]
;i2c_rtc_set_date@uc_value stored from wreg
	line	349
	movwf	(i2c_rtc_set_date@uc_value)
	
l6173:	
;i2c_rtc.c: 349: if (uc_value > 0 && uc_value <= 31) {
	movf	(i2c_rtc_set_date@uc_value),w
	skipz
	goto	u4000
	goto	l2801
u4000:
	
l6175:	
	movlw	(020h)
	subwf	(i2c_rtc_set_date@uc_value),w
	skipnc
	goto	u4011
	goto	u4010
u4011:
	goto	l2801
u4010:
	line	352
	
l6177:	
;i2c_rtc.c: 352: uc_value = ((uc_value / 10) << 4) + (uc_value % 10);
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(i2c_rtc_set_date@uc_value),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_i2c_rtc_set_date+0)+0
	clrf	(??_i2c_rtc_set_date+0)+0+1
	movf	0+(??_i2c_rtc_set_date+0)+0,w
	movwf	0+(?___awdiv)+02h
	movf	1+(??_i2c_rtc_set_date+0)+0,w
	movwf	1+(?___awdiv)+02h
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_i2c_rtc_set_date+2)+0
	movlw	04h
u4025:
	clrc
	rlf	(??_i2c_rtc_set_date+2)+0,f
	addlw	-1
	skipz
	goto	u4025
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(i2c_rtc_set_date@uc_value),w
	movwf	(??_i2c_rtc_set_date+3)+0
	clrf	(??_i2c_rtc_set_date+3)+0+1
	movf	0+(??_i2c_rtc_set_date+3)+0,w
	movwf	0+(?___awmod)+02h
	movf	1+(??_i2c_rtc_set_date+3)+0,w
	movwf	1+(?___awmod)+02h
	fcall	___awmod
	movf	(0+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	0+(??_i2c_rtc_set_date+2)+0,w
	movwf	(??_i2c_rtc_set_date+5)+0
	movf	(??_i2c_rtc_set_date+5)+0,w
	movwf	(i2c_rtc_set_date@uc_value)
	line	355
;i2c_rtc.c: 355: uc_i2c_write(0b01101000, 0x04, uc_value);
	movlw	(04h)
	movwf	(??_i2c_rtc_set_date+0)+0
	movf	(??_i2c_rtc_set_date+0)+0,w
	movwf	(?_uc_i2c_write)
	movf	(i2c_rtc_set_date@uc_value),w
	movwf	(??_i2c_rtc_set_date+1)+0
	movf	(??_i2c_rtc_set_date+1)+0,w
	movwf	0+(?_uc_i2c_write)+01h
	movlw	(068h)
	fcall	_uc_i2c_write
	goto	l2801
	line	356
	
l2800:	
	line	357
	
l2801:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_rtc_set_date
	__end_of_i2c_rtc_set_date:
;; =============== function _i2c_rtc_set_date ends ============

	signat	_i2c_rtc_set_date,4216
	global	_i2c_rtc_set_hours
psect	text636,local,class=CODE,delta=2
global __ptext636
__ptext636:

;; *************** function _i2c_rtc_set_hours *****************
;; Defined at:
;;		line 237 in file "C:\Users\younce\Documents\DS3231(PIC16F887)\i2c_rtc.c"
;; Parameters:    Size  Location     Type
;;  uc_value        1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  uc_value        1   12[COMMON] unsigned char 
;;  uc_current_r    1   11[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       6       0       0       0
;;      Totals:         2       6       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___awmod
;;		___awdiv
;;		_uc_i2c_read
;;		_uc_i2c_write
;; This function is called by:
;;		_RTC_WRITE
;; This function uses a non-reentrant model
;;
psect	text636
	file	"C:\Users\younce\Documents\DS3231(PIC16F887)\i2c_rtc.c"
	line	237
	global	__size_of_i2c_rtc_set_hours
	__size_of_i2c_rtc_set_hours	equ	__end_of_i2c_rtc_set_hours-_i2c_rtc_set_hours
	
_i2c_rtc_set_hours:	
	opt	stack 5
; Regs used in _i2c_rtc_set_hours: [wreg+status,2+status,0+pclath+cstack]
;i2c_rtc_set_hours@uc_value stored from wreg
	line	244
	movwf	(i2c_rtc_set_hours@uc_value)
	
l6165:	
;i2c_rtc.c: 239: unsigned char uc_current_register_value;
;i2c_rtc.c: 244: if (uc_value < 24) {
	movlw	(018h)
	subwf	(i2c_rtc_set_hours@uc_value),w
	skipnc
	goto	u3981
	goto	u3980
u3981:
	goto	l2787
u3980:
	line	247
	
l6167:	
;i2c_rtc.c: 247: uc_value = ((uc_value / 10) << 4) + (uc_value % 10);
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(i2c_rtc_set_hours@uc_value),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_i2c_rtc_set_hours+0)+0
	clrf	(??_i2c_rtc_set_hours+0)+0+1
	movf	0+(??_i2c_rtc_set_hours+0)+0,w
	movwf	0+(?___awdiv)+02h
	movf	1+(??_i2c_rtc_set_hours+0)+0,w
	movwf	1+(?___awdiv)+02h
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_i2c_rtc_set_hours+2)+0
	movlw	04h
u3995:
	clrc
	rlf	(??_i2c_rtc_set_hours+2)+0,f
	addlw	-1
	skipz
	goto	u3995
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(i2c_rtc_set_hours@uc_value),w
	movwf	(??_i2c_rtc_set_hours+3)+0
	clrf	(??_i2c_rtc_set_hours+3)+0+1
	movf	0+(??_i2c_rtc_set_hours+3)+0,w
	movwf	0+(?___awmod)+02h
	movf	1+(??_i2c_rtc_set_hours+3)+0,w
	movwf	1+(?___awmod)+02h
	fcall	___awmod
	movf	(0+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	0+(??_i2c_rtc_set_hours+2)+0,w
	movwf	(??_i2c_rtc_set_hours+5)+0
	movf	(??_i2c_rtc_set_hours+5)+0,w
	movwf	(i2c_rtc_set_hours@uc_value)
	line	250
;i2c_rtc.c: 250: uc_current_register_value = uc_i2c_read(0b01101000, 0x02);
	movlw	(02h)
	movwf	(??_i2c_rtc_set_hours+0)+0
	movf	(??_i2c_rtc_set_hours+0)+0,w
	movwf	(?_uc_i2c_read)
	movlw	(068h)
	fcall	_uc_i2c_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_i2c_rtc_set_hours+1)+0
	movf	(??_i2c_rtc_set_hours+1)+0,w
	movwf	(i2c_rtc_set_hours@uc_current_register_value)
	line	253
	
l6169:	
;i2c_rtc.c: 253: uc_current_register_value &= 0x40;
	movlw	(040h)
	movwf	(??_i2c_rtc_set_hours+0)+0
	movf	(??_i2c_rtc_set_hours+0)+0,w
	andwf	(i2c_rtc_set_hours@uc_current_register_value),f
	line	256
	
l6171:	
;i2c_rtc.c: 256: uc_i2c_write(0b01101000, 0x02, uc_current_register_value | uc_value);
	movlw	(02h)
	movwf	(??_i2c_rtc_set_hours+0)+0
	movf	(??_i2c_rtc_set_hours+0)+0,w
	movwf	(?_uc_i2c_write)
	movf	(i2c_rtc_set_hours@uc_current_register_value),w
	iorwf	(i2c_rtc_set_hours@uc_value),w
	movwf	(??_i2c_rtc_set_hours+1)+0
	movf	(??_i2c_rtc_set_hours+1)+0,w
	movwf	0+(?_uc_i2c_write)+01h
	movlw	(068h)
	fcall	_uc_i2c_write
	goto	l2787
	line	257
	
l2786:	
	line	258
	
l2787:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_rtc_set_hours
	__end_of_i2c_rtc_set_hours:
;; =============== function _i2c_rtc_set_hours ends ============

	signat	_i2c_rtc_set_hours,4216
	global	_i2c_rtc_set_minutes
psect	text637,local,class=CODE,delta=2
global __ptext637
__ptext637:

;; *************** function _i2c_rtc_set_minutes *****************
;; Defined at:
;;		line 183 in file "C:\Users\younce\Documents\DS3231(PIC16F887)\i2c_rtc.c"
;; Parameters:    Size  Location     Type
;;  uc_value        1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  uc_value        1    9[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       6       0       0       0
;;      Totals:         1       6       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___awmod
;;		___awdiv
;;		_uc_i2c_write
;; This function is called by:
;;		_RTC_WRITE
;; This function uses a non-reentrant model
;;
psect	text637
	file	"C:\Users\younce\Documents\DS3231(PIC16F887)\i2c_rtc.c"
	line	183
	global	__size_of_i2c_rtc_set_minutes
	__size_of_i2c_rtc_set_minutes	equ	__end_of_i2c_rtc_set_minutes-_i2c_rtc_set_minutes
	
_i2c_rtc_set_minutes:	
	opt	stack 5
; Regs used in _i2c_rtc_set_minutes: [wreg+status,2+status,0+pclath+cstack]
;i2c_rtc_set_minutes@uc_value stored from wreg
	line	185
	movwf	(i2c_rtc_set_minutes@uc_value)
	
l6161:	
;i2c_rtc.c: 185: if (uc_value < 60) {
	movlw	(03Ch)
	subwf	(i2c_rtc_set_minutes@uc_value),w
	skipnc
	goto	u3961
	goto	u3960
u3961:
	goto	l2780
u3960:
	line	188
	
l6163:	
;i2c_rtc.c: 188: uc_value = ((uc_value / 10) << 4) + (uc_value % 10);
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(i2c_rtc_set_minutes@uc_value),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_i2c_rtc_set_minutes+0)+0
	clrf	(??_i2c_rtc_set_minutes+0)+0+1
	movf	0+(??_i2c_rtc_set_minutes+0)+0,w
	movwf	0+(?___awdiv)+02h
	movf	1+(??_i2c_rtc_set_minutes+0)+0,w
	movwf	1+(?___awdiv)+02h
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_i2c_rtc_set_minutes+2)+0
	movlw	04h
u3975:
	clrc
	rlf	(??_i2c_rtc_set_minutes+2)+0,f
	addlw	-1
	skipz
	goto	u3975
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(i2c_rtc_set_minutes@uc_value),w
	movwf	(??_i2c_rtc_set_minutes+3)+0
	clrf	(??_i2c_rtc_set_minutes+3)+0+1
	movf	0+(??_i2c_rtc_set_minutes+3)+0,w
	movwf	0+(?___awmod)+02h
	movf	1+(??_i2c_rtc_set_minutes+3)+0,w
	movwf	1+(?___awmod)+02h
	fcall	___awmod
	movf	(0+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	0+(??_i2c_rtc_set_minutes+2)+0,w
	movwf	(??_i2c_rtc_set_minutes+5)+0
	movf	(??_i2c_rtc_set_minutes+5)+0,w
	movwf	(i2c_rtc_set_minutes@uc_value)
	line	191
;i2c_rtc.c: 191: uc_i2c_write(0b01101000, 0x01, uc_value);
	clrf	(?_uc_i2c_write)
	bsf	status,0
	rlf	(?_uc_i2c_write),f
	movf	(i2c_rtc_set_minutes@uc_value),w
	movwf	(??_i2c_rtc_set_minutes+0)+0
	movf	(??_i2c_rtc_set_minutes+0)+0,w
	movwf	0+(?_uc_i2c_write)+01h
	movlw	(068h)
	fcall	_uc_i2c_write
	goto	l2780
	line	192
	
l2779:	
	line	193
	
l2780:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_rtc_set_minutes
	__end_of_i2c_rtc_set_minutes:
;; =============== function _i2c_rtc_set_minutes ends ============

	signat	_i2c_rtc_set_minutes,4216
	global	_i2c_rtc_set_seconds
psect	text638,local,class=CODE,delta=2
global __ptext638
__ptext638:

;; *************** function _i2c_rtc_set_seconds *****************
;; Defined at:
;;		line 118 in file "C:\Users\younce\Documents\DS3231(PIC16F887)\i2c_rtc.c"
;; Parameters:    Size  Location     Type
;;  uc_value        1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  uc_value        1   12[COMMON] unsigned char 
;;  uc_current_r    1   11[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       6       0       0       0
;;      Totals:         2       6       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___awmod
;;		___awdiv
;;		_uc_i2c_read
;;		_uc_i2c_write
;; This function is called by:
;;		_RTC_WRITE
;; This function uses a non-reentrant model
;;
psect	text638
	file	"C:\Users\younce\Documents\DS3231(PIC16F887)\i2c_rtc.c"
	line	118
	global	__size_of_i2c_rtc_set_seconds
	__size_of_i2c_rtc_set_seconds	equ	__end_of_i2c_rtc_set_seconds-_i2c_rtc_set_seconds
	
_i2c_rtc_set_seconds:	
	opt	stack 5
; Regs used in _i2c_rtc_set_seconds: [wreg+status,2+status,0+pclath+cstack]
;i2c_rtc_set_seconds@uc_value stored from wreg
	line	125
	movwf	(i2c_rtc_set_seconds@uc_value)
	
l6153:	
;i2c_rtc.c: 120: unsigned char uc_current_register_value;
;i2c_rtc.c: 125: if (uc_value < 60) {
	movlw	(03Ch)
	subwf	(i2c_rtc_set_seconds@uc_value),w
	skipnc
	goto	u3941
	goto	u3940
u3941:
	goto	l2773
u3940:
	line	128
	
l6155:	
;i2c_rtc.c: 128: uc_value = ((uc_value / 10) << 4) + (uc_value % 10);
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(i2c_rtc_set_seconds@uc_value),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_i2c_rtc_set_seconds+0)+0
	clrf	(??_i2c_rtc_set_seconds+0)+0+1
	movf	0+(??_i2c_rtc_set_seconds+0)+0,w
	movwf	0+(?___awdiv)+02h
	movf	1+(??_i2c_rtc_set_seconds+0)+0,w
	movwf	1+(?___awdiv)+02h
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_i2c_rtc_set_seconds+2)+0
	movlw	04h
u3955:
	clrc
	rlf	(??_i2c_rtc_set_seconds+2)+0,f
	addlw	-1
	skipz
	goto	u3955
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(i2c_rtc_set_seconds@uc_value),w
	movwf	(??_i2c_rtc_set_seconds+3)+0
	clrf	(??_i2c_rtc_set_seconds+3)+0+1
	movf	0+(??_i2c_rtc_set_seconds+3)+0,w
	movwf	0+(?___awmod)+02h
	movf	1+(??_i2c_rtc_set_seconds+3)+0,w
	movwf	1+(?___awmod)+02h
	fcall	___awmod
	movf	(0+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	0+(??_i2c_rtc_set_seconds+2)+0,w
	movwf	(??_i2c_rtc_set_seconds+5)+0
	movf	(??_i2c_rtc_set_seconds+5)+0,w
	movwf	(i2c_rtc_set_seconds@uc_value)
	line	131
;i2c_rtc.c: 131: uc_current_register_value = uc_i2c_read(0b01101000, 0x00);
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(?_uc_i2c_read)
	movlw	(068h)
	fcall	_uc_i2c_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_i2c_rtc_set_seconds+0)+0
	movf	(??_i2c_rtc_set_seconds+0)+0,w
	movwf	(i2c_rtc_set_seconds@uc_current_register_value)
	line	134
	
l6157:	
;i2c_rtc.c: 134: uc_current_register_value &= 0x80;
	movlw	(080h)
	movwf	(??_i2c_rtc_set_seconds+0)+0
	movf	(??_i2c_rtc_set_seconds+0)+0,w
	andwf	(i2c_rtc_set_seconds@uc_current_register_value),f
	line	137
	
l6159:	
;i2c_rtc.c: 137: uc_i2c_write(0b01101000, 0x00, uc_current_register_value | uc_value);
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(?_uc_i2c_write)
	movf	(i2c_rtc_set_seconds@uc_current_register_value),w
	iorwf	(i2c_rtc_set_seconds@uc_value),w
	movwf	(??_i2c_rtc_set_seconds+0)+0
	movf	(??_i2c_rtc_set_seconds+0)+0,w
	movwf	0+(?_uc_i2c_write)+01h
	movlw	(068h)
	fcall	_uc_i2c_write
	goto	l2773
	line	138
	
l2772:	
	line	139
	
l2773:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_rtc_set_seconds
	__end_of_i2c_rtc_set_seconds:
;; =============== function _i2c_rtc_set_seconds ends ============

	signat	_i2c_rtc_set_seconds,4216
	global	_i2c_rtc_set_day
psect	text639,local,class=CODE,delta=2
global __ptext639
__ptext639:

;; *************** function _i2c_rtc_set_day *****************
;; Defined at:
;;		line 297 in file "C:\Users\younce\Documents\DS3231(PIC16F887)\i2c_rtc.c"
;; Parameters:    Size  Location     Type
;;  uc_value        1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  uc_value        1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_uc_i2c_write
;; This function is called by:
;;		_RTC_WRITE
;; This function uses a non-reentrant model
;;
psect	text639
	file	"C:\Users\younce\Documents\DS3231(PIC16F887)\i2c_rtc.c"
	line	297
	global	__size_of_i2c_rtc_set_day
	__size_of_i2c_rtc_set_day	equ	__end_of_i2c_rtc_set_day-_i2c_rtc_set_day
	
_i2c_rtc_set_day:	
	opt	stack 5
; Regs used in _i2c_rtc_set_day: [wreg+status,2+status,0+pclath+cstack]
;i2c_rtc_set_day@uc_value stored from wreg
	line	299
	movwf	(i2c_rtc_set_day@uc_value)
	
l6147:	
;i2c_rtc.c: 299: if (uc_value > 0 && uc_value <= 7) {
	movf	(i2c_rtc_set_day@uc_value),w
	skipz
	goto	u3920
	goto	l2794
u3920:
	
l6149:	
	movlw	(08h)
	subwf	(i2c_rtc_set_day@uc_value),w
	skipnc
	goto	u3931
	goto	u3930
u3931:
	goto	l2794
u3930:
	line	301
	
l6151:	
;i2c_rtc.c: 301: uc_i2c_write(0b01101000, 0x03, uc_value);
	movlw	(03h)
	movwf	(??_i2c_rtc_set_day+0)+0
	movf	(??_i2c_rtc_set_day+0)+0,w
	movwf	(?_uc_i2c_write)
	movf	(i2c_rtc_set_day@uc_value),w
	movwf	(??_i2c_rtc_set_day+1)+0
	movf	(??_i2c_rtc_set_day+1)+0,w
	movwf	0+(?_uc_i2c_write)+01h
	movlw	(068h)
	fcall	_uc_i2c_write
	goto	l2794
	line	302
	
l2793:	
	line	303
	
l2794:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_rtc_set_day
	__end_of_i2c_rtc_set_day:
;; =============== function _i2c_rtc_set_day ends ============

	signat	_i2c_rtc_set_day,4216
	global	_delay_ms
psect	text640,local,class=CODE,delta=2
global __ptext640
__ptext640:

;; *************** function _delay_ms *****************
;; Defined at:
;;		line 131 in file "C:\Users\younce\Documents\DS3231(PIC16F887)\ds3231.c"
;; Parameters:    Size  Location     Type
;;  ui_value        2    0[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_RTC_WRITE
;; This function uses a non-reentrant model
;;
psect	text640
	file	"C:\Users\younce\Documents\DS3231(PIC16F887)\ds3231.c"
	line	131
	global	__size_of_delay_ms
	__size_of_delay_ms	equ	__end_of_delay_ms-_delay_ms
	
_delay_ms:	
	opt	stack 6
; Regs used in _delay_ms: [wreg]
	line	132
	
l6143:	
;ds3231.c: 132: while (ui_value-- > 0) {
	goto	l921
	
l922:	
	line	133
	
l6145:	
;ds3231.c: 133: _delay((unsigned long)((1)*(20000000/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_delay_ms+0)+0+1),f
	movlw	125
movwf	((??_delay_ms+0)+0),f
u4477:
	decfsz	((??_delay_ms+0)+0),f
	goto	u4477
	decfsz	((??_delay_ms+0)+0+1),f
	goto	u4477
opt asmopt_on

	line	134
	
l921:	
	line	132
	movlw	low(01h)
	subwf	(delay_ms@ui_value),f
	movlw	high(01h)
	skipc
	decf	(delay_ms@ui_value+1),f
	subwf	(delay_ms@ui_value+1),f
	movlw	high(0FFFFh)
	xorwf	((delay_ms@ui_value+1)),w
	skipz
	goto	u3915
	movlw	low(0FFFFh)
	xorwf	((delay_ms@ui_value)),w
u3915:

	skipz
	goto	u3911
	goto	u3910
u3911:
	goto	l6145
u3910:
	goto	l924
	
l923:	
	line	135
	
l924:	
	return
	opt stack 0
GLOBAL	__end_of_delay_ms
	__end_of_delay_ms:
;; =============== function _delay_ms ends ============

	signat	_delay_ms,4216
	global	_i2c_rtc_initialize
psect	text641,local,class=CODE,delta=2
global __ptext641
__ptext641:

;; *************** function _i2c_rtc_initialize *****************
;; Defined at:
;;		line 40 in file "C:\Users\younce\Documents\DS3231(PIC16F887)\i2c_rtc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    0[BANK0 ] unsigned int 
;;  uc_current_r    1    2[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       3       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_uc_i2c_read
;;		_uc_i2c_write
;; This function is called by:
;;		_init
;; This function uses a non-reentrant model
;;
psect	text641
	file	"C:\Users\younce\Documents\DS3231(PIC16F887)\i2c_rtc.c"
	line	40
	global	__size_of_i2c_rtc_initialize
	__size_of_i2c_rtc_initialize	equ	__end_of_i2c_rtc_initialize-_i2c_rtc_initialize
	
_i2c_rtc_initialize:	
	opt	stack 5
; Regs used in _i2c_rtc_initialize: [wreg+status,2+status,0+pclath+cstack]
	line	51
	
l6123:	
;i2c_rtc.c: 41: unsigned int i;
;i2c_rtc.c: 46: unsigned char uc_current_register_value;
;i2c_rtc.c: 51: uc_current_register_value = uc_i2c_read(0b01101000, 0x00);
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(?_uc_i2c_read)
	movlw	(068h)
	fcall	_uc_i2c_read
	movwf	(??_i2c_rtc_initialize+0)+0
	movf	(??_i2c_rtc_initialize+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(i2c_rtc_initialize@uc_current_register_value)
	line	54
	
l6125:	
;i2c_rtc.c: 54: if ((uc_current_register_value & 0x80) != 0) {
	btfss	(i2c_rtc_initialize@uc_current_register_value),(7)&7
	goto	u3871
	goto	u3870
u3871:
	goto	l6137
u3870:
	line	55
	
l6127:	
;i2c_rtc.c: 55: uc_i2c_write(0b01101000, 0x00, uc_current_register_value & 0x7f);
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(?_uc_i2c_write)
	movf	(i2c_rtc_initialize@uc_current_register_value),w
	andlw	07Fh
	movwf	(??_i2c_rtc_initialize+0)+0
	movf	(??_i2c_rtc_initialize+0)+0,w
	movwf	0+(?_uc_i2c_write)+01h
	movlw	(068h)
	fcall	_uc_i2c_write
	line	60
	
l6129:	
;i2c_rtc.c: 60: for (i = 0; i < 500; i++) {
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(i2c_rtc_initialize@i)
	movlw	high(0)
	movwf	((i2c_rtc_initialize@i))+1
	
l6131:	
	movlw	high(01F4h)
	subwf	(i2c_rtc_initialize@i+1),w
	movlw	low(01F4h)
	skipnz
	subwf	(i2c_rtc_initialize@i),w
	skipc
	goto	u3881
	goto	u3880
u3881:
	goto	l6135
u3880:
	goto	l6137
	
l6133:	
	goto	l6137
	
l2763:	
	line	61
	
l6135:	
;i2c_rtc.c: 61: _delay((unsigned long)((1)*(20000000/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_i2c_rtc_initialize+0)+0+1),f
	movlw	125
movwf	((??_i2c_rtc_initialize+0)+0),f
u4487:
	decfsz	((??_i2c_rtc_initialize+0)+0),f
	goto	u4487
	decfsz	((??_i2c_rtc_initialize+0)+0+1),f
	goto	u4487
opt asmopt_on

	line	60
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(i2c_rtc_initialize@i),f
	skipnc
	incf	(i2c_rtc_initialize@i+1),f
	movlw	high(01h)
	addwf	(i2c_rtc_initialize@i+1),f
	movlw	high(01F4h)
	subwf	(i2c_rtc_initialize@i+1),w
	movlw	low(01F4h)
	skipnz
	subwf	(i2c_rtc_initialize@i),w
	skipc
	goto	u3891
	goto	u3890
u3891:
	goto	l6135
u3890:
	goto	l6137
	
l2764:	
	goto	l6137
	line	63
	
l2762:	
	line	68
	
l6137:	
;i2c_rtc.c: 62: }
;i2c_rtc.c: 63: }
;i2c_rtc.c: 68: uc_current_register_value = uc_i2c_read(0b01101000, 0x02);
	movlw	(02h)
	movwf	(??_i2c_rtc_initialize+0)+0
	movf	(??_i2c_rtc_initialize+0)+0,w
	movwf	(?_uc_i2c_read)
	movlw	(068h)
	fcall	_uc_i2c_read
	movwf	(??_i2c_rtc_initialize+1)+0
	movf	(??_i2c_rtc_initialize+1)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(i2c_rtc_initialize@uc_current_register_value)
	line	71
	
l6139:	
;i2c_rtc.c: 71: if ((uc_current_register_value & 0x40) != 0) {
	btfss	(i2c_rtc_initialize@uc_current_register_value),(6)&7
	goto	u3901
	goto	u3900
u3901:
	goto	l2766
u3900:
	line	72
	
l6141:	
;i2c_rtc.c: 72: uc_i2c_write(0b01101000, 0x02, uc_current_register_value & 0xbf);
	movlw	(02h)
	movwf	(??_i2c_rtc_initialize+0)+0
	movf	(??_i2c_rtc_initialize+0)+0,w
	movwf	(?_uc_i2c_write)
	movf	(i2c_rtc_initialize@uc_current_register_value),w
	andlw	0BFh
	movwf	(??_i2c_rtc_initialize+1)+0
	movf	(??_i2c_rtc_initialize+1)+0,w
	movwf	0+(?_uc_i2c_write)+01h
	movlw	(068h)
	fcall	_uc_i2c_write
	goto	l2766
	line	73
	
l2765:	
	line	74
	
l2766:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_rtc_initialize
	__end_of_i2c_rtc_initialize:
;; =============== function _i2c_rtc_initialize ends ============

	signat	_i2c_rtc_initialize,88
	global	_uc_i2c_rtc_get_year
psect	text642,local,class=CODE,delta=2
global __ptext642
__ptext642:

;; *************** function _uc_i2c_rtc_get_year *****************
;; Defined at:
;;		line 429 in file "C:\Users\younce\Documents\DS3231(PIC16F887)\i2c_rtc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  uc_i2c_data     1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         3       1       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_uc_i2c_read
;;		___bmul
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text642
	file	"C:\Users\younce\Documents\DS3231(PIC16F887)\i2c_rtc.c"
	line	429
	global	__size_of_uc_i2c_rtc_get_year
	__size_of_uc_i2c_rtc_get_year	equ	__end_of_uc_i2c_rtc_get_year-_uc_i2c_rtc_get_year
	
_uc_i2c_rtc_get_year:	
	opt	stack 6
; Regs used in _uc_i2c_rtc_get_year: [wreg+status,2+status,0+pclath+cstack]
	line	433
	
l6119:	
;i2c_rtc.c: 430: unsigned char uc_i2c_data;
;i2c_rtc.c: 433: uc_i2c_data = uc_i2c_read(0b01101000, 0x06);
	movlw	(06h)
	movwf	(??_uc_i2c_rtc_get_year+0)+0
	movf	(??_uc_i2c_rtc_get_year+0)+0,w
	movwf	(?_uc_i2c_read)
	movlw	(068h)
	fcall	_uc_i2c_read
	movwf	(??_uc_i2c_rtc_get_year+1)+0
	movf	(??_uc_i2c_rtc_get_year+1)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(uc_i2c_rtc_get_year@uc_i2c_data)
	line	436
;i2c_rtc.c: 436: return (uc_i2c_data & 0x0f) + ((uc_i2c_data >> 4) * 10);
	movlw	(0Fh)
	andwf	(uc_i2c_rtc_get_year@uc_i2c_data),w
	movwf	(??_uc_i2c_rtc_get_year+0)+0
	movlw	(0Ah)
	movwf	(??_uc_i2c_rtc_get_year+1)+0
	movf	(??_uc_i2c_rtc_get_year+1)+0,w
	movwf	(?___bmul)
	movf	(uc_i2c_rtc_get_year@uc_i2c_data),w
	movwf	(??_uc_i2c_rtc_get_year+2)+0
	movlw	04h
u3865:
	clrc
	rrf	(??_uc_i2c_rtc_get_year+2)+0,f
	addlw	-1
	skipz
	goto	u3865
	movf	0+(??_uc_i2c_rtc_get_year+2)+0,w
	fcall	___bmul
	addwf	0+(??_uc_i2c_rtc_get_year+0)+0,w
	goto	l2811
	
l6121:	
	line	437
	
l2811:	
	return
	opt stack 0
GLOBAL	__end_of_uc_i2c_rtc_get_year
	__end_of_uc_i2c_rtc_get_year:
;; =============== function _uc_i2c_rtc_get_year ends ============

	signat	_uc_i2c_rtc_get_year,89
	global	_uc_i2c_rtc_get_month
psect	text643,local,class=CODE,delta=2
global __ptext643
__ptext643:

;; *************** function _uc_i2c_rtc_get_month *****************
;; Defined at:
;;		line 375 in file "C:\Users\younce\Documents\DS3231(PIC16F887)\i2c_rtc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  uc_i2c_data     1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         3       1       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_uc_i2c_read
;;		___bmul
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text643
	file	"C:\Users\younce\Documents\DS3231(PIC16F887)\i2c_rtc.c"
	line	375
	global	__size_of_uc_i2c_rtc_get_month
	__size_of_uc_i2c_rtc_get_month	equ	__end_of_uc_i2c_rtc_get_month-_uc_i2c_rtc_get_month
	
_uc_i2c_rtc_get_month:	
	opt	stack 6
; Regs used in _uc_i2c_rtc_get_month: [wreg+status,2+status,0+pclath+cstack]
	line	379
	
l6115:	
;i2c_rtc.c: 376: unsigned char uc_i2c_data;
;i2c_rtc.c: 379: uc_i2c_data = uc_i2c_read(0b01101000, 0x05);
	movlw	(05h)
	movwf	(??_uc_i2c_rtc_get_month+0)+0
	movf	(??_uc_i2c_rtc_get_month+0)+0,w
	movwf	(?_uc_i2c_read)
	movlw	(068h)
	fcall	_uc_i2c_read
	movwf	(??_uc_i2c_rtc_get_month+1)+0
	movf	(??_uc_i2c_rtc_get_month+1)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(uc_i2c_rtc_get_month@uc_i2c_data)
	line	382
;i2c_rtc.c: 382: return (uc_i2c_data & 0x0f) + ((uc_i2c_data >> 4) * 10);
	movlw	(0Fh)
	andwf	(uc_i2c_rtc_get_month@uc_i2c_data),w
	movwf	(??_uc_i2c_rtc_get_month+0)+0
	movlw	(0Ah)
	movwf	(??_uc_i2c_rtc_get_month+1)+0
	movf	(??_uc_i2c_rtc_get_month+1)+0,w
	movwf	(?___bmul)
	movf	(uc_i2c_rtc_get_month@uc_i2c_data),w
	movwf	(??_uc_i2c_rtc_get_month+2)+0
	movlw	04h
u3855:
	clrc
	rrf	(??_uc_i2c_rtc_get_month+2)+0,f
	addlw	-1
	skipz
	goto	u3855
	movf	0+(??_uc_i2c_rtc_get_month+2)+0,w
	fcall	___bmul
	addwf	0+(??_uc_i2c_rtc_get_month+0)+0,w
	goto	l2804
	
l6117:	
	line	383
	
l2804:	
	return
	opt stack 0
GLOBAL	__end_of_uc_i2c_rtc_get_month
	__end_of_uc_i2c_rtc_get_month:
;; =============== function _uc_i2c_rtc_get_month ends ============

	signat	_uc_i2c_rtc_get_month,89
	global	_uc_i2c_rtc_get_date
psect	text644,local,class=CODE,delta=2
global __ptext644
__ptext644:

;; *************** function _uc_i2c_rtc_get_date *****************
;; Defined at:
;;		line 321 in file "C:\Users\younce\Documents\DS3231(PIC16F887)\i2c_rtc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  uc_i2c_data     1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         3       1       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_uc_i2c_read
;;		___bmul
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text644
	file	"C:\Users\younce\Documents\DS3231(PIC16F887)\i2c_rtc.c"
	line	321
	global	__size_of_uc_i2c_rtc_get_date
	__size_of_uc_i2c_rtc_get_date	equ	__end_of_uc_i2c_rtc_get_date-_uc_i2c_rtc_get_date
	
_uc_i2c_rtc_get_date:	
	opt	stack 6
; Regs used in _uc_i2c_rtc_get_date: [wreg+status,2+status,0+pclath+cstack]
	line	325
	
l6111:	
;i2c_rtc.c: 322: unsigned char uc_i2c_data;
;i2c_rtc.c: 325: uc_i2c_data = uc_i2c_read(0b01101000, 0x04);
	movlw	(04h)
	movwf	(??_uc_i2c_rtc_get_date+0)+0
	movf	(??_uc_i2c_rtc_get_date+0)+0,w
	movwf	(?_uc_i2c_read)
	movlw	(068h)
	fcall	_uc_i2c_read
	movwf	(??_uc_i2c_rtc_get_date+1)+0
	movf	(??_uc_i2c_rtc_get_date+1)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(uc_i2c_rtc_get_date@uc_i2c_data)
	line	328
;i2c_rtc.c: 328: return (uc_i2c_data & 0x0f) + ((uc_i2c_data >> 4) * 10);
	movlw	(0Fh)
	andwf	(uc_i2c_rtc_get_date@uc_i2c_data),w
	movwf	(??_uc_i2c_rtc_get_date+0)+0
	movlw	(0Ah)
	movwf	(??_uc_i2c_rtc_get_date+1)+0
	movf	(??_uc_i2c_rtc_get_date+1)+0,w
	movwf	(?___bmul)
	movf	(uc_i2c_rtc_get_date@uc_i2c_data),w
	movwf	(??_uc_i2c_rtc_get_date+2)+0
	movlw	04h
u3845:
	clrc
	rrf	(??_uc_i2c_rtc_get_date+2)+0,f
	addlw	-1
	skipz
	goto	u3845
	movf	0+(??_uc_i2c_rtc_get_date+2)+0,w
	fcall	___bmul
	addwf	0+(??_uc_i2c_rtc_get_date+0)+0,w
	goto	l2797
	
l6113:	
	line	329
	
l2797:	
	return
	opt stack 0
GLOBAL	__end_of_uc_i2c_rtc_get_date
	__end_of_uc_i2c_rtc_get_date:
;; =============== function _uc_i2c_rtc_get_date ends ============

	signat	_uc_i2c_rtc_get_date,89
	global	_uc_i2c_rtc_get_day
psect	text645,local,class=CODE,delta=2
global __ptext645
__ptext645:

;; *************** function _uc_i2c_rtc_get_day *****************
;; Defined at:
;;		line 276 in file "C:\Users\younce\Documents\DS3231(PIC16F887)\i2c_rtc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_uc_i2c_read
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text645
	file	"C:\Users\younce\Documents\DS3231(PIC16F887)\i2c_rtc.c"
	line	276
	global	__size_of_uc_i2c_rtc_get_day
	__size_of_uc_i2c_rtc_get_day	equ	__end_of_uc_i2c_rtc_get_day-_uc_i2c_rtc_get_day
	
_uc_i2c_rtc_get_day:	
	opt	stack 6
; Regs used in _uc_i2c_rtc_get_day: [wreg+status,2+status,0+pclath+cstack]
	line	278
	
l6107:	
;i2c_rtc.c: 278: return uc_i2c_read(0b01101000, 0x03);
	movlw	(03h)
	movwf	(??_uc_i2c_rtc_get_day+0)+0
	movf	(??_uc_i2c_rtc_get_day+0)+0,w
	movwf	(?_uc_i2c_read)
	movlw	(068h)
	fcall	_uc_i2c_read
	goto	l2790
	
l6109:	
	line	279
	
l2790:	
	return
	opt stack 0
GLOBAL	__end_of_uc_i2c_rtc_get_day
	__end_of_uc_i2c_rtc_get_day:
;; =============== function _uc_i2c_rtc_get_day ends ============

	signat	_uc_i2c_rtc_get_day,89
	global	_uc_i2c_rtc_get_hours
psect	text646,local,class=CODE,delta=2
global __ptext646
__ptext646:

;; *************** function _uc_i2c_rtc_get_hours *****************
;; Defined at:
;;		line 211 in file "C:\Users\younce\Documents\DS3231(PIC16F887)\i2c_rtc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  uc_i2c_data     1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         3       1       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_uc_i2c_read
;;		___bmul
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text646
	file	"C:\Users\younce\Documents\DS3231(PIC16F887)\i2c_rtc.c"
	line	211
	global	__size_of_uc_i2c_rtc_get_hours
	__size_of_uc_i2c_rtc_get_hours	equ	__end_of_uc_i2c_rtc_get_hours-_uc_i2c_rtc_get_hours
	
_uc_i2c_rtc_get_hours:	
	opt	stack 6
; Regs used in _uc_i2c_rtc_get_hours: [wreg+status,2+status,0+pclath+cstack]
	line	215
	
l6103:	
;i2c_rtc.c: 212: unsigned char uc_i2c_data;
;i2c_rtc.c: 215: uc_i2c_data = uc_i2c_read(0b01101000, 0x02);
	movlw	(02h)
	movwf	(??_uc_i2c_rtc_get_hours+0)+0
	movf	(??_uc_i2c_rtc_get_hours+0)+0,w
	movwf	(?_uc_i2c_read)
	movlw	(068h)
	fcall	_uc_i2c_read
	movwf	(??_uc_i2c_rtc_get_hours+1)+0
	movf	(??_uc_i2c_rtc_get_hours+1)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(uc_i2c_rtc_get_hours@uc_i2c_data)
	line	218
;i2c_rtc.c: 218: return (uc_i2c_data & 0x0f) + (((uc_i2c_data >> 4) & 0x03) * 10);
	movlw	(0Fh)
	andwf	(uc_i2c_rtc_get_hours@uc_i2c_data),w
	movwf	(??_uc_i2c_rtc_get_hours+0)+0
	movlw	(0Ah)
	movwf	(??_uc_i2c_rtc_get_hours+1)+0
	movf	(??_uc_i2c_rtc_get_hours+1)+0,w
	movwf	(?___bmul)
	movf	(uc_i2c_rtc_get_hours@uc_i2c_data),w
	movwf	(??_uc_i2c_rtc_get_hours+2)+0
	movlw	04h
u3835:
	clrc
	rrf	(??_uc_i2c_rtc_get_hours+2)+0,f
	addlw	-1
	skipz
	goto	u3835
	movf	0+(??_uc_i2c_rtc_get_hours+2)+0,w
	andlw	03h
	fcall	___bmul
	addwf	0+(??_uc_i2c_rtc_get_hours+0)+0,w
	goto	l2783
	
l6105:	
	line	219
	
l2783:	
	return
	opt stack 0
GLOBAL	__end_of_uc_i2c_rtc_get_hours
	__end_of_uc_i2c_rtc_get_hours:
;; =============== function _uc_i2c_rtc_get_hours ends ============

	signat	_uc_i2c_rtc_get_hours,89
	global	_uc_i2c_rtc_get_minutes
psect	text647,local,class=CODE,delta=2
global __ptext647
__ptext647:

;; *************** function _uc_i2c_rtc_get_minutes *****************
;; Defined at:
;;		line 157 in file "C:\Users\younce\Documents\DS3231(PIC16F887)\i2c_rtc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  uc_i2c_data     1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         3       1       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_uc_i2c_read
;;		___bmul
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text647
	file	"C:\Users\younce\Documents\DS3231(PIC16F887)\i2c_rtc.c"
	line	157
	global	__size_of_uc_i2c_rtc_get_minutes
	__size_of_uc_i2c_rtc_get_minutes	equ	__end_of_uc_i2c_rtc_get_minutes-_uc_i2c_rtc_get_minutes
	
_uc_i2c_rtc_get_minutes:	
	opt	stack 6
; Regs used in _uc_i2c_rtc_get_minutes: [wreg+status,2+status,0+pclath+cstack]
	line	161
	
l6099:	
;i2c_rtc.c: 158: unsigned char uc_i2c_data;
;i2c_rtc.c: 161: uc_i2c_data = uc_i2c_read(0b01101000, 0x01);
	clrf	(?_uc_i2c_read)
	bsf	status,0
	rlf	(?_uc_i2c_read),f
	movlw	(068h)
	fcall	_uc_i2c_read
	movwf	(??_uc_i2c_rtc_get_minutes+0)+0
	movf	(??_uc_i2c_rtc_get_minutes+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(uc_i2c_rtc_get_minutes@uc_i2c_data)
	line	164
;i2c_rtc.c: 164: return (uc_i2c_data & 0x0f) + ((uc_i2c_data >> 4) * 10);
	movlw	(0Fh)
	andwf	(uc_i2c_rtc_get_minutes@uc_i2c_data),w
	movwf	(??_uc_i2c_rtc_get_minutes+0)+0
	movlw	(0Ah)
	movwf	(??_uc_i2c_rtc_get_minutes+1)+0
	movf	(??_uc_i2c_rtc_get_minutes+1)+0,w
	movwf	(?___bmul)
	movf	(uc_i2c_rtc_get_minutes@uc_i2c_data),w
	movwf	(??_uc_i2c_rtc_get_minutes+2)+0
	movlw	04h
u3825:
	clrc
	rrf	(??_uc_i2c_rtc_get_minutes+2)+0,f
	addlw	-1
	skipz
	goto	u3825
	movf	0+(??_uc_i2c_rtc_get_minutes+2)+0,w
	fcall	___bmul
	addwf	0+(??_uc_i2c_rtc_get_minutes+0)+0,w
	goto	l2776
	
l6101:	
	line	165
	
l2776:	
	return
	opt stack 0
GLOBAL	__end_of_uc_i2c_rtc_get_minutes
	__end_of_uc_i2c_rtc_get_minutes:
;; =============== function _uc_i2c_rtc_get_minutes ends ============

	signat	_uc_i2c_rtc_get_minutes,89
	global	_uc_i2c_rtc_get_seconds
psect	text648,local,class=CODE,delta=2
global __ptext648
__ptext648:

;; *************** function _uc_i2c_rtc_get_seconds *****************
;; Defined at:
;;		line 92 in file "C:\Users\younce\Documents\DS3231(PIC16F887)\i2c_rtc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  uc_i2c_data     1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         3       1       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_uc_i2c_read
;;		___bmul
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text648
	file	"C:\Users\younce\Documents\DS3231(PIC16F887)\i2c_rtc.c"
	line	92
	global	__size_of_uc_i2c_rtc_get_seconds
	__size_of_uc_i2c_rtc_get_seconds	equ	__end_of_uc_i2c_rtc_get_seconds-_uc_i2c_rtc_get_seconds
	
_uc_i2c_rtc_get_seconds:	
	opt	stack 6
; Regs used in _uc_i2c_rtc_get_seconds: [wreg+status,2+status,0+pclath+cstack]
	line	96
	
l6095:	
;i2c_rtc.c: 93: unsigned char uc_i2c_data;
;i2c_rtc.c: 96: uc_i2c_data = uc_i2c_read(0b01101000, 0x00);
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(?_uc_i2c_read)
	movlw	(068h)
	fcall	_uc_i2c_read
	movwf	(??_uc_i2c_rtc_get_seconds+0)+0
	movf	(??_uc_i2c_rtc_get_seconds+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(uc_i2c_rtc_get_seconds@uc_i2c_data)
	line	99
;i2c_rtc.c: 99: return (uc_i2c_data & 0x0f) + (((uc_i2c_data >> 4) & 0x07) * 10);
	movlw	(0Fh)
	andwf	(uc_i2c_rtc_get_seconds@uc_i2c_data),w
	movwf	(??_uc_i2c_rtc_get_seconds+0)+0
	movlw	(0Ah)
	movwf	(??_uc_i2c_rtc_get_seconds+1)+0
	movf	(??_uc_i2c_rtc_get_seconds+1)+0,w
	movwf	(?___bmul)
	movf	(uc_i2c_rtc_get_seconds@uc_i2c_data),w
	movwf	(??_uc_i2c_rtc_get_seconds+2)+0
	movlw	04h
u3815:
	clrc
	rrf	(??_uc_i2c_rtc_get_seconds+2)+0,f
	addlw	-1
	skipz
	goto	u3815
	movf	0+(??_uc_i2c_rtc_get_seconds+2)+0,w
	andlw	07h
	fcall	___bmul
	addwf	0+(??_uc_i2c_rtc_get_seconds+0)+0,w
	goto	l2769
	
l6097:	
	line	100
	
l2769:	
	return
	opt stack 0
GLOBAL	__end_of_uc_i2c_rtc_get_seconds
	__end_of_uc_i2c_rtc_get_seconds:
;; =============== function _uc_i2c_rtc_get_seconds ends ============

	signat	_uc_i2c_rtc_get_seconds,89
	global	___awmod
psect	text649,local,class=CODE,delta=2
global __ptext649
__ptext649:

;; *************** function ___awmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_i2c_rtc_set_seconds
;;		_i2c_rtc_set_minutes
;;		_i2c_rtc_set_hours
;;		_i2c_rtc_set_date
;;		_i2c_rtc_set_month
;;		_i2c_rtc_set_year
;; This function uses a non-reentrant model
;;
psect	text649
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 5
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l6059:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___awmod@sign)
	line	9
	
l6061:	
	btfss	(___awmod@dividend+1),7
	goto	u3721
	goto	u3720
u3721:
	goto	l6065
u3720:
	line	10
	
l6063:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	clrf	(___awmod@sign)
	bsf	status,0
	rlf	(___awmod@sign),f
	goto	l6065
	line	12
	
l3927:	
	line	13
	
l6065:	
	btfss	(___awmod@divisor+1),7
	goto	u3731
	goto	u3730
u3731:
	goto	l6069
u3730:
	line	14
	
l6067:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l6069
	
l3928:	
	line	15
	
l6069:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u3741
	goto	u3740
u3741:
	goto	l6087
u3740:
	line	16
	
l6071:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l6077
	
l3931:	
	line	18
	
l6073:	
	movlw	01h
	
u3755:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u3755
	line	19
	
l6075:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l6077
	line	20
	
l3930:	
	line	17
	
l6077:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u3761
	goto	u3760
u3761:
	goto	l6073
u3760:
	goto	l6079
	
l3932:	
	goto	l6079
	line	21
	
l3933:	
	line	22
	
l6079:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u3775
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u3775:
	skipc
	goto	u3771
	goto	u3770
u3771:
	goto	l6083
u3770:
	line	23
	
l6081:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l6083
	
l3934:	
	line	24
	
l6083:	
	movlw	01h
	
u3785:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u3785
	line	25
	
l6085:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u3791
	goto	u3790
u3791:
	goto	l6079
u3790:
	goto	l6087
	
l3935:	
	goto	l6087
	line	26
	
l3929:	
	line	27
	
l6087:	
	movf	(___awmod@sign),w
	skipz
	goto	u3800
	goto	l6091
u3800:
	line	28
	
l6089:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l6091
	
l3936:	
	line	29
	
l6091:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l3937
	
l6093:	
	line	30
	
l3937:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___awdiv
psect	text650,local,class=CODE,delta=2
global __ptext650
__ptext650:

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    7[COMMON] int 
;;  sign            1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         9       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_i2c_rtc_set_seconds
;;		_i2c_rtc_set_minutes
;;		_i2c_rtc_set_hours
;;		_i2c_rtc_set_date
;;		_i2c_rtc_set_month
;;		_i2c_rtc_set_year
;; This function uses a non-reentrant model
;;
psect	text650
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 5
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l6021:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___awdiv@sign)
	line	10
	
l6023:	
	btfss	(___awdiv@divisor+1),7
	goto	u3621
	goto	u3620
u3621:
	goto	l6027
u3620:
	line	11
	
l6025:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l6027
	line	13
	
l3859:	
	line	14
	
l6027:	
	btfss	(___awdiv@dividend+1),7
	goto	u3631
	goto	u3630
u3631:
	goto	l3860
u3630:
	line	15
	
l6029:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l6031:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	line	17
	
l3860:	
	line	18
	movlw	low(0)
	movwf	(___awdiv@quotient)
	movlw	high(0)
	movwf	((___awdiv@quotient))+1
	line	19
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u3641
	goto	u3640
u3641:
	goto	l6051
u3640:
	line	20
	
l6033:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l6039
	
l3863:	
	line	22
	
l6035:	
	movlw	01h
	
u3655:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u3655
	line	23
	
l6037:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l6039
	line	24
	
l3862:	
	line	21
	
l6039:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u3661
	goto	u3660
u3661:
	goto	l6035
u3660:
	goto	l6041
	
l3864:	
	goto	l6041
	line	25
	
l3865:	
	line	26
	
l6041:	
	movlw	01h
	
u3675:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u3675
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u3685
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u3685:
	skipc
	goto	u3681
	goto	u3680
u3681:
	goto	l6047
u3680:
	line	28
	
l6043:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l6045:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l6047
	line	30
	
l3866:	
	line	31
	
l6047:	
	movlw	01h
	
u3695:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u3695
	line	32
	
l6049:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u3701
	goto	u3700
u3701:
	goto	l6041
u3700:
	goto	l6051
	
l3867:	
	goto	l6051
	line	33
	
l3861:	
	line	34
	
l6051:	
	movf	(___awdiv@sign),w
	skipz
	goto	u3710
	goto	l6055
u3710:
	line	35
	
l6053:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l6055
	
l3868:	
	line	36
	
l6055:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l3869
	
l6057:	
	line	37
	
l3869:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___lwmod
psect	text651,local,class=CODE,delta=2
global __ptext651
__ptext651:

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] unsigned int 
;;  dividend        2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_lcd_bcd
;; This function uses a non-reentrant model
;;
psect	text651
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt	stack 6
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
l5999:	
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u3561
	goto	u3560
u3561:
	goto	l6017
u3560:
	line	9
	
l6001:	
	clrf	(___lwmod@counter)
	bsf	status,0
	rlf	(___lwmod@counter),f
	line	10
	goto	l6007
	
l3737:	
	line	11
	
l6003:	
	movlw	01h
	
u3575:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u3575
	line	12
	
l6005:	
	movlw	(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	goto	l6007
	line	13
	
l3736:	
	line	10
	
l6007:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u3581
	goto	u3580
u3581:
	goto	l6003
u3580:
	goto	l6009
	
l3738:	
	goto	l6009
	line	14
	
l3739:	
	line	15
	
l6009:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u3595
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u3595:
	skipc
	goto	u3591
	goto	u3590
u3591:
	goto	l6013
u3590:
	line	16
	
l6011:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	goto	l6013
	
l3740:	
	line	17
	
l6013:	
	movlw	01h
	
u3605:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u3605
	line	18
	
l6015:	
	movlw	low(01h)
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u3611
	goto	u3610
u3611:
	goto	l6009
u3610:
	goto	l6017
	
l3741:	
	goto	l6017
	line	19
	
l3735:	
	line	20
	
l6017:	
	movf	(___lwmod@dividend+1),w
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	goto	l3742
	
l6019:	
	line	21
	
l3742:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
;; =============== function ___lwmod ends ============

	signat	___lwmod,8314
	global	___lwdiv
psect	text652,local,class=CODE,delta=2
global __ptext652
__ptext652:

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] unsigned int 
;;  dividend        2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    5[COMMON] unsigned int 
;;  counter         1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_lcd_bcd
;; This function uses a non-reentrant model
;;
psect	text652
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 6
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l5975:	
	movlw	low(0)
	movwf	(___lwdiv@quotient)
	movlw	high(0)
	movwf	((___lwdiv@quotient))+1
	line	10
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u3491
	goto	u3490
u3491:
	goto	l5995
u3490:
	line	11
	
l5977:	
	clrf	(___lwdiv@counter)
	bsf	status,0
	rlf	(___lwdiv@counter),f
	line	12
	goto	l5983
	
l3727:	
	line	13
	
l5979:	
	movlw	01h
	
u3505:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u3505
	line	14
	
l5981:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l5983
	line	15
	
l3726:	
	line	12
	
l5983:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u3511
	goto	u3510
u3511:
	goto	l5979
u3510:
	goto	l5985
	
l3728:	
	goto	l5985
	line	16
	
l3729:	
	line	17
	
l5985:	
	movlw	01h
	
u3525:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u3525
	line	18
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u3535
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u3535:
	skipc
	goto	u3531
	goto	u3530
u3531:
	goto	l5991
u3530:
	line	19
	
l5987:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l5989:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l5991
	line	21
	
l3730:	
	line	22
	
l5991:	
	movlw	01h
	
u3545:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u3545
	line	23
	
l5993:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u3551
	goto	u3550
u3551:
	goto	l5985
u3550:
	goto	l5995
	
l3731:	
	goto	l5995
	line	24
	
l3725:	
	line	25
	
l5995:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l3732
	
l5997:	
	line	26
	
l3732:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	___bmul
psect	text653,local,class=CODE,delta=2
global __ptext653
__ptext653:

;; *************** function ___bmul *****************
;; Defined at:
;;		line 3 in file "bmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      1    wreg     unsigned char 
;;  multiplicand    1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  multiplier      1    3[COMMON] unsigned char 
;;  product         1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_uc_i2c_rtc_get_seconds
;;		_uc_i2c_rtc_get_minutes
;;		_uc_i2c_rtc_get_hours
;;		_uc_i2c_rtc_get_date
;;		_uc_i2c_rtc_get_month
;;		_uc_i2c_rtc_get_year
;; This function uses a non-reentrant model
;;
psect	text653
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\bmul.c"
	line	3
	global	__size_of___bmul
	__size_of___bmul	equ	__end_of___bmul-___bmul
	
___bmul:	
	opt	stack 6
; Regs used in ___bmul: [wreg+status,2+status,0]
;___bmul@multiplier stored from wreg
	movwf	(___bmul@multiplier)
	line	4
	
l5959:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___bmul@product)
	goto	l5961
	line	6
	
l3713:	
	line	7
	
l5961:	
	btfss	(___bmul@multiplier),(0)&7
	goto	u3471
	goto	u3470
u3471:
	goto	l5965
u3470:
	line	8
	
l5963:	
	movf	(___bmul@multiplicand),w
	movwf	(??___bmul+0)+0
	movf	(??___bmul+0)+0,w
	addwf	(___bmul@product),f
	goto	l5965
	
l3714:	
	line	9
	
l5965:	
	clrc
	rlf	(___bmul@multiplicand),f

	line	10
	
l5967:	
	clrc
	rrf	(___bmul@multiplier),f

	line	11
	
l5969:	
	movf	(___bmul@multiplier),f
	skipz
	goto	u3481
	goto	u3480
u3481:
	goto	l5961
u3480:
	goto	l5971
	
l3715:	
	line	12
	
l5971:	
	movf	(___bmul@product),w
	goto	l3716
	
l5973:	
	line	13
	
l3716:	
	return
	opt stack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
;; =============== function ___bmul ends ============

	signat	___bmul,8313
	global	_set_lcd_data
psect	text654,local,class=CODE,delta=2
global __ptext654
__ptext654:

;; *************** function _set_lcd_data *****************
;; Defined at:
;;		line 400 in file "C:\Users\younce\Documents\DS3231(PIC16F887)\lcd.c"
;; Parameters:    Size  Location     Type
;;  uc_data         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  uc_data         1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_send_lcd_data
;; This function uses a non-reentrant model
;;
psect	text654
	file	"C:\Users\younce\Documents\DS3231(PIC16F887)\lcd.c"
	line	400
	global	__size_of_set_lcd_data
	__size_of_set_lcd_data	equ	__end_of_set_lcd_data-_set_lcd_data
	
_set_lcd_data:	
	opt	stack 5
; Regs used in _set_lcd_data: [wreg]
;set_lcd_data@uc_data stored from wreg
	movwf	(set_lcd_data@uc_data)
	line	401
	
l5957:	
;lcd.c: 401: PORTD = uc_data;
	movf	(set_lcd_data@uc_data),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	402
	
l3710:	
	return
	opt stack 0
GLOBAL	__end_of_set_lcd_data
	__end_of_set_lcd_data:
;; =============== function _set_lcd_data ends ============

	signat	_set_lcd_data,4216
	global	_set_lcd_rs
psect	text655,local,class=CODE,delta=2
global __ptext655
__ptext655:

;; *************** function _set_lcd_rs *****************
;; Defined at:
;;		line 380 in file "C:\Users\younce\Documents\DS3231(PIC16F887)\lcd.c"
;; Parameters:    Size  Location     Type
;;  b_output        1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  b_output        1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_send_lcd_data
;; This function uses a non-reentrant model
;;
psect	text655
	file	"C:\Users\younce\Documents\DS3231(PIC16F887)\lcd.c"
	line	380
	global	__size_of_set_lcd_rs
	__size_of_set_lcd_rs	equ	__end_of_set_lcd_rs-_set_lcd_rs
	
_set_lcd_rs:	
	opt	stack 5
; Regs used in _set_lcd_rs: [wreg]
;set_lcd_rs@b_output stored from wreg
	movwf	(set_lcd_rs@b_output)
	line	381
	
l5955:	
;lcd.c: 381: RB4 = b_output;
	btfsc	(set_lcd_rs@b_output),0
	goto	u3451
	goto	u3450
	
u3451:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(52/8),(52)&7
	goto	u3464
u3450:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(52/8),(52)&7
u3464:
	line	382
	
l3707:	
	return
	opt stack 0
GLOBAL	__end_of_set_lcd_rs
	__end_of_set_lcd_rs:
;; =============== function _set_lcd_rs ends ============

	signat	_set_lcd_rs,4216
	global	_set_lcd_e
psect	text656,local,class=CODE,delta=2
global __ptext656
__ptext656:

;; *************** function _set_lcd_e *****************
;; Defined at:
;;		line 360 in file "C:\Users\younce\Documents\DS3231(PIC16F887)\lcd.c"
;; Parameters:    Size  Location     Type
;;  b_output        1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  b_output        1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_lcd_initialize
;;		_send_lcd_data
;; This function uses a non-reentrant model
;;
psect	text656
	file	"C:\Users\younce\Documents\DS3231(PIC16F887)\lcd.c"
	line	360
	global	__size_of_set_lcd_e
	__size_of_set_lcd_e	equ	__end_of_set_lcd_e-_set_lcd_e
	
_set_lcd_e:	
	opt	stack 5
; Regs used in _set_lcd_e: [wreg]
;set_lcd_e@b_output stored from wreg
	movwf	(set_lcd_e@b_output)
	line	361
	
l5933:	
;lcd.c: 361: RB5 = b_output;
	btfsc	(set_lcd_e@b_output),0
	goto	u3401
	goto	u3400
	
u3401:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(53/8),(53)&7
	goto	u3414
u3400:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(53/8),(53)&7
u3414:
	line	362
	
l3704:	
	return
	opt stack 0
GLOBAL	__end_of_set_lcd_e
	__end_of_set_lcd_e:
;; =============== function _set_lcd_e ends ============

	signat	_set_lcd_e,4216
	global	_uc_i2c_write
psect	text657,local,class=CODE,delta=2
global __ptext657
__ptext657:

;; *************** function _uc_i2c_write *****************
;; Defined at:
;;		line 235 in file "C:\Users\younce\Documents\DS3231(PIC16F887)\i2c.c"
;; Parameters:    Size  Location     Type
;;  uc_slave_add    1    wreg     unsigned char 
;;  uc_register     1    0[COMMON] unsigned char 
;;  uc_data         1    1[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  uc_slave_add    1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_i2c_rtc_initialize
;;		_i2c_rtc_set_seconds
;;		_i2c_rtc_set_minutes
;;		_i2c_rtc_set_hours
;;		_i2c_rtc_set_day
;;		_i2c_rtc_set_date
;;		_i2c_rtc_set_month
;;		_i2c_rtc_set_year
;; This function uses a non-reentrant model
;;
psect	text657
	file	"C:\Users\younce\Documents\DS3231(PIC16F887)\i2c.c"
	line	235
	global	__size_of_uc_i2c_write
	__size_of_uc_i2c_write	equ	__end_of_uc_i2c_write-_uc_i2c_write
	
_uc_i2c_write:	
	opt	stack 5
; Regs used in _uc_i2c_write: [wreg+status,2+status,0]
;uc_i2c_write@uc_slave_address stored from wreg
	line	237
	movwf	(uc_i2c_write@uc_slave_address)
	
l5903:	
;i2c.c: 237: b_i2c_error_flag = 0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_b_i2c_error_flag)
	line	240
	
l5905:	
;i2c.c: 240: SEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1160/8)^080h,(1160)&7
	line	241
;i2c.c: 241: while (SEN == 1);
	goto	l1894
	
l1895:	
	
l1894:	
	btfsc	(1160/8)^080h,(1160)&7
	goto	u3291
	goto	u3290
u3291:
	goto	l1894
u3290:
	goto	l5907
	
l1896:	
	line	244
	
l5907:	
;i2c.c: 244: SSPBUF = (uc_slave_address << 1) & 0xfe;
	movf	(uc_i2c_write@uc_slave_address),w
	movwf	(??_uc_i2c_write+0)+0
	addwf	(??_uc_i2c_write+0)+0,w
	andlw	0FEh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(19)	;volatile
	line	248
;i2c.c: 248: while (RW == 1);
	goto	l1897
	
l1898:	
	
l1897:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfsc	(1186/8)^080h,(1186)&7
	goto	u3301
	goto	u3300
u3301:
	goto	l1897
u3300:
	
l1899:	
	line	254
;i2c.c: 254: if (ACKSTAT == 1) {
	btfss	(1166/8)^080h,(1166)&7
	goto	u3311
	goto	u3310
u3311:
	goto	l5915
u3310:
	line	256
	
l5909:	
;i2c.c: 256: PEN = 1;
	bsf	(1162/8)^080h,(1162)&7
	line	257
;i2c.c: 257: while (PEN == 1);
	goto	l1901
	
l1902:	
	
l1901:	
	btfsc	(1162/8)^080h,(1162)&7
	goto	u3321
	goto	u3320
u3321:
	goto	l1901
u3320:
	goto	l5911
	
l1903:	
	line	260
	
l5911:	
;i2c.c: 260: b_i2c_error_flag = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_b_i2c_error_flag)
	bsf	status,0
	rlf	(_b_i2c_error_flag),f
	goto	l1904
	line	261
	
l5913:	
;i2c.c: 261: return;
	goto	l1904
	line	262
	
l1900:	
	line	265
	
l5915:	
;i2c.c: 262: }
;i2c.c: 265: SSPBUF = uc_register;
	movf	(uc_i2c_write@uc_register),w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(19)	;volatile
	line	269
;i2c.c: 269: while (RW == 1);
	goto	l1905
	
l1906:	
	
l1905:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfsc	(1186/8)^080h,(1186)&7
	goto	u3331
	goto	u3330
u3331:
	goto	l1905
u3330:
	
l1907:	
	line	275
;i2c.c: 275: if (ACKSTAT == 1) {
	btfss	(1166/8)^080h,(1166)&7
	goto	u3341
	goto	u3340
u3341:
	goto	l5923
u3340:
	line	277
	
l5917:	
;i2c.c: 277: PEN = 1;
	bsf	(1162/8)^080h,(1162)&7
	line	278
;i2c.c: 278: while (PEN == 1);
	goto	l1909
	
l1910:	
	
l1909:	
	btfsc	(1162/8)^080h,(1162)&7
	goto	u3351
	goto	u3350
u3351:
	goto	l1909
u3350:
	goto	l5919
	
l1911:	
	line	281
	
l5919:	
;i2c.c: 281: b_i2c_error_flag = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_b_i2c_error_flag)
	bsf	status,0
	rlf	(_b_i2c_error_flag),f
	goto	l1904
	line	282
	
l5921:	
;i2c.c: 282: return;
	goto	l1904
	line	283
	
l1908:	
	line	286
	
l5923:	
;i2c.c: 283: }
;i2c.c: 286: SSPBUF = uc_data;
	movf	(uc_i2c_write@uc_data),w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(19)	;volatile
	line	290
;i2c.c: 290: while (RW == 1);
	goto	l1912
	
l1913:	
	
l1912:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfsc	(1186/8)^080h,(1186)&7
	goto	u3361
	goto	u3360
u3361:
	goto	l1912
u3360:
	
l1914:	
	line	296
;i2c.c: 296: if (ACKSTAT == 1) {
	btfss	(1166/8)^080h,(1166)&7
	goto	u3371
	goto	u3370
u3371:
	goto	l1915
u3370:
	line	298
	
l5925:	
;i2c.c: 298: PEN = 1;
	bsf	(1162/8)^080h,(1162)&7
	line	299
;i2c.c: 299: while (PEN == 1);
	goto	l1916
	
l1917:	
	
l1916:	
	btfsc	(1162/8)^080h,(1162)&7
	goto	u3381
	goto	u3380
u3381:
	goto	l1916
u3380:
	goto	l5927
	
l1918:	
	line	302
	
l5927:	
;i2c.c: 302: b_i2c_error_flag = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_b_i2c_error_flag)
	bsf	status,0
	rlf	(_b_i2c_error_flag),f
	goto	l1904
	line	303
	
l5929:	
;i2c.c: 303: return;
	goto	l1904
	line	304
	
l1915:	
	line	307
;i2c.c: 304: }
;i2c.c: 307: PEN = 1;
	bsf	(1162/8)^080h,(1162)&7
	line	308
;i2c.c: 308: while (PEN == 1);
	goto	l1919
	
l1920:	
	
l1919:	
	btfsc	(1162/8)^080h,(1162)&7
	goto	u3391
	goto	u3390
u3391:
	goto	l1919
u3390:
	goto	l5931
	
l1921:	
	line	311
	
l5931:	
;i2c.c: 311: b_i2c_error_flag = 0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_b_i2c_error_flag)
	line	312
	
l1904:	
	return
	opt stack 0
GLOBAL	__end_of_uc_i2c_write
	__end_of_uc_i2c_write:
;; =============== function _uc_i2c_write ends ============

	signat	_uc_i2c_write,12408
	global	_uc_i2c_read
psect	text658,local,class=CODE,delta=2
global __ptext658
__ptext658:

;; *************** function _uc_i2c_read *****************
;; Defined at:
;;		line 101 in file "C:\Users\younce\Documents\DS3231(PIC16F887)\i2c.c"
;; Parameters:    Size  Location     Type
;;  uc_slave_add    1    wreg     unsigned char 
;;  uc_register     1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  uc_slave_add    1   10[COMMON] unsigned char 
;;  count           4    5[COMMON] unsigned long 
;;  uc_received_    1    9[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         6       0       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:        11       0       0       0       0
;;Total ram usage:       11 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_i2c_rtc_initialize
;;		_uc_i2c_rtc_get_seconds
;;		_i2c_rtc_set_seconds
;;		_uc_i2c_rtc_get_minutes
;;		_uc_i2c_rtc_get_hours
;;		_i2c_rtc_set_hours
;;		_uc_i2c_rtc_get_day
;;		_uc_i2c_rtc_get_date
;;		_uc_i2c_rtc_get_month
;;		_uc_i2c_rtc_get_year
;; This function uses a non-reentrant model
;;
psect	text658
	file	"C:\Users\younce\Documents\DS3231(PIC16F887)\i2c.c"
	line	101
	global	__size_of_uc_i2c_read
	__size_of_uc_i2c_read	equ	__end_of_uc_i2c_read-_uc_i2c_read
	
_uc_i2c_read:	
	opt	stack 6
; Regs used in _uc_i2c_read: [wreg+status,2+status,0]
;uc_i2c_read@uc_slave_address stored from wreg
	line	106
	movwf	(uc_i2c_read@uc_slave_address)
	
l5845:	
;i2c.c: 103: unsigned char uc_received_byte;
;i2c.c: 106: b_i2c_error_flag = 0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_b_i2c_error_flag)
	line	109
	
l5847:	
;i2c.c: 109: SEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1160/8)^080h,(1160)&7
	line	110
;i2c.c: 110: while (SEN == 1);
	goto	l1851
	
l1852:	
	
l1851:	
	btfsc	(1160/8)^080h,(1160)&7
	goto	u3121
	goto	u3120
u3121:
	goto	l1851
u3120:
	goto	l5849
	
l1853:	
	line	113
	
l5849:	
;i2c.c: 113: SSPBUF = (uc_slave_address << 1) & 0xfe;
	movf	(uc_i2c_read@uc_slave_address),w
	movwf	(??_uc_i2c_read+0)+0
	addwf	(??_uc_i2c_read+0)+0,w
	andlw	0FEh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(19)	;volatile
	line	117
;i2c.c: 117: while (RW == 1);
	goto	l1854
	
l1855:	
	
l1854:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfsc	(1186/8)^080h,(1186)&7
	goto	u3131
	goto	u3130
u3131:
	goto	l1854
u3130:
	
l1856:	
	line	123
;i2c.c: 123: if (ACKSTAT == 1) {
	btfss	(1166/8)^080h,(1166)&7
	goto	u3141
	goto	u3140
u3141:
	goto	l5859
u3140:
	line	125
	
l5851:	
;i2c.c: 125: PEN = 1;
	bsf	(1162/8)^080h,(1162)&7
	line	126
;i2c.c: 126: while (PEN == 1);
	goto	l1858
	
l1859:	
	
l1858:	
	btfsc	(1162/8)^080h,(1162)&7
	goto	u3151
	goto	u3150
u3151:
	goto	l1858
u3150:
	goto	l5853
	
l1860:	
	line	129
	
l5853:	
;i2c.c: 129: b_i2c_error_flag = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_b_i2c_error_flag)
	bsf	status,0
	rlf	(_b_i2c_error_flag),f
	line	130
	
l5855:	
;i2c.c: 130: return 0;
	movlw	(0)
	goto	l1861
	
l5857:	
	goto	l1861
	line	131
	
l1857:	
	line	134
	
l5859:	
;i2c.c: 131: }
;i2c.c: 134: SSPBUF = uc_register;
	movf	(uc_i2c_read@uc_register),w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(19)	;volatile
	line	138
;i2c.c: 138: while (RW == 1);
	goto	l1862
	
l1863:	
	
l1862:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfsc	(1186/8)^080h,(1186)&7
	goto	u3161
	goto	u3160
u3161:
	goto	l1862
u3160:
	
l1864:	
	line	144
;i2c.c: 144: if (ACKSTAT == 1) {
	btfss	(1166/8)^080h,(1166)&7
	goto	u3171
	goto	u3170
u3171:
	goto	l1865
u3170:
	line	146
	
l5861:	
;i2c.c: 146: PEN = 1;
	bsf	(1162/8)^080h,(1162)&7
	line	147
;i2c.c: 147: while (PEN == 1);
	goto	l1866
	
l1867:	
	
l1866:	
	btfsc	(1162/8)^080h,(1162)&7
	goto	u3181
	goto	u3180
u3181:
	goto	l1866
u3180:
	goto	l5863
	
l1868:	
	line	150
	
l5863:	
;i2c.c: 150: b_i2c_error_flag = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_b_i2c_error_flag)
	bsf	status,0
	rlf	(_b_i2c_error_flag),f
	line	151
	
l5865:	
;i2c.c: 151: return 0;
	movlw	(0)
	goto	l1861
	
l5867:	
	goto	l1861
	line	152
	
l1865:	
	line	157
;i2c.c: 152: }
;i2c.c: 157: RSEN = 1;
	bsf	(1161/8)^080h,(1161)&7
	line	158
;i2c.c: 158: while (RSEN == 1);
	goto	l1869
	
l1870:	
	
l1869:	
	btfsc	(1161/8)^080h,(1161)&7
	goto	u3191
	goto	u3190
u3191:
	goto	l1869
u3190:
	goto	l5869
	
l1871:	
	line	161
	
l5869:	
;i2c.c: 161: SSPBUF = (uc_slave_address << 1) | 0x01;
	setc
	rlf	(uc_i2c_read@uc_slave_address),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(19)	;volatile
	line	165
;i2c.c: 165: while (RW == 1);
	goto	l1872
	
l1873:	
	
l1872:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfsc	(1186/8)^080h,(1186)&7
	goto	u3201
	goto	u3200
u3201:
	goto	l1872
u3200:
	
l1874:	
	line	171
;i2c.c: 171: if (ACKSTAT == 1) {
	btfss	(1166/8)^080h,(1166)&7
	goto	u3211
	goto	u3210
u3211:
	goto	l1875
u3210:
	line	173
	
l5871:	
;i2c.c: 173: PEN = 1;
	bsf	(1162/8)^080h,(1162)&7
	line	174
;i2c.c: 174: while (PEN == 1);
	goto	l1876
	
l1877:	
	
l1876:	
	btfsc	(1162/8)^080h,(1162)&7
	goto	u3221
	goto	u3220
u3221:
	goto	l1876
u3220:
	goto	l5873
	
l1878:	
	line	177
	
l5873:	
;i2c.c: 177: b_i2c_error_flag = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_b_i2c_error_flag)
	bsf	status,0
	rlf	(_b_i2c_error_flag),f
	line	178
	
l5875:	
;i2c.c: 178: return 0;
	movlw	(0)
	goto	l1861
	
l5877:	
	goto	l1861
	line	179
	
l1875:	
	line	182
;i2c.c: 179: }
;i2c.c: 182: RCEN = 1;
	bsf	(1163/8)^080h,(1163)&7
	line	185
	
l5879:	
;i2c.c: 185: unsigned long count = 10000L;
	movlw	0
	movwf	(uc_i2c_read@count+3)
	movlw	0
	movwf	(uc_i2c_read@count+2)
	movlw	027h
	movwf	(uc_i2c_read@count+1)
	movlw	010h
	movwf	(uc_i2c_read@count)

	line	186
;i2c.c: 186: while (BF == 0) {
	goto	l1879
	
l1880:	
	line	189
	
l5881:	
;i2c.c: 189: if (--count == 0) {
	movlw	01h
	movwf	((??_uc_i2c_read+0)+0)
	movlw	0
	movwf	((??_uc_i2c_read+0)+0+1)
	movlw	0
	movwf	((??_uc_i2c_read+0)+0+2)
	movlw	0
	movwf	((??_uc_i2c_read+0)+0+3)
	movf	0+(??_uc_i2c_read+0)+0,w
	subwf	(uc_i2c_read@count),f
	movf	1+(??_uc_i2c_read+0)+0,w
	skipc
	incfsz	1+(??_uc_i2c_read+0)+0,w
	goto	u3235
	goto	u3236
u3235:
	subwf	(uc_i2c_read@count+1),f
u3236:
	movf	2+(??_uc_i2c_read+0)+0,w
	skipc
	incfsz	2+(??_uc_i2c_read+0)+0,w
	goto	u3237
	goto	u3238
u3237:
	subwf	(uc_i2c_read@count+2),f
u3238:
	movf	3+(??_uc_i2c_read+0)+0,w
	skipc
	incfsz	3+(??_uc_i2c_read+0)+0,w
	goto	u3239
	goto	u3230
u3239:
	subwf	(uc_i2c_read@count+3),f
u3230:

	movf	((uc_i2c_read@count+3)),w
	iorwf	((uc_i2c_read@count+2)),w
	iorwf	((uc_i2c_read@count+1)),w
	iorwf	((uc_i2c_read@count)),w
	skipz
	goto	u3241
	goto	u3240
u3241:
	goto	l1879
u3240:
	line	191
	
l5883:	
;i2c.c: 191: PEN = 1;
	bsf	(1162/8)^080h,(1162)&7
	line	192
;i2c.c: 192: while (PEN == 1);
	goto	l1882
	
l1883:	
	
l1882:	
	btfsc	(1162/8)^080h,(1162)&7
	goto	u3251
	goto	u3250
u3251:
	goto	l1882
u3250:
	goto	l5885
	
l1884:	
	line	195
	
l5885:	
;i2c.c: 195: b_i2c_error_flag = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_b_i2c_error_flag)
	bsf	status,0
	rlf	(_b_i2c_error_flag),f
	line	196
	
l5887:	
;i2c.c: 196: return 0;
	movlw	(0)
	goto	l1861
	
l5889:	
	goto	l1861
	line	197
	
l1881:	
	line	198
	
l1879:	
	line	186
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1184/8)^080h,(1184)&7
	goto	u3261
	goto	u3260
u3261:
	goto	l5881
u3260:
	goto	l5891
	
l1885:	
	line	201
	
l5891:	
;i2c.c: 197: }
;i2c.c: 198: }
;i2c.c: 201: uc_received_byte = SSPBUF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(19),w	;volatile
	movwf	(??_uc_i2c_read+0)+0
	movf	(??_uc_i2c_read+0)+0,w
	movwf	(uc_i2c_read@uc_received_byte)
	line	204
	
l5893:	
;i2c.c: 204: ACKDT = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1165/8)^080h,(1165)&7
	line	205
	
l5895:	
;i2c.c: 205: ACKEN = 1;
	bsf	(1164/8)^080h,(1164)&7
	line	206
;i2c.c: 206: while (ACKEN == 1);
	goto	l1886
	
l1887:	
	
l1886:	
	btfsc	(1164/8)^080h,(1164)&7
	goto	u3271
	goto	u3270
u3271:
	goto	l1886
u3270:
	
l1888:	
	line	209
;i2c.c: 209: PEN = 1;
	bsf	(1162/8)^080h,(1162)&7
	line	210
;i2c.c: 210: while (PEN == 1);
	goto	l1889
	
l1890:	
	
l1889:	
	btfsc	(1162/8)^080h,(1162)&7
	goto	u3281
	goto	u3280
u3281:
	goto	l1889
u3280:
	goto	l5897
	
l1891:	
	line	213
	
l5897:	
;i2c.c: 213: b_i2c_error_flag = 0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_b_i2c_error_flag)
	line	214
	
l5899:	
;i2c.c: 214: return uc_received_byte;
	movf	(uc_i2c_read@uc_received_byte),w
	goto	l1861
	
l5901:	
	line	215
	
l1861:	
	return
	opt stack 0
GLOBAL	__end_of_uc_i2c_read
	__end_of_uc_i2c_read:
;; =============== function _uc_i2c_read ends ============

	signat	_uc_i2c_read,8313
	global	_i2c_initialize
psect	text659,local,class=CODE,delta=2
global __ptext659
__ptext659:

;; *************** function _i2c_initialize *****************
;; Defined at:
;;		line 38 in file "C:\Users\younce\Documents\DS3231(PIC16F887)\i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_init
;; This function uses a non-reentrant model
;;
psect	text659
	file	"C:\Users\younce\Documents\DS3231(PIC16F887)\i2c.c"
	line	38
	global	__size_of_i2c_initialize
	__size_of_i2c_initialize	equ	__end_of_i2c_initialize-_i2c_initialize
	
_i2c_initialize:	
	opt	stack 6
; Regs used in _i2c_initialize: [wreg]
	line	40
	
l5827:	
;i2c.c: 40: TRISC3 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1083/8)^080h,(1083)&7
	line	41
;i2c.c: 41: TRISC4 = 1;
	bsf	(1084/8)^080h,(1084)&7
	line	45
	
l5829:	
;i2c.c: 45: SSPADD = 12;
	movlw	(0Ch)
	movwf	(147)^080h	;volatile
	line	48
	
l5831:	
;i2c.c: 48: SSPM3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(163/8),(163)&7
	line	49
	
l5833:	
;i2c.c: 49: SSPM2 = 0;
	bcf	(162/8),(162)&7
	line	50
	
l5835:	
;i2c.c: 50: SSPM1 = 0;
	bcf	(161/8),(161)&7
	line	51
	
l5837:	
;i2c.c: 51: SSPM0 = 0;
	bcf	(160/8),(160)&7
	line	54
	
l5839:	
;i2c.c: 54: WCOL = 0;
	bcf	(167/8),(167)&7
	line	57
	
l5841:	
;i2c.c: 57: SSPOV = 0;
	bcf	(166/8),(166)&7
	line	60
	
l5843:	
;i2c.c: 60: SSPEN = 1;
	bsf	(165/8),(165)&7
	line	61
	
l1845:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_initialize
	__end_of_i2c_initialize:
;; =============== function _i2c_initialize ends ============

	signat	_i2c_initialize,88
psect	text660,local,class=CODE,delta=2
global __ptext660
__ptext660:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
