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
	FNCALL	_display,_adisp1
	FNCALL	_display,_delay
	FNCALL	_display,_adisp2
	FNCALL	_display,_adisp3
	FNCALL	_display,_adisp4
	FNROOT	_main
	global	_disp
	global	_ds1
	global	_ds2
	global	_ds3
	global	_ds4
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"D:\ABHISHEK JOSHI\PIC\T5\T5.C"
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
psect	idataCOMMON,class=CODE,space=0,delta=2
global __pidataCOMMON
__pidataCOMMON:
	line	10

;initializer for _ds1
	retlw	030h

;initializer for _ds2
	retlw	030h

;initializer for _ds3
	retlw	030h

;initializer for _ds4
	retlw	030h
	global	_i
	global	_k
	global	_j
psect	nvCOMMON,class=COMMON,space=1
global __pnvCOMMON
__pnvCOMMON:
_j:
       ds      2

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
	file	"T5.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	dataCOMMON,class=COMMON,space=1
global __pdataCOMMON
__pdataCOMMON:
	file	"D:\ABHISHEK JOSHI\PIC\T5\T5.C"
	line	10
_ds1:
       ds      1

psect	dataCOMMON
	file	"D:\ABHISHEK JOSHI\PIC\T5\T5.C"
	line	10
_ds2:
       ds      1

psect	dataCOMMON
	file	"D:\ABHISHEK JOSHI\PIC\T5\T5.C"
	line	10
_ds3:
       ds      1

psect	dataCOMMON
	file	"D:\ABHISHEK JOSHI\PIC\T5\T5.C"
	line	10
_ds4:
       ds      1

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_i:
       ds      2

_k:
       ds      2

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"D:\ABHISHEK JOSHI\PIC\T5\T5.C"
	line	9
_disp:
       ds      25

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
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
; Initialize objects allocated to COMMON
psect cinit,class=CODE,delta=2
global init_ram, __pidataCOMMON
	movlw low(__pdataCOMMON+4)
	movwf btemp-1,f
	movlw high(__pidataCOMMON)
	movwf btemp,f
	movlw low(__pidataCOMMON)
	movwf btemp+1,f
	movlw low(__pdataCOMMON)
	movwf fsr,f
	fcall init_ram
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
	global	?_adisp1
?_adisp1: ;@ 0x0
	global	??_adisp4
??_adisp4: ;@ 0x0
	global	?_adisp4
?_adisp4: ;@ 0x0
	global	??_adisp1
??_adisp1: ;@ 0x0
	global	??_adisp2
??_adisp2: ;@ 0x0
	global	?_adisp2
?_adisp2: ;@ 0x0
	global	??_delay
??_delay: ;@ 0x0
	global	??_adisp3
??_adisp3: ;@ 0x0
	global	??_incrementd
??_incrementd: ;@ 0x0
	global	?_adisp3
?_adisp3: ;@ 0x0
	ds	1
	global	?_incrementd
?_incrementd: ;@ 0x1
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
	global	?_main
?_main: ;@ 0x8
;Data sizes: Strings 0, constant 0, data 29, bss 4, persistent 2 stack 0
;Auto spaces:   Size  Autos    Used
; COMMON          14      8      14
; BANK0           80      0      29
; BANK1           80      0       0
; BANK3           96      0       0
; BANK2           96      0       0


;Pointer list with targets:



;Main: autosize = 0, tempsize = 1, incstack = 0, save=0


;Call graph:                      Base Space Used Autos Args Refs Density
;_main                                                1    0   40   0.00
;                                    7 COMMO    1
;            _display
;         _incrementd
;  _incrementd                                        1    0    0   0.00
;                                    0 COMMO    1
;  _display                                           0    0   40   0.00
;             _adisp1
;              _delay
;             _adisp2
;             _adisp3
;             _adisp4
;    _adisp3                                          0    0    0   0.00
;    _adisp4                                          0    0    0   0.00
;    _adisp1                                          0    0    0   0.00
;    _delay                                           5    2   40   0.00
;                                    0 COMMO    7
;    _adisp2                                          0    0    0   0.00
; Estimated maximum call depth 2
; Address spaces:

