opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 5239"

opt pagewidth 120

	opt lm

	processor	16F876A
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
;COMMON:	_main->_uart_delay
	FNCALL	_main,_init_uart
	FNCALL	_main,_rx
	FNCALL	_main,_uart_delay
	FNCALL	_main,_tx
	FNROOT	_main
	global	_tx_data
psect	nvCOMMON,class=COMMON,space=1
global __pnvCOMMON
__pnvCOMMON:
_tx_data:
       ds      1

	global	_ADCON0
_ADCON0  equ     31
	global	_ADRESH
_ADRESH  equ     30
	global	_CCP1CON
_CCP1CON  equ     23
	global	_CCP2CON
_CCP2CON  equ     29
	global	_CCPR1H
_CCPR1H  equ     22
	global	_CCPR1L
_CCPR1L  equ     21
	global	_CCPR2H
_CCPR2H  equ     28
	global	_CCPR2L
_CCPR2L  equ     27
	global	_FSR
_FSR  equ     4
	global	_INDF
_INDF  equ     0
	global	_INTCON
_INTCON  equ     11
	global	_PCL
_PCL  equ     2
	global	_PCLATH
_PCLATH  equ     10
	global	_PIR1
_PIR1  equ     12
	global	_PIR2
_PIR2  equ     13
	global	_PORTA
_PORTA  equ     5
	global	_PORTB
_PORTB  equ     6
	global	_PORTC
_PORTC  equ     7
	global	_RCREG
_RCREG  equ     26
	global	_RCSTA
_RCSTA  equ     24
	global	_SSPBUF
_SSPBUF  equ     19
	global	_SSPCON
_SSPCON  equ     20
	global	_STATUS
_STATUS  equ     3
	global	_T1CON
_T1CON  equ     16
	global	_T2CON
_T2CON  equ     18
	global	_TMR0
_TMR0  equ     1
	global	_TMR1H
_TMR1H  equ     15
	global	_TMR1L
_TMR1L  equ     14
	global	_TMR2
_TMR2  equ     17
	global	_TXREG
_TXREG  equ     25
	global	_ADCS0
_ADCS0  equ     254
	global	_ADCS1
_ADCS1  equ     255
	global	_ADDEN
_ADDEN  equ     195
	global	_ADGO
_ADGO  equ     250
	global	_ADIF
_ADIF  equ     102
	global	_ADON
_ADON  equ     248
	global	_BCLIF
_BCLIF  equ     107
	global	_CARRY
_CARRY  equ     24
	global	_CCP1IF
_CCP1IF  equ     98
	global	_CCP1M0
_CCP1M0  equ     184
	global	_CCP1M1
_CCP1M1  equ     185
	global	_CCP1M2
_CCP1M2  equ     186
	global	_CCP1M3
_CCP1M3  equ     187
	global	_CCP1X
_CCP1X  equ     189
	global	_CCP1Y
_CCP1Y  equ     188
	global	_CCP2IF
_CCP2IF  equ     104
	global	_CCP2M0
_CCP2M0  equ     232
	global	_CCP2M1
_CCP2M1  equ     233
	global	_CCP2M2
_CCP2M2  equ     234
	global	_CCP2M3
_CCP2M3  equ     235
	global	_CCP2X
_CCP2X  equ     237
	global	_CCP2Y
_CCP2Y  equ     236
	global	_CHS0
_CHS0  equ     251
	global	_CHS1
_CHS1  equ     252
	global	_CHS2
_CHS2  equ     253
	global	_CKP
_CKP  equ     164
	global	_CMIF
_CMIF  equ     110
	global	_CREN
_CREN  equ     196
	global	_DC
_DC  equ     25
	global	_EEIF
_EEIF  equ     108
	global	_FERR
_FERR  equ     194
	global	_GIE
_GIE  equ     95
	global	_GODONE
_GODONE  equ     250
	global	_INTE
_INTE  equ     92
	global	_INTF
_INTF  equ     89
	global	_IRP
_IRP  equ     31
	global	_OERR
_OERR  equ     193
	global	_PD
_PD  equ     27
	global	_PEIE
_PEIE  equ     94
	global	_RA0
_RA0  equ     40
	global	_RA1
_RA1  equ     41
	global	_RA2
_RA2  equ     42
	global	_RA3
_RA3  equ     43
	global	_RA4
_RA4  equ     44
	global	_RA5
_RA5  equ     45
	global	_RB0
_RB0  equ     48
	global	_RB1
