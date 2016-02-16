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
	FNCALL	_main,_init
	FNCALL	_main,_key_release
	FNCALL	_init,_init_keypad
	FNCALL	_init,_init_timer
	FNROOT	_main
	FNCALL	_isr_t0,i1_init_timer
	FNCALL	_isr_t0,_buzzer
	FNCALL	_isr_t0,_scanner
	FNCALL	_scanner,_adisp1
	FNCALL	_scanner,_k1
	FNCALL	_scanner,_disp_blank
	FNCALL	_scanner,_adisp2
	FNCALL	_scanner,_adisp3
	FNCALL	_scanner,_adisp4
	FNCALL	intlevel1,_isr_t0
	global	intlevel1
	FNROOT	intlevel1
	global	_ascii_tab
	global	_disp
	global	_ds1
	global	_ds2
	global	_ds3
	global	_ds4
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"D:\ABHISHEK JOSHI\PIC\T9\T9.C"
	line	15

;initializer for _ascii_tab
	retlw	030h
	retlw	031h
	retlw	032h
	retlw	033h
	retlw	034h
	retlw	035h
	retlw	036h
	retlw	037h
	retlw	038h
	retlw	039h
	retlw	041h
	retlw	042h
	retlw	043h
	retlw	044h
	retlw	045h
	retlw	046h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	line	14

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
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0EEh
	retlw	03Eh
	retlw	09Ch
	retlw	07Ah
	retlw	09Eh
	retlw	08Eh
	retlw	0
	retlw	0
	line	16

;initializer for _ds1
	retlw	030h

;initializer for _ds2
	retlw	030h

;initializer for _ds3
psect	idataCOMMON,class=CODE,space=0,delta=2
global __pidataCOMMON
__pidataCOMMON:
	retlw	030h

;initializer for _ds4
	retlw	030h
	global	_a
	global	_key_code
	global	_key_ready
	global	_nkp
	global	_scan_no
	global	_start_buzzer
	global	_tb
	global	_c
	global	_k
	global	_krcount
psect	nvBANK0,class=BANK0,space=1
global __pnvBANK0
__pnvBANK0:
_krcount:
       ds      2

	global	_dcount
psect	nvCOMMON,class=COMMON,space=1
global __pnvCOMMON
__pnvCOMMON:
_dcount:
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
	file	"T9.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_c:
       ds      2

_k:
       ds      2

psect	dataCOMMON,class=COMMON,space=1
global __pdataCOMMON
__pdataCOMMON:
	file	"D:\ABHISHEK JOSHI\PIC\T9\T9.C"
	line	16
_ds3:
       ds      1

psect	dataCOMMON
	file	"D:\ABHISHEK JOSHI\PIC\T9\T9.C"
	line	16
_ds4:
       ds      1

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_a:
       ds      2

_key_code:
       ds      2

_key_ready:
       ds      2

_nkp:
       ds      2

_scan_no:
       ds      2

_start_buzzer:
       ds      2

_tb:
       ds      2

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"D:\ABHISHEK JOSHI\PIC\T9\T9.C"
	line	15
_ascii_tab:
       ds      25

psect	dataBANK0
	file	"D:\ABHISHEK JOSHI\PIC\T9\T9.C"
	line	14
_disp:
       ds      25

psect	dataBANK0
	file	"D:\ABHISHEK JOSHI\PIC\T9\T9.C"
	line	16
_ds1:
       ds      1

psect	dataBANK0
	file	"D:\ABHISHEK JOSHI\PIC\T9\T9.C"
	line	16
_ds2:
       ds      1

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
	clrf	((__pbssBANK0)+5)&07Fh
	clrf	((__pbssBANK0)+6)&07Fh
	clrf	((__pbssBANK0)+7)&07Fh
	clrf	((__pbssBANK0)+8)&07Fh
	clrf	((__pbssBANK0)+9)&07Fh
	clrf	((__pbssBANK0)+10)&07Fh
	clrf	((__pbssBANK0)+11)&07Fh
	clrf	((__pbssBANK0)+12)&07Fh
	clrf	((__pbssBANK0)+13)&07Fh
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
	global __pidataCOMMON
psect cinit,class=CODE,delta=2
	fcall	__pidataCOMMON+0		;fetch initializer
	movwf	__pdataCOMMON+0&07fh		
	fcall	__pidataCOMMON+1		;fetch initializer
	movwf	__pdataCOMMON+1&07fh		
; Initialize objects allocated to BANK0
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK0
	bcf	status, 7	;select IRP bank0
	movlw low(__pdataBANK0+52)
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
	global	??_adisp2
??_adisp2: ;@ 0x0
	global	?_adisp3
?_adisp3: ;@ 0x0
	global	??_adisp3
??_adisp3: ;@ 0x0
	global	?_adisp2
?_adisp2: ;@ 0x0
	global	??_buzzer
??_buzzer: ;@ 0x0
	global	?i1_init_timer
?i1_init_timer: ;@ 0x0
	global	??i1_init_timer
??i1_init_timer: ;@ 0x0
	global	?_adisp4
?_adisp4: ;@ 0x0
	global	??_k1
??_k1: ;@ 0x0
	global	?_disp_blank
?_disp_blank: ;@ 0x0
	global	??_disp_blank
??_disp_blank: ;@ 0x0
	global	?_k1
?_k1: ;@ 0x0
	global	??_adisp4
??_adisp4: ;@ 0x0
	global	?_adisp1
?_adisp1: ;@ 0x0
	global	??_adisp1
??_adisp1: ;@ 0x0
	global	?_init
?_init: ;@ 0x0
	global	??_init
??_init: ;@ 0x0
	global	?_init_timer
?_init_timer: ;@ 0x0
	global	??_key_release
??_key_release: ;@ 0x0
	global	?_main
?_main: ;@ 0x0
	global	??_main
??_main: ;@ 0x0
	global	?_key_release
?_key_release: ;@ 0x0
	global	??_init_timer
??_init_timer: ;@ 0x0
	global	??_scanner
??_scanner: ;@ 0x0
	global	?_buzzer
?_buzzer: ;@ 0x0
	global	?_init_keypad
?_init_keypad: ;@ 0x0
	global	??_init_keypad
??_init_keypad: ;@ 0x0
	ds	2
	global	?_scanner
?_scanner: ;@ 0x2
	global	?_isr_t0
?_isr_t0: ;@ 0x2
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_isr_t0
??_isr_t0: ;@ 0x0
	ds	4