;Name               Size   Autos  Total    Cost      Usage
;BITCOMMON            E      0       0       0        0.0%
;CODE                 0      0       0       0        0.0%
;NULL                 0      0       0       0        0.0%
;COMMON               E      8       E       1      100.0%
;SFR0                 0      0       0       1        0.0%
;BITSFR0              0      0       0       1        0.0%
;BITSFR1              0      0       0       2        0.0%
;SFR1                 0      0       0       2        0.0%
;ABS                  0      0      2B       2        0.0%
;STACK                0      0       0       3        0.0%
;BITBANK0            50      0       0       4        0.0%
;SFR3                 0      0       0       4        0.0%
;BITSFR3              0      0       0       4        0.0%
;BANK0               50      0      1D       5       36.3%
;BITSFR2              0      0       0       5        0.0%
;SFR2                 0      0       0       5        0.0%
;BITBANK1            50      0       0       6        0.0%
;BANK1               50      0       0       7        0.0%
;BITBANK3            60      0       0       8        0.0%
;BANK3               60      0       0       9        0.0%
;BITBANK2            60      0       0      10        0.0%
;BANK2               60      0       0      11        0.0%
;DATA                 0      0      2B      12        0.0%
;EEDATA             100      0       0    1000        0.0%

	global	_main
psect	maintext,local,class=CODE,delta=2
global __pmaintext
__pmaintext:

; *************** function _main *****************
; Defined at:
;		line 23 in file "D:\ABHISHEK JOSHI\PIC\T5\T5.C"
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
;      Locals:         1       0       0       0       0
;      Temp:     1
;      Total:    1
; This function calls:
;		_display
;		_incrementd
; This function is called by:
;		Startup code after reset
; This function uses a non-reentrant model
; 
psect	maintext
	file	"D:\ABHISHEK JOSHI\PIC\T5\T5.C"
	line	23
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
	line	24
	
l30000356:	
;T5.C: 24: TRISB=0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	25
;T5.C: 25: TRISA=0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(133)^080h	;volatile
	line	26
;T5.C: 26: TRISC=0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(135)^080h	;volatile
	
l30000357:	
	line	30