_RB1  equ     49
	global	_RB2
_RB2  equ     50
	global	_RB3
_RB3  equ     51
	global	_RB4
_RB4  equ     52
	global	_RB5
_RB5  equ     53
	global	_RB6
_RB6  equ     54
	global	_RB7
_RB7  equ     55
	global	_RBIE
_RBIE  equ     91
	global	_RBIF
_RBIF  equ     88
	global	_RC0
_RC0  equ     56
	global	_RC1
_RC1  equ     57
	global	_RC2
_RC2  equ     58
	global	_RC3
_RC3  equ     59
	global	_RC4
_RC4  equ     60
	global	_RC5
_RC5  equ     61
	global	_RC6
_RC6  equ     62
	global	_RC7
_RC7  equ     63
	global	_RCIF
_RCIF  equ     101
	global	_RP0
_RP0  equ     29
	global	_RP1
_RP1  equ     30
	global	_RX9
_RX9  equ     198
	global	_RX9D
_RX9D  equ     192
	global	_SPEN
_SPEN  equ     199
	global	_SREN
_SREN  equ     197
	global	_SSPEN
_SSPEN  equ     165
	global	_SSPIF
_SSPIF  equ     99
	global	_SSPM0
_SSPM0  equ     160
	global	_SSPM1
_SSPM1  equ     161
	global	_SSPM2
_SSPM2  equ     162
	global	_SSPM3
_SSPM3  equ     163
	global	_SSPOV
_SSPOV  equ     166
	global	_T0IE
_T0IE  equ     93
	global	_T0IF
_T0IF  equ     90
	global	_T1CKPS0
_T1CKPS0  equ     132
	global	_T1CKPS1
_T1CKPS1  equ     133
	global	_T1OSCEN
_T1OSCEN  equ     131
	global	_T1SYNC
_T1SYNC  equ     130
	global	_T2CKPS0
_T2CKPS0  equ     144
	global	_T2CKPS1
_T2CKPS1  equ     145
	global	_TMR0IE
_TMR0IE  equ     93
	global	_TMR0IF
_TMR0IF  equ     90
	global	_TMR1CS
_TMR1CS  equ     129
	global	_TMR1IF
_TMR1IF  equ     96
	global	_TMR1ON
_TMR1ON  equ     128
	global	_TMR2IF
_TMR2IF  equ     97
	global	_TMR2ON
_TMR2ON  equ     146
	global	_TO
_TO  equ     28
	global	_TOUTPS0
_TOUTPS0  equ     147
	global	_TOUTPS1
_TOUTPS1  equ     148
	global	_TOUTPS2
_TOUTPS2  equ     149
	global	_TOUTPS3
_TOUTPS3  equ     150
	global	_TXIF
_TXIF  equ     100
	global	_WCOL
_WCOL  equ     167
	global	_ZERO
_ZERO  equ     26
	global	_ADCON1
_ADCON1  equ     159
	global	_ADRESL
_ADRESL  equ     158
	global	_CMCON
_CMCON  equ     156
	global	_CVRCON
_CVRCON  equ     157
	global	_OPTION
_OPTION  equ     129
	global	_PCON
_PCON  equ     142
	global	_PIE1
_PIE1  equ     140
	global	_PIE2
_PIE2  equ     141
	global	_PR2
_PR2  equ     146
	global	_SPBRG
_SPBRG  equ     153
	global	_SSPADD
_SSPADD  equ     147
	global	_SSPCON2
_SSPCON2  equ     145
	global	_SSPSTAT
_SSPSTAT  equ     148
	global	_TRISA
_TRISA  equ     133
	global	_TRISB
_TRISB  equ     134
	global	_TRISC
_TRISC  equ     135
	global	_TXSTA
_TXSTA  equ     152
	global	_ACKDT
_ACKDT  equ     1165
	global	_ACKEN
_ACKEN  equ     1164
	global	_ACKSTAT
_ACKSTAT  equ     1166
	global	_ADCS2
_ADCS2  equ     1278
	global	_ADFM
_ADFM  equ     1279
	global	_ADIE
_ADIE  equ     1126
	global	_BCLIE
_BCLIE  equ     1131
	global	_BF
_BF  equ     1184
	global	_BOR
_BOR  equ     1136
	global	_BRGH
_BRGH  equ     1218
	global	_C1INV
_C1INV  equ     1252
	global	_C1OUT
_C1OUT  equ     1254
	global	_C2INV
_C2INV  equ     1253
	global	_C2OUT