;Data sizes: Strings 0, constant 0, data 54, bss 18, persistent 4 stack 0
;Auto spaces:   Size  Autos    Used
; COMMON          14      2      10
; BANK0           80      4      72
; BANK1           80      0       0
; BANK3           96      0       0
; BANK2           96      0       0


;Pointer list with targets:



;Main: autosize = 0, tempsize = 0, incstack = 0, save=0


;Call graph:                      Base Space Used Autos Args Refs Density
;_main                                                0    0    0   0.00
;               _init
;        _key_release
;  _key_release                                       0    0    0   0.00
;  _init                                              0    0    0   0.00
;        _init_keypad
;         _init_timer
;    _init_timer                                      0    0    0   0.00
;    _init_keypad                                     0    0    0   0.00
; Estimated maximum call depth 2
;_isr_t0                                              4    0    0   0.00
;                                    0 BANK0    4
;       i1_init_timer
;             _buzzer
;            _scanner
;  _scanner                                           2    0    0   0.00
;                                    0 COMMO    2
;             _adisp1
;                 _k1
;         _disp_blank
;             _adisp2
;             _adisp3
;             _adisp4
;  _buzzer                                            0    0    0   0.00
;  i1_init_timer                                      0    0    0   0.00
;    _adisp2                                          0    0    0   0.00
;    _adisp3                                          0    0    0   0.00
;    _adisp4                                          0    0    0   0.00
;    _adisp1                                          0    0    0   0.00
;    _k1                                              0    0    0   0.00
;    _disp_blank                                      0    0    0   0.00
; Estimated maximum call depth 2
; Address spaces:

;Name               Size   Autos  Total    Cost      Usage
;BITCOMMON            E      0       0       0        0.0%
;CODE                 0      0       0       0        0.0%
;NULL                 0      0       0       0        0.0%
;COMMON               E      2       A       1       71.4%
;SFR0                 0      0       0       1        0.0%
;BITSFR0              0      0       0       1        0.0%
;BITSFR1              0      0       0       2        0.0%
;SFR1                 0      0       0       2        0.0%
;ABS                  0      0      52       2        0.0%
;STACK                0      0       0       3        0.0%
;BITBANK0            50      0       0       4        0.0%
;SFR3                 0      0       0       4        0.0%
;BITSFR3              0      0       0       4        0.0%
;BANK0               50      4      48       5       90.0%
;BITSFR2              0      0       0       5        0.0%
;SFR2                 0      0       0       5        0.0%
;BITBANK1            50      0       0       6        0.0%
;BANK1               50      0       0       7        0.0%
;BITBANK3            60      0       0       8        0.0%
;BANK3               60      0       0       9        0.0%
;BITBANK2            60      0       0      10        0.0%
;BANK2               60      0       0      11        0.0%
;DATA                 0      0      52      12        0.0%
;EEDATA             100      0       0    1000        0.0%

	global	_main
psect	maintext,local,class=CODE,delta=2
global __pmaintext
__pmaintext:

; *************** function _main *****************
; Defined at:
;		line 46 in file "D:\ABHISHEK JOSHI\PIC\T9\T9.C"
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
;		_init
;		_key_release
; This function is called by:
;		Startup code after reset
; This function uses a non-reentrant model
; 
psect	maintext
	file	"D:\ABHISHEK JOSHI\PIC\T9\T9.C"
	line	46
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
;T9.C: 45: void main()
;T9.C: 46: {
	
_main:	
	opt stack 5
; Regs used in _main: [allreg]
	line	47
	
l30000554:	
;T9.C: 47: TRISB=0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	
l30000555:	
	line	48
;T9.C: 48: TRISA=0x3C;
	movlw	(03Ch)
	movwf	(133)^080h	;volatile
	
l30000556:	
	line	49
;T9.C: 49: TRISC=0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(135)^080h	;volatile
	line	50
;T9.C: 50: ADCON1=0x06;
	movlw	(06h)
	movwf	(159)^080h	;volatile
	
l30000557:	
	line	52
;T9.C: 52: init();
	fcall	_init
	
l30000558:	
	line	53
;T9.C: 53: GIE=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(95/8),(95)&7
	
l30000559:	
	line	54
;T9.C: 54: PEIE=1;
	bsf	(94/8),(94)&7
	
l30000560:	
	line	58
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_key_ready),w
	iorwf	(_key_ready+1),w
	skipz
	goto	u111
	goto	u110
u111:
	goto	l30000560
u110:
	
l30000561:	
	line	59
;T9.C: 59: a=key_code;
	movf	(_key_code+1),w
	clrf	(_a+1)
	addwf	(_a+1)
	movf	(_key_code),w
	clrf	(_a)
	addwf	(_a)

	
l30000562:	
	line	60
;T9.C: 60: ds1=ascii_tab[a];
	movf	(_a),w
	addlw	(_ascii_tab)&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(_ds1)
	
l30000563:	
	line	61
;T9.C: 61: key_release();
	fcall	_key_release
	goto	l30000560
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
; =============== function _main ends ============

psect	maintext
	line	63
	signat	_main,88
	global	_key_release
psect	text100,local,class=CODE,delta=2
global __ptext100
__ptext100:

; *************** function _key_release *****************
; Defined at:
;		line 353 in file "D:\ABHISHEK JOSHI\PIC\T9\T9.C"
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
psect	text100
	file	"D:\ABHISHEK JOSHI\PIC\T9\T9.C"
	line	353
	global	__size_of_key_release
	__size_of_key_release	equ	__end_of_key_release-_key_release
;T9.C: 352: void key_release()
;T9.C: 353: {
	
_key_release:	
	opt stack 4
; Regs used in _key_release: [wreg]
	
l30000564:	
	
l30000565:	
	line	354
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_nkp),w
	iorwf	(_nkp+1),w
	skipz
	goto	u121
	goto	u120
u121:
	goto	l30000565
u120:
	
l30000566:	
	line	355
;T9.C: 355: key_ready=0;
	movlw	low(0)
	movwf	(_key_ready)
	movlw	high(0)
	movwf	((_key_ready))+1
	line	356
;T9.C: 356: nkp=0;
	movlw	low(0)
	movwf	(_nkp)
	movlw	high(0)
	movwf	((_nkp))+1
	
l63:	
	return
	opt stack 0
GLOBAL	__end_of_key_release
	__end_of_key_release:
; =============== function _key_release ends ============

psect	text101,local,class=CODE,delta=2
global __ptext101
__ptext101:
	line	357
	signat	_key_release,88
	global	_init

