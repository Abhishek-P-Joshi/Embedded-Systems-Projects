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
	FNCALL	_main,_display
	FNCALL	_main,_incrementd
	FNCALL	_display,_delay
	FNROOT	_main
	global	_disp
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"D:\ABHISHEK JOSHI\PIC\T4\T4.c"
	line	9

;initializer for _disp
	retlw	0FCh
	retlw	060h
	retlw	0DAh
	retlw	0F2h
	retlw	066h
	retlw	0B6h
	retlw	0BEh
	retlw	0E0h
	retlw	0FEh
	retlw	0F6h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	global	_ds1
	global	_ds2
	global	_ds3
	global	_ds4
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
	file	"T4.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_ds1:
       ds      1

_ds2:
       ds      1

_ds3:
       ds      1

_ds4:
       ds      1

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"D:\ABHISHEK JOSHI\PIC\T4\T4.c"
	line	9
_disp:
       ds      25

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
global btemp
psect inittext,class=CODE,delta=2
global init_fetch,btemp
;	Called with low address in FSR and high address in W
init_fetch:
	movf btemp,w
	movwf pclath
	movf btemp+1,w
	movwf pc
global init_ram
;Called with:
;	high address of idata address in btemp 
;	low address of idata address in btemp+1 
;	low address of data in FSR
;	high address + 1 of data in btemp-1
init_ram:
	fcall init_fetch
	movwf indf,f
	incf fsr,f
	movf fsr,w
	xorwf btemp-1,w
	btfsc status,2
	retlw 0
	incf btemp+1,f
	btfsc status,2
	incf btemp,f
	goto init_ram
; Initialize objects allocated to BANK0
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK0
	bcf	status, 7	;select IRP bank0
	movlw low(__pdataBANK0+25)
	movwf btemp-1,f
	movlw high(__pidataBANK0)
	movwf btemp,f
	movlw low(__pidataBANK0)
	movwf btemp+1,f
	movlw low(__pdataBANK0)
	movwf fsr,f
	fcall init_ram
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initationation code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_incrementd
?_incrementd: ;@ 0x0
	global	??_incrementd
??_incrementd: ;@ 0x0
	global	??_delay
??_delay: ;@ 0x0
	ds	1
	global	??_display
??_display: ;@ 0x1
	global	delay@d1
delay@d1:	; 2 bytes @ 0x1
	ds	2
	global	delay@d2
delay@d2:	; 2 bytes @ 0x3
	ds	2
	global	?_delay
?_delay: ;@ 0x5
	global	delay@del
delay@del:	; 2 bytes @ 0x5
	ds	2
	global	??_main
??_main: ;@ 0x7
	global	?_display
?_display: ;@ 0x7
	ds	1
	global	main@j
main@j:	; 2 bytes @ 0x8
	ds	2
	global	?_main
?_main: ;@ 0xA
;Data sizes: Strings 0, constant 0, data 25, bss 4, persistent 0 stack 0
;Auto spaces:   Size  Autos    Used
; COMMON          14     10      14
; BANK0           80      0      25
; BANK1           80      0       0
; BANK3           96      0       0
; BANK2           96      0       0


;Pointer list with targets:



;Main: autosize = 0, tempsize = 1, incstack = 0, save=0


;Call graph:                      Base Space Used Autos Args Refs Density
;_main                                                5    0   60   0.00
;                                    7 COMMO    3
;            _display
;         _incrementd
;  _incrementd                                        0    0    0   0.00
;  _display                                           0    0   40   0.00
;              _delay
;    _delay                                           5    2   40   0.00
;                                    0 COMMO    7
; Estimated maximum call depth 2
; Address spaces:

;Name               Size   Autos  Total    Cost      Usage
;BITCOMMON            E      0       0       0        0.0%
;CODE                 0      0       0       0        0.0%
;NULL                 0      0       0       0        0.0%
;COMMON               E      A       E       1      100.0%
;SFR0                 0      0       0       1        0.0%
;BITSFR0              0      0       0       1        0.0%
;BITSFR1              0      0       0       2        0.0%
;SFR1                 0      0       0       2        0.0%
;ABS                  0      0      27       2        0.0%
;STACK                0      0       0       3        0.0%
;BITBANK0            50      0       0       4        0.0%
;SFR3                 0      0       0       4        0.0%
;BITSFR3              0      0       0       4        0.0%
;BANK0               50      0      19       5       31.3%
;BITSFR2              0      0       0       5        0.0%
;SFR2                 0      0       0       5        0.0%
;BITBANK1            50      0       0       6        0.0%
;BANK1               50      0       0       7        0.0%
;BITBANK3            60      0       0       8        0.0%
;BANK3               60      0       0       9        0.0%
;BITBANK2            60      0       0      10        0.0%
;BANK2               60      0       0      11        0.0%
;DATA                 0      0      27      12        0.0%
;EEDATA             100      0       0    1000        0.0%

	global	_main