_C2OUT  equ     1255
	global	_CCP1IE
_CCP1IE  equ     1122
	global	_CCP2IE
_CCP2IE  equ     1128
	global	_CIS
_CIS  equ     1251
	global	_CKE
_CKE  equ     1190
	global	_CM0
_CM0  equ     1248
	global	_CM1
_CM1  equ     1249
	global	_CM2
_CM2  equ     1250
	global	_CMIE
_CMIE  equ     1134
	global	_CSRC
_CSRC  equ     1223
	global	_CVR0
_CVR0  equ     1256
	global	_CVR1
_CVR1  equ     1257
	global	_CVR2
_CVR2  equ     1258
	global	_CVR3
_CVR3  equ     1259
	global	_CVREN
_CVREN  equ     1263
	global	_CVROE
_CVROE  equ     1262
	global	_CVRR
_CVRR  equ     1261
	global	_DA
_DA  equ     1189
	global	_EEIE
_EEIE  equ     1132
	global	_GCEN
_GCEN  equ     1167
	global	_INTEDG
_INTEDG  equ     1038
	global	_PCFG0
_PCFG0  equ     1272
	global	_PCFG1
_PCFG1  equ     1273
	global	_PCFG2
_PCFG2  equ     1274
	global	_PCFG3
_PCFG3  equ     1275
	global	_PEN
_PEN  equ     1162
	global	_POR
_POR  equ     1137
	global	_PS0
_PS0  equ     1032
	global	_PS1
_PS1  equ     1033
	global	_PS2
_PS2  equ     1034
	global	_PSA
_PSA  equ     1035
	global	_RBPU
_RBPU  equ     1039
	global	_RCEN
_RCEN  equ     1163
	global	_RCIE
_RCIE  equ     1125
	global	_RSEN
_RSEN  equ     1161
	global	_RW
_RW  equ     1186
	global	_SEN
_SEN  equ     1160
	global	_SMP
_SMP  equ     1191
	global	_SSPIE
_SSPIE  equ     1123
	global	_START
_START  equ     1187
	global	_STOP
_STOP  equ     1188
	global	_SYNC
_SYNC  equ     1220
	global	_T0CS
_T0CS  equ     1037
	global	_T0SE
_T0SE  equ     1036
	global	_TMR1IE
_TMR1IE  equ     1120
	global	_TMR2IE
_TMR2IE  equ     1121
	global	_TRISA0
_TRISA0  equ     1064
	global	_TRISA1
_TRISA1  equ     1065
	global	_TRISA2
_TRISA2  equ     1066
	global	_TRISA3
_TRISA3  equ     1067
	global	_TRISA4
_TRISA4  equ     1068
	global	_TRISA5
_TRISA5  equ     1069
	global	_TRISB0
_TRISB0  equ     1072
	global	_TRISB1
_TRISB1  equ     1073
	global	_TRISB2
_TRISB2  equ     1074
	global	_TRISB3
_TRISB3  equ     1075
	global	_TRISB4
_TRISB4  equ     1076
	global	_TRISB5
_TRISB5  equ     1077
	global	_TRISB6
_TRISB6  equ     1078
	global	_TRISB7
_TRISB7  equ     1079
	global	_TRISC0
_TRISC0  equ     1080
	global	_TRISC1
_TRISC1  equ     1081
	global	_TRISC2
_TRISC2  equ     1082
	global	_TRISC3
_TRISC3  equ     1083
	global	_TRISC4
_TRISC4  equ     1084
	global	_TRISC5
_TRISC5  equ     1085
	global	_TRISC6
_TRISC6  equ     1086
	global	_TRISC7
_TRISC7  equ     1087
	global	_TRMT
_TRMT  equ     1217
	global	_TX9
_TX9  equ     1222
	global	_TX9D
_TX9D  equ     1216
	global	_TXEN
_TXEN  equ     1221
	global	_TXIE
_TXIE  equ     1124
	global	_UA
_UA  equ     1185
	global	_EEADR
_EEADR  equ     269
	global	_EEADRH
_EEADRH  equ     271
	global	_EEADRL
_EEADRL  equ     269
	global	_EEDATA
_EEDATA  equ     268
	global	_EEDATH
_EEDATH  equ     270
	global	_EECON1
_EECON1  equ     396
	global	_EECON2
_EECON2  equ     397
	global	_EEPGD
_EEPGD  equ     3175
	global	_RD
_RD  equ     3168
	global	_WR
_WR  equ     3169
	global	_WREN