; *************** function _init *****************
; Defined at:
;		line 66 in file "D:\ABHISHEK JOSHI\PIC\T9\T9.C"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         0       0       0       0       0
;      Temp:     0
;      Total:    0
; This function calls:
;		_init_keypad
;		_init_timer
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text101
	file	"D:\ABHISHEK JOSHI\PIC\T9\T9.C"
	line	66
	global	__size_of_init
	__size_of_init	equ	__end_of_init-_init
;T9.C: 65: void init()
;T9.C: 66: {
	
_init:	
	opt stack 4
; Regs used in _init: [wreg+status,2+status,0+pclath+cstack]
	line	68
	
l30000567:	
;T9.C: 68: init_keypad();
	fcall	_init_keypad
	line	69
;T9.C: 69: init_timer();
	fcall	_init_timer
	
l10:	
	return
	opt stack 0
GLOBAL	__end_of_init
	__end_of_init:
; =============== function _init ends ============

psect	text102,local,class=CODE,delta=2
global __ptext102
__ptext102:
	line	70
	signat	_init,88
	global	_init_timer

; *************** function _init_timer *****************
; Defined at:
;		line 73 in file "D:\ABHISHEK JOSHI\PIC\T9\T9.C"
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
;		_init
; This function uses a non-reentrant model
; 
psect	text102
	file	"D:\ABHISHEK JOSHI\PIC\T9\T9.C"
	line	73
	global	__size_of_init_timer
	__size_of_init_timer	equ	__end_of_init_timer-_init_timer
;T9.C: 72: void init_timer()
;T9.C: 73: {
	
_init_timer:	
	opt stack 3
; Regs used in _init_timer: [wreg]
	line	74
	
l30000568:	
;T9.C: 74: TMR1H=0xFC;
	movlw	(0FCh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(15)	;volatile
	line	75
;T9.C: 75: TMR1L=0x18;
	movlw	(018h)
	movwf	(14)	;volatile
	line	76
;T9.C: 76: T1CON=0x01;
	movlw	(01h)
	movwf	(16)	;volatile
	
l30000569:	
	line	77
;T9.C: 77: TMR1IE=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1120/8)^080h,(1120)&7
	
l30000570:	
	line	78
;T9.C: 78: TMR1IF=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(96/8),(96)&7
	
l11:	
	return
	opt stack 0
GLOBAL	__end_of_init_timer
	__end_of_init_timer:
; =============== function _init_timer ends ============

psect	text103,local,class=CODE,delta=2
global __ptext103
__ptext103:
	line	79
	signat	_init_timer,88
	global	_init_keypad

; *************** function _init_keypad *****************
; Defined at:
;		line 90 in file "D:\ABHISHEK JOSHI\PIC\T9\T9.C"
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
;		_init
; This function uses a non-reentrant model
; 
psect	text103
	file	"D:\ABHISHEK JOSHI\PIC\T9\T9.C"
	line	90
	global	__size_of_init_keypad
	__size_of_init_keypad	equ	__end_of_init_keypad-_init_keypad
;T9.C: 89: void init_keypad()
;T9.C: 90: {
	
_init_keypad:	
	opt stack 3
; Regs used in _init_keypad: [wreg]
	line	91
	
l30000571:	
;T9.C: 91: RA2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(42/8),(42)&7
	line	92
;T9.C: 92: RA3=1;
	bsf	(43/8),(43)&7
	line	93
;T9.C: 93: RA4=1;
	bsf	(44/8),(44)&7
	line	94
;T9.C: 94: RA5=1;
	bsf	(45/8),(45)&7
	
l30000572:	
	line	95
;T9.C: 95: scan_no=0;
	movlw	low(0)
	movwf	(_scan_no)
	movlw	high(0)
	movwf	((_scan_no))+1
	line	96
;T9.C: 96: dcount=33;
	movlw	low(021h)
	movwf	(_dcount)
	movlw	high(021h)
	movwf	((_dcount))+1
	line	97
;T9.C: 97: krcount=32;
	movlw	low(020h)
	movwf	(_krcount)
	movlw	high(020h)
	movwf	((_krcount))+1
	line	98
;T9.C: 98: key_ready=0;
	movlw	low(0)
	movwf	(_key_ready)
	movlw	high(0)
	movwf	((_key_ready))+1
	line	99
;T9.C: 99: nkp=0;
	movlw	low(0)
	movwf	(_nkp)
	movlw	high(0)
	movwf	((_nkp))+1
	line	100
;T9.C: 100: start_buzzer=0;
	movlw	low(0)
	movwf	(_start_buzzer)
	movlw	high(0)
	movwf	((_start_buzzer))+1
	
l13:	
	return
	opt stack 0
GLOBAL	__end_of_init_keypad
	__end_of_init_keypad:
; =============== function _init_keypad ends ============

psect	text104,local,class=CODE,delta=2
global __ptext104
__ptext104:
	line	101
	signat	_init_keypad,88
	global	_isr_t0

; *************** function _isr_t0 *****************
; Defined at:
;		line 39 in file "D:\ABHISHEK JOSHI\PIC\T9\T9.C"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         0       4       0       0       0
;      Temp:     4
;      Total:    4
; This function calls:
;		i1_init_timer
;		_buzzer
;		_scanner
; This function is called by:
;		Interrupt level 1
; This function uses a non-reentrant model
; 
psect	text104
	file	"D:\ABHISHEK JOSHI\PIC\T9\T9.C"
	line	39
	global	__size_of_isr_t0
	__size_of_isr_t0	equ	__end_of_isr_t0-_isr_t0
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
	
_isr_t0:	
	opt stack 6
; Regs used in _isr_t0: [wreg-fsr0h+status,2+status,0+pclath+cstack]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+1
	movwf	saved_w
	movf	status,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_isr_t0+0)
	movf	fsr0,w
	movwf	(??_isr_t0+1)
	movf	pclath,w
	movwf	(??_isr_t0+2)
	movf	btemp+0,w
	movwf	(??_isr_t0+3)
	ljmp	_isr_t0
psect	text104
	line	40
	
i1l30000596:	
;T9.C: 40: init_timer();
	fcall	i1_init_timer
	line	41
;T9.C: 41: buzzer();
	fcall	_buzzer
	
i1l30000597:	
	line	42
;T9.C: 42: scanner();
	fcall	_scanner
	
i1l2:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_isr_t0+3),w
	movwf	btemp+0
	movf	(??_isr_t0+2),w
	movwf	pclath
	movf	(??_isr_t0+1),w
	movwf	fsr0
	movf	(??_isr_t0+0),w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_isr_t0
	__end_of_isr_t0:
; =============== function _isr_t0 ends ============

psect	text105,local,class=CODE,delta=2
global __ptext105
__ptext105:
	line	43
	signat	_isr_t0,88
	global	_scanner

; *************** function _scanner *****************
; Defined at:
;		line 104 in file "D:\ABHISHEK JOSHI\PIC\T9\T9.C"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         2       0       0       0       0
;      Temp:     2
;      Total:    2
; This function calls:
;		_adisp1
;		_k1
;		_disp_blank
;		_adisp2
;		_adisp3
;		_adisp4
; This function is called by:
;		_isr_t0
; This function uses a non-reentrant model
; 
psect	text105
	file	"D:\ABHISHEK JOSHI\PIC\T9\T9.C"
	line	104
	global	__size_of_scanner
	__size_of_scanner	equ	__end_of_scanner-_scanner
;T9.C: 103: void scanner()
;T9.C: 104: {
	
_scanner:	
	opt stack 5
; Regs used in _scanner: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	
i1l30000495:	
	goto	i1l30000553
	
i1l17:	
	line	108
;T9.C: 108: RA1=0;
	bcf	(41/8),(41)&7
	line	109
;T9.C: 109: RC0=1;
	bsf	(56/8),(56)&7
	line	110
;T9.C: 110: RC1=1;
	bsf	(57/8),(57)&7
	line	111
;T9.C: 111: RC2=1;
	bsf	(58/8),(58)&7
	
i1l30000496:	
	line	112
;T9.C: 112: adisp1();
	fcall	_adisp1
	
i1l30000497:	
	line	113
;T9.C: 113: c=RA2;
	clrc
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(42/8),(42)&7
	setc
	movlw	0
	skipnc
	movlw	1

	movwf	(??_scanner+0+0)
	clrf	(??_scanner+0+0+1)
	movf	0+(??_scanner+0+0),w
	movwf	(_c)
	movf	1+(??_scanner+0+0),w
	movwf	(_c+1)
	
i1l30000498:	
	line	114
;T9.C: 114: k1();
	fcall	_k1
	
i1l30000499:	
	line	115
;T9.C: 115: scan_no=1;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_scan_no)
	movlw	high(01h)
	movwf	((_scan_no))+1
	goto	i1l14
	
i1l30000500:	
	line	119
;T9.C: 119: c=RA3;
	clrc
	btfsc	(43/8),(43)&7
	setc
	movlw	0
	skipnc
	movlw	1

	movwf	(??_scanner+0+0)
	clrf	(??_scanner+0+0+1)
	movf	0+(??_scanner+0+0),w
	movwf	(_c)
	movf	1+(??_scanner+0+0),w
	movwf	(_c+1)
	
i1l30000501:	
	line	120
;T9.C: 120: k1();
	fcall	_k1
	
i1l30000502:	
	line	121
;T9.C: 121: scan_no=2;
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_scan_no)
	movlw	high(02h)
	movwf	((_scan_no))+1
	goto	i1l14
	