psect	maintext,local,class=CODE,delta=2
global __pmaintext
__pmaintext:

; *************** function _main *****************
; Defined at:
;		line 17 in file "D:\ABHISHEK JOSHI\PIC\T4\T4.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;  j               2    8[COMMON] int 
;  i               2    0        int 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, btemp+0, btemp+1, btemp+2, btemp+3, pclath, cstack
; Tracked objects:
;		On entry : 17F/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         3       0       0       0       0
;      Temp:     1
;      Total:    3
; This function calls:
;		_display
;		_incrementd
; This function is called by:
;		Startup code after reset
; This function uses a non-reentrant model
; 
psect	maintext
	file	"D:\ABHISHEK JOSHI\PIC\T4\T4.c"
	line	17
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
;pic168xa.h: 19: volatile unsigned char INDF @ 0x00;
;pic168xa.h: 20: volatile unsigned char TMR0 @ 0x01;
;pic168xa.h: 21: volatile unsigned char PCL @ 0x02;
;pic168xa.h: 22: volatile unsigned char STATUS @ 0x03;
;pic168xa.h: 23: unsigned char FSR @ 0x04;
;pic168xa.h: 24: volatile unsigned char PORTA @ 0x05;
;pic168xa.h: 25: volatile unsigned char PORTB @ 0x06;
;pic168xa.h: 26: volatile unsigned char PORTC @ 0x07;
;pic168xa.h: 31: unsigned char PCLATH @ 0x0A;
;pic168xa.h: 32: volatile unsigned char INTCON @ 0x0B;
	
_main:	
	opt stack 8
; Regs used in _main: [allreg]
	line	18
	
l30000345:	
;T4.c: 18: TRISB=0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	19
;T4.c: 19: TRISA=0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(133)^080h	;volatile
	line	20
;T4.c: 20: TRISC=0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(135)^080h	;volatile
	
l30000346:	
	line	24
;T4.c: 23: {
;T4.c: 24: for(j=0;j<=5;j++)
	movlw	low(0)
	movwf	(main@j)
	movlw	high(0)
	movwf	((main@j))+1
	
l30000349:	
	line	25
;T4.c: 25: display();
	fcall	_display
	
l30000350:	
	line	24
	movlw	low(01h)
	addwf	(main@j),f
	skipnc
	incf	(main@j+1),f
	movlw	high(01h)
	addwf	(main@j+1),f
	
l30000351:	
	movf	(main@j+1),w
	xorlw	80h
	movwf	(??_main+0+0)
	movlw	(high(06h))^80h
	subwf	(??_main+0+0),w
	skipz
	goto	u15
	movlw	low(06h)
	subwf	(main@j),w
u15:

	skipc
	goto	u11
	goto	u10
u11:
	goto	l30000349
u10:
	
l30000352:	
	line	26
;T4.c: 26: incrementd();
	fcall	_incrementd
	goto	l30000346
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
; =============== function _main ends ============

psect	maintext
	line	28
	signat	_main,88
	global	_incrementd
psect	text11,local,class=CODE,delta=2
global __ptext11
__ptext11:

; *************** function _incrementd *****************
; Defined at:
;		line 74 in file "D:\ABHISHEK JOSHI\PIC\T4\T4.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0
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
psect	text11
	file	"D:\ABHISHEK JOSHI\PIC\T4\T4.c"
	line	74
	global	__size_of_incrementd
	__size_of_incrementd	equ	__end_of_incrementd-_incrementd
;T4.c: 73: void incrementd()
;T4.c: 74: {
	
_incrementd:	
	opt stack 7
; Regs used in _incrementd: [wreg+status,2+status,0]
	line	76
	
l30000377:	
;T4.c: 76: ds1=ds1+1;
	movf	(_ds1),w
	addlw	01h
	movwf	(_ds1)
	
l30000378:	
	line	77
;T4.c: 77: if (ds1>9)
	movlw	(0Ah)
	subwf	(_ds1),w
	skipc
	goto	u41
	goto	u40
u41:
	goto	l18
u40:
	
l30000379:	
	line	79
;T4.c: 78: {
;T4.c: 79: ds1=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_ds1)
	line	80
;T4.c: 80: ds2=ds2+1;
	movf	(_ds2),w
	addlw	01h
	movwf	(_ds2)
	
l30000380:	
	line	82
;T4.c: 82: if (ds2>9)
	movlw	(0Ah)
	subwf	(_ds2),w
	skipc
	goto	u51
	goto	u50
u51:
	goto	l18
u50:
	
l30000381:	
	line	84
;T4.c: 83: {
;T4.c: 84: ds2=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_ds2)
	line	85
;T4.c: 85: ds3=ds3+1;
	movf	(_ds3),w
	addlw	01h
	movwf	(_ds3)
	
l30000382:	
	line	87
;T4.c: 87: if (ds3>9)
	movlw	(0Ah)
	subwf	(_ds3),w
	skipc
	goto	u61
	goto	u60
u61:
	goto	l18
u60:
	
l30000383:	
	line	89
;T4.c: 88: {
;T4.c: 89: ds3=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_ds3)
	line	90
;T4.c: 90: ds4=ds4+1;
	movf	(_ds4),w
	addlw	01h
	movwf	(_ds4)
	
l30000384:	
	line	92
;T4.c: 92: if(ds4>9)
	movlw	(0Ah)
	subwf	(_ds4),w
	skipc
	goto	u71
	goto	u70
u71:
	goto	l18
u70:
	
l30000385:	
	line	94
;T4.c: 93: {
;T4.c: 94: ds1=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_ds1)
	line	95
;T4.c: 95: ds2=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_ds2)
	line	96
;T4.c: 96: ds3=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_ds3)
	line	97