_WREN  equ     3170
	global	_WRERR
_WRERR  equ     3171
	file	"UART RX.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initationation code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_init_uart
?_init_uart: ;@ 0x0
	global	??_tx
??_tx: ;@ 0x0
	global	??_uart_delay
??_uart_delay: ;@ 0x0
	global	??_rx
??_rx: ;@ 0x0
	global	??_init_uart
??_init_uart: ;@ 0x0
	global	tx@tx_data1
tx@tx_data1:	; 1 bytes @ 0x0
	global	rx@tx_data2
rx@tx_data2:	; 1 bytes @ 0x0
	ds	1
	global	??_main
??_main: ;@ 0x1
	global	?_tx
?_tx: ;@ 0x1
	global	?_rx
?_rx: ;@ 0x1
	global	uart_delay@i
uart_delay@i:	; 2 bytes @ 0x1
	ds	2
	global	uart_delay@j
uart_delay@j:	; 2 bytes @ 0x3
	ds	2
	global	?_uart_delay
?_uart_delay: ;@ 0x5
	global	uart_delay@del
uart_delay@del:	; 2 bytes @ 0x5
	ds	2
	global	?_main
?_main: ;@ 0x7
;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 1 stack 0
;Auto spaces:   Size  Autos    Used
; COMMON          14      7       8
; BANK0           80      0       0
; BANK1           80      0       0
; BANK3           96      0       0
; BANK2           96      0       0


;Pointer list with targets:



;Main: autosize = 0, tempsize = 0, incstack = 0, save=0


;Call graph:                      Base Space Used Autos Args Refs Density
;_main                                                0    0   60   0.00
;          _init_uart
;                 _rx
;         _uart_delay
;                 _tx
;  _uart_delay                                        5    2   40   0.00
;                                    0 COMMO    7
;  _tx                                                1    0   10   0.00
;                                    0 COMMO    1
;  _init_uart                                         0    0    0   0.00
;  _rx                                                1    0   10   0.00
;                                    0 COMMO    1
; Estimated maximum call depth 1
; Address spaces:

;Name               Size   Autos  Total    Cost      Usage
;BITCOMMON            E      0       0       0        0.0%
;CODE                 0      0       0       0        0.0%
;NULL                 0      0       0       0        0.0%
;COMMON               E      7       8       1       57.1%
;SFR0                 0      0       0       1        0.0%
;BITSFR0              0      0       0       1        0.0%
;BITSFR1              0      0       0       2        0.0%
;SFR1                 0      0       0       2        0.0%
;ABS                  0      0       8       2        0.0%
;STACK                0      0       0       3        0.0%
;BITBANK0            50      0       0       4        0.0%
;SFR3                 0      0       0       4        0.0%
;BITSFR3              0      0       0       4        0.0%
;BANK0               50      0       0       5        0.0%
;BITSFR2              0      0       0       5        0.0%
;SFR2                 0      0       0       5        0.0%
;BITBANK1            50      0       0       6        0.0%
;BANK1               50      0       0       7        0.0%
;BITBANK3            60      0       0       8        0.0%
;BANK3               60      0       0       9        0.0%
;BITBANK2            60      0       0      10        0.0%
;BANK2               60      0       0      11        0.0%
;DATA                 0      0       8      12        0.0%
;EEDATA             100      0       0    1000        0.0%

	global	_main
psect	maintext,local,class=CODE,delta=2
global __pmaintext
__pmaintext:

; *************** function _main *****************
; Defined at:
;		line 14 in file "D:\ABHISHEK JOSHI\PIC\UART\UART RX\UART RX.C"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, btemp+0, btemp+1, btemp+2, btemp+3, pclath, cstack
; Tracked objects:
;		On entry : 17F/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         0       0       0       0       0
;      Temp:     0
;      Total:    0
; This function calls:
;		_init_uart
;		_rx
;		_uart_delay
;		_tx
; This function is called by:
;		Startup code after reset
; This function uses a non-reentrant model
; 
psect	maintext
	file	"D:\ABHISHEK JOSHI\PIC\UART\UART RX\UART RX.C"
	line	14
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
;stdio.h: 12: typedef int ptrdiff_t;
;stdio.h: 13: typedef unsigned size_t;
;stdio.h: 14: typedef unsigned short wchar_t;
;stdarg.h: 31: typedef void * va_list[1];
;stdarg.h: 34: extern void * __va_start(void);
;stdarg.h: 37: extern void * __va_arg(void *, ...);
;stdio.h: 27: extern int errno;
;stdio.h: 58: struct __prbuf
;stdio.h: 59: {
;stdio.h: 60: char * ptr;
;stdio.h: 61: void (* func)(char);
;stdio.h: 62: };
;conio.h: 17: extern int errno;
;conio.h: 20: extern void init_uart(void);
;conio.h: 22: extern char getch(void);
	