i1l30000503:	
	line	125
;T9.C: 125: c=RA4;
	clrc
	btfsc	(44/8),(44)&7
	setc
	movlw	0
	skipnc
	movlw	1

	movwf	(??_scanner+0+0)
	clrf	(??_scanner+0+0+1)
	movf	0+(??_scanner+0+0),w
	movwf	(_c)
	movf	1+(??_scanner+0+0),w
	movwf	(_c+1)
	
i1l30000504:	
	line	126
;T9.C: 126: k1();
	fcall	_k1
	
i1l30000505:	
	line	127
;T9.C: 127: scan_no=3;
	movlw	low(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_scan_no)
	movlw	high(03h)
	movwf	((_scan_no))+1
	goto	i1l14
	
i1l30000506:	
	line	131
;T9.C: 131: disp_blank();
	fcall	_disp_blank
	
i1l30000507:	
	line	132
;T9.C: 132: c=RA5;
	clrc
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(45/8),(45)&7
	setc
	movlw	0
	skipnc
	movlw	1

	movwf	(??_scanner+0+0)
	clrf	(??_scanner+0+0+1)
	movf	0+(??_scanner+0+0),w
	movwf	(_c)
	movf	1+(??_scanner+0+0),w
	movwf	(_c+1)
	
i1l30000508:	
	line	133
;T9.C: 133: k1();
	fcall	_k1
	
i1l30000509:	
	line	134
;T9.C: 134: scan_no=4;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_scan_no)
	movlw	high(04h)
	movwf	((_scan_no))+1
	goto	i1l14
	
i1l21:	
	line	138
;T9.C: 138: RA1=1;
	bsf	(41/8),(41)&7
	line	139
;T9.C: 139: RC0=0;
	bcf	(56/8),(56)&7
	line	140
;T9.C: 140: RC1=1;
	bsf	(57/8),(57)&7
	line	141
;T9.C: 141: RC2=1;
	bsf	(58/8),(58)&7
	
i1l30000510:	
	line	142
;T9.C: 142: adisp2();
	fcall	_adisp2
	
i1l30000511:	
	line	143
;T9.C: 143: c=RA2;
	clrc
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(42/8),(42)&7
	setc
	movlw	0
	skipnc
	movlw	1

	movwf	(??_scanner+0+0)
	clrf	(??_scanner+0+0+1)
	movf	0+(??_scanner+0+0),w
	movwf	(_c)
	movf	1+(??_scanner+0+0),w
	movwf	(_c+1)
	
i1l30000512:	
	line	144
;T9.C: 144: k1();
	fcall	_k1
	
i1l30000513:	
	line	145
;T9.C: 145: scan_no=5;
	movlw	low(05h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_scan_no)
	movlw	high(05h)
	movwf	((_scan_no))+1
	goto	i1l14
	
i1l30000514:	
	line	149
;T9.C: 149: c=RA3;
	clrc
	btfsc	(43/8),(43)&7
	setc
	movlw	0
	skipnc
	movlw	1

	movwf	(??_scanner+0+0)
	clrf	(??_scanner+0+0+1)
	movf	0+(??_scanner+0+0),w
	movwf	(_c)
	movf	1+(??_scanner+0+0),w
	movwf	(_c+1)
	
i1l30000515:	
	line	150
;T9.C: 150: k1();
	fcall	_k1
	