;T4.c: 97: ds4=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_ds4)
	
l18:	
	return
	opt stack 0
GLOBAL	__end_of_incrementd
	__end_of_incrementd:
; =============== function _incrementd ends ============

psect	text12,local,class=CODE,delta=2
global __ptext12
__ptext12:
	line	107
	signat	_incrementd,88
	global	_display

; *************** function _display *****************
; Defined at:
;		line 31 in file "D:\ABHISHEK JOSHI\PIC\T4\T4.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, btemp+0, btemp+1, btemp+2, btemp+3, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         0       0       0       0       0
;      Temp:     0
;      Total:    0
; This function calls:
;		_delay
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text12
	file	"D:\ABHISHEK JOSHI\PIC\T4\T4.c"
	line	31
	global	__size_of_display
	__size_of_display	equ	__end_of_display-_display
;T4.c: 29: void display()
;T4.c: 31: {
	
_display:	
	opt stack 7
; Regs used in _display: [allreg]
	line	32
	
l30000353:	
;T4.c: 32: RA1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(41/8),(41)&7
	line	33
;T4.c: 33: RC0=1;
	bsf	(56/8),(56)&7
	line	34
;T4.c: 34: RC1=1;
	bsf	(57/8),(57)&7
	line	35
;T4.c: 35: RC2=1;
	bsf	(58/8),(58)&7
	
l30000354:	
	line	37
;T4.c: 37: PORTB=disp[ds1];
	movf	(_ds1),w
	addlw	(_disp)&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(6)	;volatile
	
l30000355:	
	line	38
;T4.c: 38: delay(1);
	movlw	low(01h)
	movwf	(?_delay)
	movlw	high(01h)
	movwf	((?_delay))+1
	fcall	_delay
	
l30000356:	
	line	40
;T4.c: 40: RA1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(41/8),(41)&7
	
l30000357:	
	line	41
;T4.c: 41: RC0=0;
	bcf	(56/8),(56)&7
	
l30000358:	
	line	42
;T4.c: 42: RC1=1;
	bsf	(57/8),(57)&7
	
l30000359:	
	line	43
;T4.c: 43: RC2=1;
	bsf	(58/8),(58)&7
	
l30000360:	
	line	45
;T4.c: 45: PORTB=disp[ds2];
	movf	(_ds2),w
	addlw	(_disp)&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(6)	;volatile
	line	46
;T4.c: 46: delay(1);
	movlw	low(01h)
	movwf	(?_delay)
	movlw	high(01h)
	movwf	((?_delay))+1
	fcall	_delay
	
l30000361:	
	line	48
;T4.c: 48: RA1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(41/8),(41)&7
	
l30000362:	
	line	49
;T4.c: 49: RC0=1;
	bsf	(56/8),(56)&7
	
l30000363:	
	line	50
;T4.c: 50: RC1=0;
	bcf	(57/8),(57)&7
	
l30000364:	
	line	51
;T4.c: 51: RC2=1;
	bsf	(58/8),(58)&7
	
l30000365:	
	line	53
;T4.c: 53: PORTB=disp[ds3];
	movf	(_ds3),w
	addlw	(_disp)&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(6)	;volatile
	
l30000366:	
	line	54
;T4.c: 54: delay(1);
	movlw	low(01h)
	movwf	(?_delay)
	movlw	high(01h)
	movwf	((?_delay))+1
	fcall	_delay
	
l30000367:	
	line	56
;T4.c: 56: RA1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(41/8),(41)&7
	
l30000368:	
	line	57
;T4.c: 57: RC0=1;
	bsf	(56/8),(56)&7
	
l30000369:	
	line	58
;T4.c: 58: RC1=1;
	bsf	(57/8),(57)&7
	
l30000370:	
	line	59
;T4.c: 59: RC2=0;
	bcf	(58/8),(58)&7
	line	61
;T4.c: 61: PORTB=disp[ds4];
	movf	(_ds4),w
	addlw	(_disp)&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(6)	;volatile
	
l30000371:	
	line	62
;T4.c: 62: delay(1);
	movlw	low(01h)
	movwf	(?_delay)
	movlw	high(01h)
	movwf	((?_delay))+1
	fcall	_delay
	
l9:	
	return
	opt stack 0
GLOBAL	__end_of_display
	__end_of_display:
; =============== function _display ends ============

psect	text13,local,class=CODE,delta=2
global __ptext13
__ptext13:
	line	64
	signat	_display,88
	global	_delay

; *************** function _delay *****************
; Defined at:
;		line 67 in file "D:\ABHISHEK JOSHI\PIC\T4\T4.c"
; Parameters:    Size  Location     Type
;  del             2    5[COMMON] unsigned int 
; Auto vars:     Size  Location     Type
;  d2              2    3[COMMON] int 
;  d1              2    1[COMMON] int 
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
;		_display
; This function uses a non-reentrant model
; 
psect	text13
	file	"D:\ABHISHEK JOSHI\PIC\T4\T4.c"
	line	67
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
;T4.c: 66: void delay(unsigned int del)
;T4.c: 67: {
	
_delay:	
	opt stack 6
; Regs used in _delay: [wreg]
	line	69
	
l30000372:	
;T4.c: 68: int d1,d2;
;T4.c: 69: for(d1=0;d1<=del;d1++)
	movlw	low(0)
	movwf	(delay@d1)
	movlw	high(0)
	movwf	((delay@d1))+1
	goto	l14
	
l30000373:	
	line	70
;T4.c: 70: for(d2=0;d2<=120;d2++);
	movlw	low(0)
	movwf	(delay@d2)
	movlw	high(0)
	movwf	((delay@d2))+1
	
l30000375:	
	movlw	low(01h)
	addwf	(delay@d2),f
	skipnc
	incf	(delay@d2+1),f
	movlw	high(01h)
	addwf	(delay@d2+1),f
	movf	(delay@d2+1),w
	xorlw	80h
	movwf	(??_delay+0+0)
	movlw	(high(079h))^80h
	subwf	(??_delay+0+0),w
	skipz
	goto	u25
	movlw	low(079h)
	subwf	(delay@d2),w
u25:

	skipc
	goto	u21
	goto	u20
u21:
	goto	l30000375
u20:
	
l30000376:	
	line	69
	movlw	low(01h)
	addwf	(delay@d1),f
	skipnc
	incf	(delay@d1+1),f
	movlw	high(01h)
	addwf	(delay@d1+1),f
	
l14:	
	movf	(delay@d1+1),w
	subwf	(delay@del+1),w
	skipz
	goto	u35
	movf	(delay@d1),w
	subwf	(delay@del),w
u35:
	skipnc
	goto	u31
	goto	u30
u31:
	goto	l30000373
u30:
	
l10:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
; =============== function _delay ends ============

psect	text14,local,class=CODE,delta=2
global __ptext14
__ptext14:
	line	71
	signat	_delay,4216
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	end