;T5.C: 29: {
;T5.C: 30: for(j=0;j<=20;j++)
	movlw	low(0)
	movwf	(_j)
	movlw	high(0)
	movwf	((_j))+1
	
l30000360:	
	line	31
;T5.C: 31: display();
	fcall	_display
	
l30000361:	
	line	30
	movlw	low(01h)
	addwf	(_j),f
	skipnc
	incf	(_j+1),f
	movlw	high(01h)
	addwf	(_j+1),f
	
l30000362:	
	movf	(_j+1),w
	xorlw	80h
	movwf	(??_main+0+0)
	movlw	(high(015h))^80h
	subwf	(??_main+0+0),w
	skipz
	goto	u15
	movlw	low(015h)
	subwf	(_j),w
u15:

	skipc
	goto	u11
	goto	u10
u11:
	goto	l30000360
u10:
	
l30000363:	
	line	32
;T5.C: 32: incrementd();
	fcall	_incrementd
	goto	l30000357
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
; =============== function _main ends ============

psect	maintext
	line	34
	signat	_main,88
	global	_incrementd
psect	text23,local,class=CODE,delta=2
global __ptext23
__ptext23:

; *************** function _incrementd *****************
; Defined at:
;		line 104 in file "D:\ABHISHEK JOSHI\PIC\T5\T5.C"
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
;      Locals:         1       0       0       0       0
;      Temp:     1
;      Total:    1
; This function calls:
;		Nothing
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text23
	file	"D:\ABHISHEK JOSHI\PIC\T5\T5.C"
	line	104
	global	__size_of_incrementd
	__size_of_incrementd	equ	__end_of_incrementd-_incrementd
;T5.C: 103: void incrementd()
;T5.C: 104: {
	
_incrementd:	
	opt stack 7
; Regs used in _incrementd: [wreg+status,2+status,0]
	line	106
	
l30000387:	
;T5.C: 106: ds1++;
	movlw	(01h)
	movwf	(??_incrementd+0+0)
	movf	(??_incrementd+0+0),w
	addwf	(_ds1),f
	
l30000388:	
	line	107
;T5.C: 107: if (ds1>'9')
	movlw	(03Ah)
	subwf	(_ds1),w
	skipc
	goto	u41
	goto	u40
u41:
	goto	l22
u40:
	
l30000389:	
	line	109
;T5.C: 108: {
;T5.C: 109: ds1='0';
	movlw	(030h)
	movwf	(_ds1)
	
l30000390:	
	line	110
;T5.C: 110: ds2++;
	movlw	(01h)
	movwf	(??_incrementd+0+0)
	movf	(??_incrementd+0+0),w
	addwf	(_ds2),f
	
l30000391:	
	line	112
;T5.C: 112: if (ds2>'9')
	movlw	(03Ah)
	subwf	(_ds2),w
	skipc
	goto	u51
	goto	u50
u51:
	goto	l22
u50:
	
l30000392:	
	line	114
;T5.C: 113: {
;T5.C: 114: ds2='0';
	movlw	(030h)
	movwf	(_ds2)
	
l30000393:	
	line	115
;T5.C: 115: ds3++;
	movlw	(01h)
	movwf	(??_incrementd+0+0)
	movf	(??_incrementd+0+0),w
	addwf	(_ds3),f
	
l30000394:	
	line	117
;T5.C: 117: if (ds3>'9')
	movlw	(03Ah)
	subwf	(_ds3),w
	skipc
	goto	u61
	goto	u60
u61:
	goto	l22
u60:
	
l30000395:	
	line	119
;T5.C: 118: {
;T5.C: 119: ds3='0';
	movlw	(030h)
	movwf	(_ds3)
	
l30000396:	
	line	120
;T5.C: 120: ds4++;
	movlw	(01h)
	movwf	(??_incrementd+0+0)
	movf	(??_incrementd+0+0),w
	addwf	(_ds4),f
	
l30000397:	
	line	122
;T5.C: 122: if(ds4>'9')
	movlw	(03Ah)
	subwf	(_ds4),w
	skipc
	goto	u71
	goto	u70
u71:
	goto	l24
u70:
	
l30000398:	
	line	124
;T5.C: 123: {
;T5.C: 124: ds1='0';
	movlw	(030h)
	movwf	(_ds1)
	line	125
;T5.C: 125: ds2='0';
	movlw	(030h)
	movwf	(_ds2)
	line	126
;T5.C: 126: ds3='0';
	movlw	(030h)
	movwf	(_ds3)
	line	127
;T5.C: 127: ds4='0';
	movlw	(030h)
	movwf	(_ds4)
	goto	l22
	
l24:	
	
l22:	
	return
	opt stack 0
GLOBAL	__end_of_incrementd
	__end_of_incrementd:
; =============== function _incrementd ends ============

psect	text24,local,class=CODE,delta=2
global __ptext24
__ptext24:
	line	132
	signat	_incrementd,88
	global	_display

; *************** function _display *****************
; Defined at:
;		line 37 in file "D:\ABHISHEK JOSHI\PIC\T5\T5.C"
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
;		_adisp1
;		_delay
;		_adisp2
;		_adisp3
;		_adisp4
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text24
	file	"D:\ABHISHEK JOSHI\PIC\T5\T5.C"
	line	37
	global	__size_of_display
	__size_of_display	equ	__end_of_display-_display
;T5.C: 35: void display()
;T5.C: 37: {
	
_display:	
	opt stack 7
; Regs used in _display: [allreg]
	line	38
	
l30000364:	
;T5.C: 38: RA1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(41/8),(41)&7
	line	39
;T5.C: 39: RC0=1;
	bsf	(56/8),(56)&7
	line	40
;T5.C: 40: RC1=1;
	bsf	(57/8),(57)&7
	line	41
;T5.C: 41: RC2=1;
	bsf	(58/8),(58)&7
	
l30000365:	
	line	43
;T5.C: 43: adisp1();
	fcall	_adisp1
	line	44
;T5.C: 44: delay(1);
	movlw	low(01h)
	movwf	(?_delay)
	movlw	high(01h)
	movwf	((?_delay))+1
	fcall	_delay
	
l30000366:	
	line	46
;T5.C: 46: RA1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(41/8),(41)&7
	
l30000367:	
	line	47
;T5.C: 47: RC0=0;
	bcf	(56/8),(56)&7
	
l30000368:	
	line	48
;T5.C: 48: RC1=1;
	bsf	(57/8),(57)&7
	
l30000369:	
	line	49
;T5.C: 49: RC2=1;
	bsf	(58/8),(58)&7
	line	51
;T5.C: 51: adisp2();
	fcall	_adisp2
	line	52
;T5.C: 52: delay(1);
	movlw	low(01h)
	movwf	(?_delay)
	movlw	high(01h)
	movwf	((?_delay))+1
	fcall	_delay
	
l30000370:	
	line	54
;T5.C: 54: RA1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(41/8),(41)&7
	
l30000371:	
	line	55
;T5.C: 55: RC0=1;
	bsf	(56/8),(56)&7
	
l30000372:	
	line	56
;T5.C: 56: RC1=0;
	bcf	(57/8),(57)&7
	
l30000373:	
	line	57
;T5.C: 57: RC2=1;
	bsf	(58/8),(58)&7
	line	59
;T5.C: 59: adisp3();
	fcall	_adisp3
	line	60
;T5.C: 60: delay(1);
	movlw	low(01h)
	movwf	(?_delay)
	movlw	high(01h)
	movwf	((?_delay))+1
	fcall	_delay
	
l30000374:	
	line	62
;T5.C: 62: RA1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(41/8),(41)&7
	
l30000375:	
	line	63
;T5.C: 63: RC0=1;
	bsf	(56/8),(56)&7
	
l30000376:	
	line	64
;T5.C: 64: RC1=1;
	bsf	(57/8),(57)&7
	
l30000377:	
	line	65
;T5.C: 65: RC2=0;
	bcf	(58/8),(58)&7
	line	67
;T5.C: 67: adisp4();
	fcall	_adisp4
	line	68
;T5.C: 68: delay(1);
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

psect	text25,local,class=CODE,delta=2
global __ptext25
__ptext25:
	line	70
	signat	_display,88
	global	_adisp3

; *************** function _adisp3 *****************
; Defined at:
;		line 85 in file "D:\ABHISHEK JOSHI\PIC\T5\T5.C"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, fsr0l, fsr0h, status,2, status,0
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
;		_display
; This function uses a non-reentrant model
; 
psect	text25
	file	"D:\ABHISHEK JOSHI\PIC\T5\T5.C"
	line	85
	global	__size_of_adisp3
	__size_of_adisp3	equ	__end_of_adisp3-_adisp3
;T5.C: 84: void adisp3()
;T5.C: 85: {
	
_adisp3:	
	opt stack 6
; Regs used in _adisp3: [wreg-fsr0h+status,2+status,0]
	line	87
	
l30000380:	
;T5.C: 87: PORTB=disp[ds3-'0'];
	movf	(_ds3),w
	addlw	0D0h
	addlw	(_disp)&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	
l12:	
	return
	opt stack 0
GLOBAL	__end_of_adisp3
	__end_of_adisp3:
; =============== function _adisp3 ends ============

psect	text26,local,class=CODE,delta=2
global __ptext26
__ptext26:
	line	88
	signat	_adisp3,88
	global	_adisp4

; *************** function _adisp4 *****************
; Defined at:
;		line 91 in file "D:\ABHISHEK JOSHI\PIC\T5\T5.C"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, fsr0l, fsr0h, status,2, status,0
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
;		_display
; This function uses a non-reentrant model
; 
psect	text26
	file	"D:\ABHISHEK JOSHI\PIC\T5\T5.C"
	line	91
	global	__size_of_adisp4
	__size_of_adisp4	equ	__end_of_adisp4-_adisp4
;T5.C: 90: void adisp4()
;T5.C: 91: {
	
_adisp4:	
	opt stack 6
; Regs used in _adisp4: [wreg-fsr0h+status,2+status,0]
	line	93
	
l30000381:	
;T5.C: 93: PORTB=disp[ds4-'0'];
	movf	(_ds4),w
	addlw	0D0h
	addlw	(_disp)&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	
l13:	
	return
	opt stack 0
GLOBAL	__end_of_adisp4
	__end_of_adisp4:
; =============== function _adisp4 ends ============

psect	text27,local,class=CODE,delta=2
global __ptext27
__ptext27:
	line	94
	signat	_adisp4,88
	global	_adisp1

; *************** function _adisp1 *****************
; Defined at:
;		line 73 in file "D:\ABHISHEK JOSHI\PIC\T5\T5.C"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, fsr0l, fsr0h, status,2, status,0
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
;		_display
; This function uses a non-reentrant model
; 
psect	text27
	file	"D:\ABHISHEK JOSHI\PIC\T5\T5.C"
	line	73
	global	__size_of_adisp1
	__size_of_adisp1	equ	__end_of_adisp1-_adisp1
;T5.C: 72: void adisp1()
;T5.C: 73: {
	
_adisp1:	
	opt stack 6
; Regs used in _adisp1: [wreg-fsr0h+status,2+status,0]
	line	75
	
l30000378:	
;T5.C: 75: PORTB=disp[ds1-'0'];
	movf	(_ds1),w
	addlw	0D0h
	addlw	(_disp)&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	
l10:	
	return
	opt stack 0
GLOBAL	__end_of_adisp1
	__end_of_adisp1:
; =============== function _adisp1 ends ============

psect	text28,local,class=CODE,delta=2
global __ptext28
__ptext28:
	line	76
	signat	_adisp1,88
	global	_delay

; *************** function _delay *****************
; Defined at:
;		line 97 in file "D:\ABHISHEK JOSHI\PIC\T5\T5.C"
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
psect	text28
	file	"D:\ABHISHEK JOSHI\PIC\T5\T5.C"
	line	97
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
;T5.C: 96: void delay(unsigned int del)
;T5.C: 97: {
	
_delay:	
	opt stack 6
; Regs used in _delay: [wreg]
	line	99
	
l30000382:	
;T5.C: 98: int d1,d2;
;T5.C: 99: for(d1=0;d1<=del;d1++)
	movlw	low(0)
	movwf	(delay@d1)
	movlw	high(0)
	movwf	((delay@d1))+1
	goto	l18
	
l30000383:	
	line	100
;T5.C: 100: for(d2=0;d2<=120;d2++);
	movlw	low(0)
	movwf	(delay@d2)
	movlw	high(0)
	movwf	((delay@d2))+1
	
l30000385:	
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
	goto	l30000385
u20:
	
l30000386:	
	line	99
	movlw	low(01h)
	addwf	(delay@d1),f
	skipnc
	incf	(delay@d1+1),f
	movlw	high(01h)
	addwf	(delay@d1+1),f
	
l18:	
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
	goto	l30000383
u30:
	
l14:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
; =============== function _delay ends ============

psect	text29,local,class=CODE,delta=2
global __ptext29
__ptext29:
	line	101
	signat	_delay,4216
	global	_adisp2

; *************** function _adisp2 *****************
; Defined at:
;		line 79 in file "D:\ABHISHEK JOSHI\PIC\T5\T5.C"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, fsr0l, fsr0h, status,2, status,0
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
;		_display
; This function uses a non-reentrant model
; 
psect	text29
	file	"D:\ABHISHEK JOSHI\PIC\T5\T5.C"
	line	79
	global	__size_of_adisp2
	__size_of_adisp2	equ	__end_of_adisp2-_adisp2
;T5.C: 78: void adisp2()
;T5.C: 79: {
	
_adisp2:	
	opt stack 6
; Regs used in _adisp2: [wreg-fsr0h+status,2+status,0]
	line	81
	
l30000379:	
;T5.C: 81: PORTB=disp[ds2-'0'];
	movf	(_ds2),w
	addlw	0D0h
	addlw	(_disp)&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	
l11:	
	return
	opt stack 0
GLOBAL	__end_of_adisp2
	__end_of_adisp2:
; =============== function _adisp2 ends ============

psect	text30,local,class=CODE,delta=2
global __ptext30
__ptext30:
	line	82
	signat	_adisp2,88
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	end