i1l30000516:	
	line	151
;T9.C: 151: scan_no=6;
	movlw	low(06h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_scan_no)
	movlw	high(06h)
	movwf	((_scan_no))+1
	goto	i1l14
	
i1l30000517:	
	line	155
;T9.C: 155: c=RA4;
	clrc
	btfsc	(44/8),(44)&7
	setc
	movlw	0
	skipnc
	movlw	1

	movwf	(??_scanner+0+0)
	clrf	(??_scanner+0+0+1)
	movf	0+(??_scanner+0+0),w
	movwf	(_c)
	movf	1+(??_scanner+0+0),w
	movwf	(_c+1)
	
i1l30000518:	
	line	156
;T9.C: 156: k1();
	fcall	_k1
	
i1l30000519:	
	line	157
;T9.C: 157: scan_no=7;
	movlw	low(07h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_scan_no)
	movlw	high(07h)
	movwf	((_scan_no))+1
	goto	i1l14
	
i1l30000520:	
	line	161
;T9.C: 161: disp_blank();
	fcall	_disp_blank
	
i1l30000521:	
	line	162
;T9.C: 162: c=RA5;
	clrc
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(45/8),(45)&7
	setc
	movlw	0
	skipnc
	movlw	1

	movwf	(??_scanner+0+0)
	clrf	(??_scanner+0+0+1)
	movf	0+(??_scanner+0+0),w
	movwf	(_c)
	movf	1+(??_scanner+0+0),w
	movwf	(_c+1)
	
i1l30000522:	
	line	163
;T9.C: 163: k1();
	fcall	_k1
	
i1l30000523:	
	line	164
;T9.C: 164: scan_no=8;
	movlw	low(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_scan_no)
	movlw	high(08h)
	movwf	((_scan_no))+1
	goto	i1l14
	
i1l25:	
	line	168
;T9.C: 168: RA1=1;
	bsf	(41/8),(41)&7
	line	169
;T9.C: 169: RC0=1;
	bsf	(56/8),(56)&7
	line	170
;T9.C: 170: RC1=0;
	bcf	(57/8),(57)&7
	line	171
;T9.C: 171: RC2=1;
	bsf	(58/8),(58)&7
	
i1l30000524:	
	line	172
;T9.C: 172: adisp3();
	fcall	_adisp3
	
i1l30000525:	
	line	173
;T9.C: 173: c=RA2;
	clrc
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(42/8),(42)&7
	setc
	movlw	0
	skipnc
	movlw	1

	movwf	(??_scanner+0+0)
	clrf	(??_scanner+0+0+1)
	movf	0+(??_scanner+0+0),w
	movwf	(_c)
	movf	1+(??_scanner+0+0),w
	movwf	(_c+1)
	
i1l30000526:	
	line	174
;T9.C: 174: k1();
	fcall	_k1
	
i1l30000527:	
	line	175
;T9.C: 175: scan_no=9;
	movlw	low(09h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_scan_no)
	movlw	high(09h)
	movwf	((_scan_no))+1
	goto	i1l14
	
i1l30000528:	
	line	179
;T9.C: 179: c=RA3;
	clrc
	btfsc	(43/8),(43)&7
	setc
	movlw	0
	skipnc
	movlw	1

	movwf	(??_scanner+0+0)
	clrf	(??_scanner+0+0+1)
	movf	0+(??_scanner+0+0),w
	movwf	(_c)
	movf	1+(??_scanner+0+0),w
	movwf	(_c+1)
	
i1l30000529:	
	line	180
;T9.C: 180: k1();
	fcall	_k1
	
i1l30000530:	
	line	181
;T9.C: 181: scan_no=10;
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_scan_no)
	movlw	high(0Ah)
	movwf	((_scan_no))+1
	goto	i1l14
	
i1l30000531:	
	line	185
;T9.C: 185: c=RA4;
	clrc
	btfsc	(44/8),(44)&7
	setc
	movlw	0
	skipnc
	movlw	1

	movwf	(??_scanner+0+0)
	clrf	(??_scanner+0+0+1)
	movf	0+(??_scanner+0+0),w
	movwf	(_c)
	movf	1+(??_scanner+0+0),w
	movwf	(_c+1)
	
i1l30000532:	
	line	186
;T9.C: 186: k1();
	fcall	_k1
	
i1l30000533:	
	line	187
;T9.C: 187: scan_no=11;
	movlw	low(0Bh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_scan_no)
	movlw	high(0Bh)
	movwf	((_scan_no))+1
	goto	i1l14
	
i1l30000534:	
	line	191
;T9.C: 191: disp_blank();
	fcall	_disp_blank
	
i1l30000535:	
	line	192
;T9.C: 192: c=RA5;
	clrc
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(45/8),(45)&7
	setc
	movlw	0
	skipnc
	movlw	1

	movwf	(??_scanner+0+0)
	clrf	(??_scanner+0+0+1)
	movf	0+(??_scanner+0+0),w
	movwf	(_c)
	movf	1+(??_scanner+0+0),w
	movwf	(_c+1)
	
i1l30000536:	
	line	193
;T9.C: 193: k1();
	fcall	_k1
	
i1l30000537:	
	line	194
;T9.C: 194: scan_no=12;
	movlw	low(0Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_scan_no)
	movlw	high(0Ch)
	movwf	((_scan_no))+1
	goto	i1l14
	
i1l29:	
	line	198
;T9.C: 198: RA1=1;
	bsf	(41/8),(41)&7
	line	199
;T9.C: 199: RC0=1;
	bsf	(56/8),(56)&7
	line	200
;T9.C: 200: RC1=1;
	bsf	(57/8),(57)&7
	line	201
;T9.C: 201: RC2=0;
	bcf	(58/8),(58)&7
	
i1l30000538:	
	line	202
;T9.C: 202: adisp4();
	fcall	_adisp4
	
i1l30000539:	
	line	203
;T9.C: 203: c=RA2;
	clrc
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(42/8),(42)&7
	setc
	movlw	0
	skipnc
	movlw	1

	movwf	(??_scanner+0+0)
	clrf	(??_scanner+0+0+1)
	movf	0+(??_scanner+0+0),w
	movwf	(_c)
	movf	1+(??_scanner+0+0),w
	movwf	(_c+1)
	
i1l30000540:	
	line	204
;T9.C: 204: k1();
	fcall	_k1
	
i1l30000541:	
	line	205