_main:	
	opt stack 8
; Regs used in _main: [allreg]
	line	16
	
l30000345:	
;UART RX.C: 16: init_uart();
	fcall	_init_uart
	
l4:	
	line	20
;UART RX.C: 19: {
;UART RX.C: 20: tx_data=rx();
	fcall	_rx
	movwf	(_tx_data)
	line	21
;UART RX.C: 21: uart_delay(1);
	movlw	low(01h)
	movwf	(?_uart_delay)
	movlw	high(01h)
	movwf	((?_uart_delay))+1
	fcall	_uart_delay
	line	23
;UART RX.C: 23: tx(tx_data);
	movf	(_tx_data),w
	fcall	_tx
	line	24
;UART RX.C: 24: uart_delay(1);
	movlw	low(01h)
	movwf	(?_uart_delay)
	movlw	high(01h)
	movwf	((?_uart_delay))+1
	fcall	_uart_delay
	goto	l4
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
; =============== function _main ends ============

psect	maintext
	line	27
	signat	_main,88
	global	_uart_delay
psect	text14,local,class=CODE,delta=2
global __ptext14
__ptext14:

; *************** function _uart_delay *****************
; Defined at:
;		line 76 in file "D:\ABHISHEK JOSHI\PIC\UART\UART RX\UART RX.C"
; Parameters:    Size  Location     Type
;  del             2    5[COMMON] unsigned int 
; Auto vars:     Size  Location     Type
;  j               2    3[COMMON] int 
;  i               2    1[COMMON] int 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         7       0       0       0       0
;      Temp:     1
;      Total:    7
; This function calls:
;		Nothing
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text14
	file	"D:\ABHISHEK JOSHI\PIC\UART\UART RX\UART RX.C"
	line	76
	global	__size_of_uart_delay
	__size_of_uart_delay	equ	__end_of_uart_delay-_uart_delay
;UART RX.C: 75: void uart_delay(unsigned int del)
;UART RX.C: 76: {
	
_uart_delay:	
	opt stack 7
; Regs used in _uart_delay: [wreg]
	line	78
	
l30000353:	
;UART RX.C: 77: int j,i;
;UART RX.C: 78: for(i=0;i<=del;i++)
	movlw	low(0)
	movwf	(uart_delay@i)
	movlw	high(0)
	movwf	((uart_delay@i))+1
	goto	l21
	
l30000354:	
	line	79
;UART RX.C: 79: for(j=0;j<=120;j++);
	movlw	low(0)
	movwf	(uart_delay@j)
	movlw	high(0)
	movwf	((uart_delay@j))+1
	
l30000356:	
	movlw	low(01h)
	addwf	(uart_delay@j),f
	skipnc
	incf	(uart_delay@j+1),f
	movlw	high(01h)
	addwf	(uart_delay@j+1),f
	movf	(uart_delay@j+1),w
	xorlw	80h
	movwf	(??_uart_delay+0+0)
	movlw	(high(079h))^80h
	subwf	(??_uart_delay+0+0),w
	skipz
	goto	u35
	movlw	low(079h)
	subwf	(uart_delay@j),w
u35:

	skipc
	goto	u31
	goto	u30
u31:
	goto	l30000356
u30:
	
l30000357:	
	line	78
	movlw	low(01h)
	addwf	(uart_delay@i),f
	skipnc
	incf	(uart_delay@i+1),f
	movlw	high(01h)
	addwf	(uart_delay@i+1),f
	
l21:	
	movf	(uart_delay@i+1),w
	subwf	(uart_delay@del+1),w
	skipz
	goto	u45
	movf	(uart_delay@i),w
	subwf	(uart_delay@del),w
u45:
	skipnc
	goto	u41
	goto	u40
u41:
	goto	l30000354
u40:
	
l17:	
	return
	opt stack 0
GLOBAL	__end_of_uart_delay
	__end_of_uart_delay:
; =============== function _uart_delay ends ============

psect	text15,local,class=CODE,delta=2
global __ptext15
__ptext15:
	line	81
	signat	_uart_delay,4216
	global	_tx

; *************** function _tx *****************
; Defined at:
;		line 59 in file "D:\ABHISHEK JOSHI\PIC\UART\UART RX\UART RX.C"
; Parameters:    Size  Location     Type
;  tx_data1        1    wreg     unsigned char 
; Auto vars:     Size  Location     Type
;  tx_data1        1    0[COMMON] unsigned char 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         1       0       0       0       0
;      Temp:     0
;      Total:    1
; This function calls:
;		Nothing
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text15
	file	"D:\ABHISHEK JOSHI\PIC\UART\UART RX\UART RX.C"
	line	59
	global	__size_of_tx
	__size_of_tx	equ	__end_of_tx-_tx
;UART RX.C: 58: void tx(unsigned char tx_data1)
;UART RX.C: 59: {
	
_tx:	
	opt stack 7
; Regs used in _tx: [wreg]
;tx@tx_data1 stored from wreg
	movwf	(tx@tx_data1)
	
l30000347:	
	
l10:	
	line	60
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7
	goto	u11
	goto	u10
u11:
	goto	l10
u10:
	
l30000348:	
	line	61
;UART RX.C: 61: TXREG=tx_data1;
	movf	(tx@tx_data1),w
	movwf	(25)	;volatile
	
l30000349:	
	line	62
;UART RX.C: 62: TXIF=0;
	bcf	(100/8),(100)&7
	
l9:	
	return
	opt stack 0
GLOBAL	__end_of_tx
	__end_of_tx:
; =============== function _tx ends ============

psect	text16,local,class=CODE,delta=2
global __ptext16
__ptext16:
	line	63
	signat	_tx,4216
	global	_init_uart

; *************** function _init_uart *****************
; Defined at:
;		line 30 in file "D:\ABHISHEK JOSHI\PIC\UART\UART RX\UART RX.C"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         0       0       0       0       0
;      Temp:     0
;      Total:    0
; This function calls:
;		Nothing
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text16
	file	"D:\ABHISHEK JOSHI\PIC\UART\UART RX\UART RX.C"
	line	30
	global	__size_of_init_uart
	__size_of_init_uart	equ	__end_of_init_uart-_init_uart
;UART RX.C: 29: void init_uart()
;UART RX.C: 30: {
	
_init_uart:	
	opt stack 7
; Regs used in _init_uart: [wreg]
	line	31
	
l30000346:	
;UART RX.C: 31: TXSTA=0x24;
	movlw	(024h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(152)^080h	;volatile
	line	32
;UART RX.C: 32: SPBRG=25;
	movlw	(019h)
	movwf	(153)^080h	;volatile
	line	33
;UART RX.C: 33: RCSTA=0x90;
	movlw	(090h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(24)	;volatile
	
l6:	
	return
	opt stack 0
GLOBAL	__end_of_init_uart
	__end_of_init_uart:
; =============== function _init_uart ends ============

psect	text17,local,class=CODE,delta=2
global __ptext17
__ptext17:
	line	34
	signat	_init_uart,88
	global	_rx

; *************** function _rx *****************
; Defined at:
;		line 66 in file "D:\ABHISHEK JOSHI\PIC\UART\UART RX\UART RX.C"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;  tx_data2        1    0[COMMON] unsigned char 
; Return value:  Size  Location     Type
;                  1    wreg      unsigned char 
; Registers used:
;		wreg
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         1       0       0       0       0
;      Temp:     0
;      Total:    1
; This function calls:
;		Nothing
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text17
	file	"D:\ABHISHEK JOSHI\PIC\UART\UART RX\UART RX.C"
	line	66
	global	__size_of_rx
	__size_of_rx	equ	__end_of_rx-_rx
;UART RX.C: 65: unsigned char rx()
;UART RX.C: 66: {
	
_rx:	
	opt stack 7
; Regs used in _rx: [wreg]
	
l30000350:	
	
l14:	
	line	68
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7
	goto	u21
	goto	u20
u21:
	goto	l14
u20:
	
l30000351:	
	line	69
;UART RX.C: 69: tx_data2=RCREG;
	movf	(26),w	;volatile
	movwf	(rx@tx_data2)
	line	71
;UART RX.C: 71: return(tx_data2);
	movf	(rx@tx_data2),w
	
l13:	
	return
	opt stack 0
GLOBAL	__end_of_rx
	__end_of_rx:
; =============== function _rx ends ============

psect	text18,local,class=CODE,delta=2
global __ptext18
__ptext18:
	line	72
	signat	_rx,89
	end