;T9.C: 205: scan_no=13;
	movlw	low(0Dh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_scan_no)
	movlw	high(0Dh)
	movwf	((_scan_no))+1
	goto	i1l14
	
i1l30000542:	
	line	209
;T9.C: 209: c=RA3;
	clrc
	btfsc	(43/8),(43)&7
	setc
	movlw	0
	skipnc
	movlw	1

	movwf	(??_scanner+0+0)
	clrf	(??_scanner+0+0+1)
	movf	0+(??_scanner+0+0),w
	movwf	(_c)
	movf	1+(??_scanner+0+0),w
	movwf	(_c+1)
	
i1l30000543:	
	line	210
;T9.C: 210: k1();
	fcall	_k1
	
i1l30000544:	
	line	211
;T9.C: 211: scan_no=14;
	movlw	low(0Eh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_scan_no)
	movlw	high(0Eh)
	movwf	((_scan_no))+1
	goto	i1l14
	
i1l30000545:	
	line	215
;T9.C: 215: c=RA4;
	clrc
	btfsc	(44/8),(44)&7
	setc
	movlw	0
	skipnc
	movlw	1

	movwf	(??_scanner+0+0)
	clrf	(??_scanner+0+0+1)
	movf	0+(??_scanner+0+0),w
	movwf	(_c)
	movf	1+(??_scanner+0+0),w
	movwf	(_c+1)
	
i1l30000546:	
	line	216
;T9.C: 216: k1();
	fcall	_k1
	
i1l30000547:	
	line	217
;T9.C: 217: scan_no=15;
	movlw	low(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_scan_no)
	movlw	high(0Fh)
	movwf	((_scan_no))+1
	goto	i1l14
	
i1l30000548:	
	line	221
;T9.C: 221: c=RA5;
	clrc
	btfsc	(45/8),(45)&7
	setc
	movlw	0
	skipnc
	movlw	1

	movwf	(??_scanner+0+0)
	clrf	(??_scanner+0+0+1)
	movf	0+(??_scanner+0+0),w
	movwf	(_c)
	movf	1+(??_scanner+0+0),w
	movwf	(_c+1)
	
i1l30000549:	
	line	222
;T9.C: 222: k1();
	fcall	_k1
	
i1l30000550:	
	line	223
;T9.C: 223: disp_blank();
	fcall	_disp_blank
	
i1l30000551:	
	line	224
;T9.C: 224: scan_no=0;
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_scan_no)
	movlw	high(0)
	movwf	((_scan_no))+1
	goto	i1l14
	
i1l30000553:	
	line	105
		goto	i1l30013
i1l30014:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf (_scan_no),w
	xorlw	0^0
	skipnz
	goto	i1l17
	xorlw	1^0
	skipnz
	goto	i1l30000500
	xorlw	2^1
	skipnz
	goto	i1l30000503
	xorlw	3^2
	skipnz
	goto	i1l30000506
	xorlw	4^3
	skipnz
	goto	i1l21
	xorlw	5^4
	skipnz
	goto	i1l30000514
	xorlw	6^5
	skipnz
	goto	i1l30000517
	xorlw	7^6
	skipnz
	goto	i1l30000520
	xorlw	8^7
	skipnz
	goto	i1l25
	xorlw	9^8
	skipnz
	goto	i1l30000528
	xorlw	10^9
	skipnz
	goto	i1l30000531
	xorlw	11^10
	skipnz
	goto	i1l30000534
	xorlw	12^11
	skipnz
	goto	i1l29
	xorlw	13^12
	skipnz
	goto	i1l30000542
	xorlw	14^13
	skipnz
	goto	i1l30000545
	xorlw	15^14
	skipnz
	goto	i1l30000548
	goto	i1l14

i1l30013:
	movf (_scan_no+1),w
	xorlw	0^0
	skipnz
	goto	i1l30014
	goto	i1l14

	
i1l14:	
	return
	opt stack 0
GLOBAL	__end_of_scanner
	__end_of_scanner:
; =============== function _scanner ends ============

psect	text106,local,class=CODE,delta=2
global __ptext106
__ptext106:
	line	227
	signat	_scanner,88
	global	_buzzer

; *************** function _buzzer *****************
; Defined at:
;		line 360 in file "D:\ABHISHEK JOSHI\PIC\T9\T9.C"
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
;		_isr_t0
; This function uses a non-reentrant model
; 
psect	text106
	file	"D:\ABHISHEK JOSHI\PIC\T9\T9.C"
	line	360
	global	__size_of_buzzer
	__size_of_buzzer	equ	__end_of_buzzer-_buzzer
;T9.C: 359: void buzzer()
;T9.C: 360: {
	
_buzzer:	
	opt stack 5
; Regs used in _buzzer: [wreg]
	line	361
	
i1l30000594:	
;T9.C: 361: if(start_buzzer==1)
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_start_buzzer),w
	iorwf	(_start_buzzer+1),w
	skipz
	goto	u20_21
	goto	u20_20
u20_21:
	goto	i1l67
u20_20:
	
i1l30000595:	
	line	362
;T9.C: 362: RC5=~RC5;
	movlw	1<<((61)&7)
	xorwf	((61)/8),f
	
i1l67:	
	return
	opt stack 0
GLOBAL	__end_of_buzzer
	__end_of_buzzer:
; =============== function _buzzer ends ============

psect	text107,local,class=CODE,delta=2
global __ptext107
__ptext107:
	line	363
	signat	_buzzer,88
	global	i1_init_timer

; *************** function i1_init_timer *****************
; Defined at:
;		line 73 in file "D:\ABHISHEK JOSHI\PIC\T9\T9.C"
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
;		_isr_t0
; This function uses a non-reentrant model
; 
psect	text107
	file	"D:\ABHISHEK JOSHI\PIC\T9\T9.C"
	line	73
	global	__size_ofi1_init_timer
	__size_ofi1_init_timer	equ	__end_ofi1_init_timer-i1_init_timer
;T9.C: 72: void init_timer()
;T9.C: 73: {
	
i1_init_timer:	
	opt stack 5
; Regs used in i1_init_timer: [wreg]
	line	74
	
i1l30000488:	
;T9.C: 74: TMR1H=0xFC;
	movlw	(0FCh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(15)	;volatile
	line	75
;T9.C: 75: TMR1L=0x18;
	movlw	(018h)
	movwf	(14)	;volatile
	line	76
;T9.C: 76: T1CON=0x01;
	movlw	(01h)
	movwf	(16)	;volatile
	
i1l30000489:	
	line	77
;T9.C: 77: TMR1IE=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1120/8)^080h,(1120)&7
	
i1l30000490:	
	line	78
;T9.C: 78: TMR1IF=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(96/8),(96)&7
	
i1l11:	
	return
	opt stack 0
GLOBAL	__end_ofi1_init_timer
	__end_ofi1_init_timer:
; =============== function i1_init_timer ends ============

psect	text108,local,class=CODE,delta=2
global __ptext108
__ptext108:
	line	79
	signat	i1_init_timer,88
	global	_adisp2

; *************** function _adisp2 *****************
; Defined at:
;		line 290 in file "D:\ABHISHEK JOSHI\PIC\T9\T9.C"
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
;		_scanner
; This function uses a non-reentrant model
; 
psect	text108
	file	"D:\ABHISHEK JOSHI\PIC\T9\T9.C"
	line	290
	global	__size_of_adisp2
	__size_of_adisp2	equ	__end_of_adisp2-_adisp2
;T9.C: 289: void adisp2()
;T9.C: 290: {
	
_adisp2:	
	opt stack 4
; Regs used in _adisp2: [wreg-fsr0h+status,2+status,0]
	line	291
	
i1l30000573:	
;T9.C: 291: k=ds2-'0';
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_ds2),w
	addlw	low(0FFD0h)
	movwf	(_k)
	movlw	high(0FFD0h)
	skipnc
	movlw	high(0FFD0h)+1
	movwf	((_k))+1
	
i1l30000574:	
	line	292
;T9.C: 292: PORTB=disp[k];
	movf	(_k),w
	addlw	(_disp)&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(6)	;volatile
	
i1l47:	
	return
	opt stack 0
GLOBAL	__end_of_adisp2
	__end_of_adisp2:
; =============== function _adisp2 ends ============

psect	text109,local,class=CODE,delta=2
global __ptext109
__ptext109:
	line	293
	signat	_adisp2,88
	global	_adisp3

; *************** function _adisp3 *****************
; Defined at:
;		line 296 in file "D:\ABHISHEK JOSHI\PIC\T9\T9.C"
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
;		_scanner
; This function uses a non-reentrant model
; 
psect	text109
	file	"D:\ABHISHEK JOSHI\PIC\T9\T9.C"
	line	296
	global	__size_of_adisp3
	__size_of_adisp3	equ	__end_of_adisp3-_adisp3
;T9.C: 295: void adisp3()
;T9.C: 296: {
	
_adisp3:	
	opt stack 4
; Regs used in _adisp3: [wreg-fsr0h+status,2+status,0]
	line	297
	
i1l30000589:	
;T9.C: 297: k=ds3-'0';
	movf	(_ds3),w
	addlw	low(0FFD0h)
	movwf	(_k)
	movlw	high(0FFD0h)
	skipnc
	movlw	high(0FFD0h)+1
	movwf	((_k))+1
	
i1l30000590:	
	line	298
;T9.C: 298: PORTB=disp[k];
	movf	(_k),w
	addlw	(_disp)&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	
i1l48:	
	return
	opt stack 0
GLOBAL	__end_of_adisp3
	__end_of_adisp3:
; =============== function _adisp3 ends ============

psect	text110,local,class=CODE,delta=2
global __ptext110
__ptext110:
	line	299
	signat	_adisp3,88
	global	_adisp4

; *************** function _adisp4 *****************
; Defined at:
;		line 302 in file "D:\ABHISHEK JOSHI\PIC\T9\T9.C"
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
;		_scanner
; This function uses a non-reentrant model
; 
psect	text110
	file	"D:\ABHISHEK JOSHI\PIC\T9\T9.C"
	line	302
	global	__size_of_adisp4
	__size_of_adisp4	equ	__end_of_adisp4-_adisp4
;T9.C: 301: void adisp4()
;T9.C: 302: {
	
_adisp4:	
	opt stack 4
; Regs used in _adisp4: [wreg-fsr0h+status,2+status,0]
	line	303
	
i1l30000591:	
;T9.C: 303: k=ds4-'0';
	movf	(_ds4),w
	addlw	low(0FFD0h)
	movwf	(_k)
	movlw	high(0FFD0h)
	skipnc
	movlw	high(0FFD0h)+1
	movwf	((_k))+1
	
i1l30000592:	
	line	304
;T9.C: 304: PORTB=disp[k];
	movf	(_k),w
	addlw	(_disp)&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	
i1l49:	
	return
	opt stack 0
GLOBAL	__end_of_adisp4
	__end_of_adisp4:
; =============== function _adisp4 ends ============

psect	text111,local,class=CODE,delta=2
global __ptext111
__ptext111:
	line	305
	signat	_adisp4,88
	global	_adisp1

; *************** function _adisp1 *****************
; Defined at:
;		line 284 in file "D:\ABHISHEK JOSHI\PIC\T9\T9.C"
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
;		_scanner
; This function uses a non-reentrant model
; 
psect	text111
	file	"D:\ABHISHEK JOSHI\PIC\T9\T9.C"
	line	284
	global	__size_of_adisp1
	__size_of_adisp1	equ	__end_of_adisp1-_adisp1
;T9.C: 283: void adisp1()
;T9.C: 284: {
	
_adisp1:	
	opt stack 4
; Regs used in _adisp1: [wreg-fsr0h+status,2+status,0]
	line	285
	
i1l30000493:	
;T9.C: 285: k=ds1-'0';
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_ds1),w
	addlw	low(0FFD0h)
	movwf	(_k)
	movlw	high(0FFD0h)
	skipnc
	movlw	high(0FFD0h)+1
	movwf	((_k))+1
	
i1l30000494:	
	line	286
;T9.C: 286: PORTB=disp[k];
	movf	(_k),w
	addlw	(_disp)&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(6)	;volatile
	
i1l46:	
	return
	opt stack 0
GLOBAL	__end_of_adisp1
	__end_of_adisp1:
; =============== function _adisp1 ends ============

psect	text112,local,class=CODE,delta=2
global __ptext112
__ptext112:
	line	287
	signat	_adisp1,88
	global	_k1

; *************** function _k1 *****************
; Defined at:
;		line 230 in file "D:\ABHISHEK JOSHI\PIC\T9\T9.C"
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
;		_scanner
; This function uses a non-reentrant model
; 
psect	text112
	file	"D:\ABHISHEK JOSHI\PIC\T9\T9.C"
	line	230
	global	__size_of_k1
	__size_of_k1	equ	__end_of_k1-_k1
;T9.C: 229: void k1()
;T9.C: 230: {
	
_k1:	
	opt stack 4
; Regs used in _k1: [wreg+status,2+status,0]
	line	231
	
i1l30000575:	
;T9.C: 231: if(key_ready==1)
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_key_ready),w
	iorwf	(_key_ready+1),w
	skipz
	goto	u13_21
	goto	u13_20
u13_21:
	goto	i1l30000581
u13_20:
	
i1l30000576:	
	line	233
;T9.C: 232: {
;T9.C: 233: if(c==0)
	movf	((_c+1)),w
	iorwf	((_c)),w
	skipz
	goto	u14_21
	goto	u14_20
u14_21:
	goto	i1l30000578
u14_20:
	
i1l30000577:	
	line	235
;T9.C: 234: {
;T9.C: 235: krcount=32;
	movlw	low(020h)
	movwf	(_krcount)
	movlw	high(020h)
	movwf	((_krcount))+1
	goto	i1l33
	
i1l30000578:	
	line	239
;T9.C: 237: else
;T9.C: 238: {
;T9.C: 239: krcount=krcount-1;
	movf	(_krcount),w
	addlw	low(-1)
	movwf	(_krcount)
	movf	(_krcount+1),w
	skipnc
	addlw	1
	addlw	high(-1)
	movwf	1+(_krcount)
	
i1l30000579:	
	line	241
;T9.C: 241: if(krcount==0)
	movf	((_krcount+1)),w
	iorwf	((_krcount)),w
	skipz
	goto	u15_21
	goto	u15_20
u15_21:
	goto	i1l33
u15_20:
	
i1l30000580:	
	line	243
;T9.C: 242: {
;T9.C: 243: nkp=1;
	movlw	low(01h)
	movwf	(_nkp)
	movlw	high(01h)
	movwf	((_nkp))+1
	line	244
;T9.C: 244: start_buzzer=0;
	movlw	low(0)
	movwf	(_start_buzzer)
	movlw	high(0)
	movwf	((_start_buzzer))+1
	line	245
;T9.C: 245: krcount=32;
	movlw	low(020h)
	movwf	(_krcount)
	movlw	high(020h)
	movwf	((_krcount))+1
	goto	i1l33
	
i1l30000581:	
	line	249
;T9.C: 249: else if(dcount==33)
	movlw	021h
	xorwf	(_dcount),w
	iorwf	(_dcount+1),w
	skipz
	goto	u16_21
	goto	u16_20
u16_21:
	goto	i1l30000584
u16_20:
	
i1l30000582:	
	line	251
;T9.C: 250: {
;T9.C: 251: if(c==0)
	movf	((_c+1)),w
	iorwf	((_c)),w
	skipz
	goto	u17_21
	goto	u17_20
u17_21:
	goto	i1l33
u17_20:
	
i1l30000583:	
	line	253
;T9.C: 252: {
;T9.C: 253: dcount=dcount-1;
	movf	(_dcount),w
	addlw	low(-1)
	movwf	(_dcount)
	movf	(_dcount+1),w
	skipnc
	addlw	1
	addlw	high(-1)
	movwf	1+(_dcount)
	line	254
;T9.C: 254: key_code=scan_no;
	movf	(_scan_no+1),w
	clrf	(_key_code+1)
	addwf	(_key_code+1)
	movf	(_scan_no),w
	clrf	(_key_code)
	addwf	(_key_code)

	goto	i1l33
	
i1l30000584:	
	line	261
;T9.C: 259: else
;T9.C: 260: {
;T9.C: 261: dcount=dcount-1;
	movf	(_dcount),w
	addlw	low(-1)
	movwf	(_dcount)
	movf	(_dcount+1),w
	skipnc
	addlw	1
	addlw	high(-1)
	movwf	1+(_dcount)
	
i1l30000585:	
	line	262
;T9.C: 262: if(dcount==0)
	movf	((_dcount+1)),w
	iorwf	((_dcount)),w
	skipz
	goto	u18_21
	goto	u18_20
u18_21:
	goto	i1l33
u18_20:
	
i1l30000586:	
	line	264
;T9.C: 263: {
;T9.C: 264: if(c==0)
	movf	((_c+1)),w
	iorwf	((_c)),w
	skipz
	goto	u19_21
	goto	u19_20
u19_21:
	goto	i1l30000588
u19_20:
	
i1l30000587:	
	line	266
;T9.C: 265: {
;T9.C: 266: key_ready=1;
	movlw	low(01h)
	movwf	(_key_ready)
	movlw	high(01h)
	movwf	((_key_ready))+1
	line	267
;T9.C: 267: start_buzzer=1;
	movlw	low(01h)
	movwf	(_start_buzzer)
	movlw	high(01h)
	movwf	((_start_buzzer))+1
	line	268
;T9.C: 268: dcount=33;
	movlw	low(021h)
	movwf	(_dcount)
	movlw	high(021h)
	movwf	((_dcount))+1
	goto	i1l33
	
i1l30000588:	
	line	270
;T9.C: 270: else dcount=33;
	movlw	low(021h)
	movwf	(_dcount)
	movlw	high(021h)
	movwf	((_dcount))+1
	
i1l33:	
	return
	opt stack 0
GLOBAL	__end_of_k1
	__end_of_k1:
; =============== function _k1 ends ============

psect	text113,local,class=CODE,delta=2
global __ptext113
__ptext113:
	line	274
	signat	_k1,88
	global	_disp_blank

; *************** function _disp_blank *****************
; Defined at:
;		line 279 in file "D:\ABHISHEK JOSHI\PIC\T9\T9.C"
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
;		_scanner
; This function uses a non-reentrant model
; 
psect	text113
	file	"D:\ABHISHEK JOSHI\PIC\T9\T9.C"
	line	279
	global	__size_of_disp_blank
	__size_of_disp_blank	equ	__end_of_disp_blank-_disp_blank
;T9.C: 278: void disp_blank()
;T9.C: 279: {
	
_disp_blank:	
	opt stack 4
; Regs used in _disp_blank: [wreg+status,2+status,0]
	line	280
	
i1l30000593:	
;T9.C: 280: PORTB=0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	
i1l45:	
	return
	opt stack 0
GLOBAL	__end_of_disp_blank
	__end_of_disp_blank:
; =============== function _disp_blank ends ============

psect	text114,local,class=CODE,delta=2
global __ptext114
__ptext114:
	line	281
	signat	_disp_blank,88
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	end
