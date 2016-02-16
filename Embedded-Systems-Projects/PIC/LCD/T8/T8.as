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
;COMMON:	_main->_delay
	FNCALL	_main,_init_lcd
	FNCALL	_main,_init
	FNCALL	_main,_cmd_wr
	FNCALL	_main,_data_wr
	FNCALL	_main,_lcd_disp
	FNCALL	_main,_delay
	FNCALL	_main,_incrementd
	FNCALL	_init,_init_timer
	FNCALL	_lcd_disp,_cmd_wr
	FNCALL	_lcd_disp,_data_wr
	FNCALL	_init_lcd,_lcd_delay
	FNCALL	_init_lcd,_cmd_wr
	FNCALL	_data_wr,_data_mapping
	FNCALL	_data_wr,_toggle
	FNCALL	_cmd_wr,_data_mapping
	FNCALL	_cmd_wr,_toggle
	FNROOT	_main
	FNCALL	_isr_t0,i1_init_timer
	FNCALL	_isr_t0,_scanner
	FNCALL	intlevel1,_isr_t0
	global	intlevel1
	FNROOT	intlevel1
	global	_disp
	global	_cnt
	global	_ds3
	global	_ds1
	global	_ds2
	global	_ds4
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"D:\ABHISHEK JOSHI\PIC\LCD\T8\LCD T8.C"
	line	16

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
	line	15

;initializer for _cnt
	retlw	043h
	retlw	04Fh
	retlw	055h
	retlw	04Eh
	retlw	054h
	retlw	045h
	retlw	052h
	retlw	0
	retlw	0
	retlw	0
	line	17

;initializer for _ds3
	retlw	030h

;initializer for _ds1
psect	idataCOMMON,class=CODE,space=0,delta=2
global __pidataCOMMON
__pidataCOMMON:
	retlw	030h

;initializer for _ds2
	retlw	030h

;initializer for _ds4
	retlw	030h
	global	_i
	global	_k
	global	_scan_no
	global	_cmd_data
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
	file	"T8.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_cmd_data:
       ds      1

psect	dataCOMMON,class=COMMON,space=1
global __pdataCOMMON
__pdataCOMMON:
	file	"D:\ABHISHEK JOSHI\PIC\LCD\T8\LCD T8.C"
	line	17
_ds1:
       ds      1

psect	dataCOMMON
	file	"D:\ABHISHEK JOSHI\PIC\LCD\T8\LCD T8.C"
	line	17
_ds2:
       ds      1

psect	dataCOMMON
	file	"D:\ABHISHEK JOSHI\PIC\LCD\T8\LCD T8.C"
	line	17
_ds4:
       ds      1

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_i:
       ds      2

_k:
       ds      2

_scan_no:
       ds      2

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"D:\ABHISHEK JOSHI\PIC\LCD\T8\LCD T8.C"
	line	16
_disp:
       ds      25

psect	dataBANK0
	file	"D:\ABHISHEK JOSHI\PIC\LCD\T8\LCD T8.C"
	line	15
_cnt:
       ds      10

psect	dataBANK0
	file	"D:\ABHISHEK JOSHI\PIC\LCD\T8\LCD T8.C"
	line	17
_ds3:
       ds      1

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
	clrf	((__pbssBANK0)+5)&07Fh
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
	movlw low(__pdataCOMMON+3)
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
	movlw low(__pdataBANK0+36)
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
	global	?_init_timer
?_init_timer: ;@ 0x0
	global	??_init_timer
??_init_timer: ;@ 0x0
	global	?_incrementd
?_incrementd: ;@ 0x0
	global	??_incrementd
??_incrementd: ;@ 0x0
	global	?_toggle
?_toggle: ;@ 0x0
	global	??_toggle
??_toggle: ;@ 0x0
	global	??_lcd_delay
??_lcd_delay: ;@ 0x0
	global	??_data_mapping
??_data_mapping: ;@ 0x0
	global	??_init
??_init: ;@ 0x0
	global	?_init
?_init: ;@ 0x0
	global	??_delay
??_delay: ;@ 0x0
	ds	1
	global	data_mapping@var_data1
data_mapping@var_data1:	; 1 bytes @ 0x1
	global	delay@d1
delay@d1:	; 2 bytes @ 0x1
	ds	1
	global	??_data_wr
??_data_wr: ;@ 0x2
	global	??_cmd_wr
??_cmd_wr: ;@ 0x2
	global	?_data_mapping
?_data_mapping: ;@ 0x2
	global	??_lcd_disp
??_lcd_disp: ;@ 0x2
	ds	1
	global	??_init_lcd
??_init_lcd: ;@ 0x3
	global	?_lcd_delay
?_lcd_delay: ;@ 0x3
	global	cmd_wr@var_data
cmd_wr@var_data:	; 1 bytes @ 0x3
	global	data_wr@var_data
data_wr@var_data:	; 1 bytes @ 0x3
	global	lcd_delay@x
lcd_delay@x:	; 2 bytes @ 0x3
	global	delay@d2
delay@d2:	; 2 bytes @ 0x3
	ds	1
	global	?_data_wr
?_data_wr: ;@ 0x4
	global	?_cmd_wr
?_cmd_wr: ;@ 0x4
	global	?_lcd_disp
?_lcd_disp: ;@ 0x4
	ds	1
	global	?_init_lcd
?_init_lcd: ;@ 0x5
	global	??_main
??_main: ;@ 0x5
	ds	1
	global	?_main
?_main: ;@ 0x6
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	?_delay
?_delay: ;@ 0x0
	global	delay@del
delay@del:	; 2 bytes @ 0x0
	global	lcd_delay@i
lcd_delay@i:	; 2 bytes @ 0x0
	ds	2
	global	lcd_delay@j
lcd_delay@j:	; 2 bytes @ 0x2
	ds	2
	global	??_scanner
??_scanner: ;@ 0x4
	global	?i1_init_timer
?i1_init_timer: ;@ 0x4
	global	??i1_init_timer
??i1_init_timer: ;@ 0x4
	global	??_isr_t0
??_isr_t0: ;@ 0x4
	global	?_scanner
?_scanner: ;@ 0x4
	ds	4
	global	?_isr_t0
?_isr_t0: ;@ 0x8
;Data sizes: Strings 0, constant 0, data 39, bss 7, persistent 0 stack 0
;Auto spaces:   Size  Autos    Used
; COMMON          14      6      10
; BANK0           80      8      50
; BANK1           80      0       0
; BANK3           96      0       0
; BANK2           96      0       0


;Pointer list with targets:



;Main: autosize = 0, tempsize = 1, incstack = 0, save=0


;Call graph:                      Base Space Used Autos Args Refs Density
;_main                                                1    0  541   0.00
;                                    5 COMMO    1
;           _init_lcd
;               _init
;             _cmd_wr
;            _data_wr
;           _lcd_disp
;              _delay
;         _incrementd
;  _delay                                             5    2  108   0.00
;                                    0 COMMO    5
;                                    0 BANK0    2
;  _init                                              0    0    0   0.00
;         _init_timer
;  _lcd_disp                                          0    0  130   0.00
;             _cmd_wr
;            _data_wr
;  _incrementd                                        0    0    0   0.00
;  _init_lcd                                          0    0  173   0.00
;          _lcd_delay
;             _cmd_wr
;    _data_wr                                         2    0   65   0.00
;                                    2 COMMO    2
;       _data_mapping
;             _toggle
;    _init_timer                                      0    0    0   0.00
;    _cmd_wr                                          2    0   65   0.00
;                                    2 COMMO    2
;       _data_mapping
;             _toggle
;    _lcd_delay                                       7    2  108   0.00
;                                    0 COMMO    5
;                                    0 BANK0    4
;      _data_mapping                                  2    0   16   0.00
;                                    0 COMMO    2
;      _toggle                                        0    0    0   0.00
; Estimated maximum call depth 3
;_isr_t0                                              4    0    0   0.00
;                                    4 BANK0    4
;       i1_init_timer
;            _scanner
;  _scanner                                           0    0    0   0.00
;  i1_init_timer                                      0    0    0   0.00
; Estimated maximum call depth 1
; Address spaces:

;Name               Size   Autos  Total    Cost      Usage
;BITCOMMON            E      0       0       0        0.0%
;CODE                 0      0       0       0        0.0%
;NULL                 0      0       0       0        0.0%
;COMMON               E      6       A       1       71.4%
;SFR0                 0      0       0       1        0.0%
;BITSFR0              0      0       0       1        0.0%
;BITSFR1              0      0       0       2        0.0%
;SFR1                 0      0       0       2        0.0%
;ABS                  0      0      3C       2        0.0%
;STACK                0      0       0       3        0.0%
;BITBANK0            50      0       0       4        0.0%
;SFR3                 0      0       0       4        0.0%
;BITSFR3              0      0       0       4        0.0%
;BANK0               50      8      32       5       62.5%
;BITSFR2              0      0       0       5        0.0%
;SFR2                 0      0       0       5        0.0%
;BITBANK1            50      0       0       6        0.0%
;BANK1               50      0       0       7        0.0%
;BITBANK3            60      0       0       8        0.0%
;BANK3               60      0       0       9        0.0%
;BITBANK2            60      0       0      10        0.0%
;BANK2               60      0       0      11        0.0%
;DATA                 0      0      3C      12        0.0%
;EEDATA             100      0       0    1000        0.0%

	global	_main
psect	maintext,local,class=CODE,delta=2
global __pmaintext
__pmaintext:

; *************** function _main *****************
; Defined at:
;		line 49 in file "D:\ABHISHEK JOSHI\PIC\LCD\T8\LCD T8.C"
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
;		_init_lcd
;		_init
;		_cmd_wr
;		_data_wr
;		_lcd_disp
;		_delay
;		_incrementd
; This function is called by:
;		Startup code after reset
; This function uses a non-reentrant model
; 
psect	maintext
	file	"D:\ABHISHEK JOSHI\PIC\LCD\T8\LCD T8.C"
	line	49
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
;LCD T8.C: 48: void main()
;LCD T8.C: 49: {
	
_main:	
	opt stack 6
; Regs used in _main: [allreg]
	line	50
	
l30000583:	
;LCD T8.C: 50: TRISB=0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	51
;LCD T8.C: 51: TRISA=0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(133)^080h	;volatile
	line	52
;LCD T8.C: 52: TRISC=0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(135)^080h	;volatile
	
l30000584:	
	line	53
;LCD T8.C: 53: init_lcd();
	fcall	_init_lcd
	
l30000585:	
	line	54
;LCD T8.C: 54: init();
	fcall	_init
	
l30000586:	
	line	55
;LCD T8.C: 55: GIE=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(95/8),(95)&7
	
l30000587:	
	line	56
;LCD T8.C: 56: PEIE=1;
	bsf	(94/8),(94)&7
	
l30000588:	
	line	59
;LCD T8.C: 59: cmd_wr(0xC0);
	movlw	(0C0h)
	fcall	_cmd_wr
	
l30000589:	
	line	60
;LCD T8.C: 60: for(i=0;i<=6;i++)
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_i)
	movlw	high(0)
	movwf	((_i))+1
	
l30000592:	
	line	62
;LCD T8.C: 61: {
;LCD T8.C: 62: data_wr(cnt[i]);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_i),w
	addlw	(_cnt)&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_data_wr
	
l30000593:	
	line	60
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_i),f
	skipnc
	incf	(_i+1),f
	movlw	high(01h)
	addwf	(_i+1),f
	
l30000594:	
	movf	(_i+1),w
	xorlw	80h
	movwf	(??_main+0+0)
	movlw	(high(07h))^80h
	subwf	(??_main+0+0),w
	skipz
	goto	u285
	movlw	low(07h)
	subwf	(_i),w
u285:

	skipc
	goto	u281
	goto	u280
u281:
	goto	l30000592
u280:
	
l30000595:	
	line	66
;LCD T8.C: 65: {
;LCD T8.C: 66: lcd_disp();
	fcall	_lcd_disp
	
l30000596:	
	line	67
;LCD T8.C: 67: delay(1000);
	movlw	low(03E8h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	
l30000597:	
	line	68
;LCD T8.C: 68: incrementd();
	fcall	_incrementd
	goto	l30000595
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
; =============== function _main ends ============

psect	maintext
	line	71
	signat	_main,88
	global	_delay
psect	text100,local,class=CODE,delta=2
global __ptext100
__ptext100:

; *************** function _delay *****************
; Defined at:
;		line 184 in file "D:\ABHISHEK JOSHI\PIC\LCD\T8\LCD T8.C"
; Parameters:    Size  Location     Type
;  del             2    0[BANK0 ] unsigned int 
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
;      Locals:         5       2       0       0       0
;      Temp:     1
;      Total:    7
; This function calls:
;		Nothing
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text100
	file	"D:\ABHISHEK JOSHI\PIC\LCD\T8\LCD T8.C"
	line	184
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
;LCD T8.C: 183: void delay(unsigned int del)
;LCD T8.C: 184: {
	
_delay:	
	opt stack 5
; Regs used in _delay: [wreg]
	line	186
	
l30000598:	
;LCD T8.C: 185: int d1,d2;
;LCD T8.C: 186: for(d1=0;d1<=del;d1++)
	movlw	low(0)
	movwf	(delay@d1)
	movlw	high(0)
	movwf	((delay@d1))+1
	goto	l35
	
l30000599:	
	line	187
;LCD T8.C: 187: for(d2=0;d2<=120;d2++);
	movlw	low(0)
	movwf	(delay@d2)
	movlw	high(0)
	movwf	((delay@d2))+1
	
l30000601:	
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
	goto	u295
	movlw	low(079h)
	subwf	(delay@d2),w
u295:

	skipc
	goto	u291
	goto	u290
u291:
	goto	l30000601
u290:
	
l30000602:	
	line	186
	movlw	low(01h)
	addwf	(delay@d1),f
	skipnc
	incf	(delay@d1+1),f
	movlw	high(01h)
	addwf	(delay@d1+1),f
	
l35:	
	movf	(delay@d1+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(delay@del+1),w
	skipz
	goto	u305
	movf	(delay@d1),w
	subwf	(delay@del),w
u305:
	skipnc
	goto	u301
	goto	u300
u301:
	goto	l30000599
u300:
	
l31:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
; =============== function _delay ends ============

psect	text101,local,class=CODE,delta=2
global __ptext101
__ptext101:
	line	188
	signat	_delay,4216
	global	_init

; *************** function _init *****************
; Defined at:
;		line 74 in file "D:\ABHISHEK JOSHI\PIC\LCD\T8\LCD T8.C"
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
;		_init_timer
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text101
	file	"D:\ABHISHEK JOSHI\PIC\LCD\T8\LCD T8.C"
	line	74
	global	__size_of_init
	__size_of_init	equ	__end_of_init-_init
;LCD T8.C: 73: void init()
;LCD T8.C: 74: {
	
_init:	
	opt stack 5
; Regs used in _init: [wreg+status,2+status,0+pclath+cstack]
	line	75
	
l30000551:	
;LCD T8.C: 75: scan_no=0;
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_scan_no)
	movlw	high(0)
	movwf	((_scan_no))+1
	
l30000552:	
	line	76
;LCD T8.C: 76: init_timer();
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
	line	77
	signat	_init,88
	global	_lcd_disp

; *************** function _lcd_disp *****************
; Defined at:
;		line 228 in file "D:\ABHISHEK JOSHI\PIC\LCD\T8\LCD T8.C"
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
;		_cmd_wr
;		_data_wr
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text102
	file	"D:\ABHISHEK JOSHI\PIC\LCD\T8\LCD T8.C"
	line	228
	global	__size_of_lcd_disp
	__size_of_lcd_disp	equ	__end_of_lcd_disp-_lcd_disp
;LCD T8.C: 227: void lcd_disp()
;LCD T8.C: 228: {
	
_lcd_disp:	
	opt stack 5
; Regs used in _lcd_disp: [allreg]
	line	229
	
l30000514:	
;LCD T8.C: 229: cmd_wr(0x80);
	movlw	(080h)
	fcall	_cmd_wr
	line	230
;LCD T8.C: 230: data_wr(ds4);
	movf	(_ds4),w
	fcall	_data_wr
	line	231
;LCD T8.C: 231: data_wr(ds3);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_ds3),w
	fcall	_data_wr
	line	232
;LCD T8.C: 232: data_wr(ds2);
	movf	(_ds2),w
	fcall	_data_wr
	line	233
;LCD T8.C: 233: data_wr(ds1);
	movf	(_ds1),w
	fcall	_data_wr
	
l44:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_disp
	__end_of_lcd_disp:
; =============== function _lcd_disp ends ============

psect	text103,local,class=CODE,delta=2
global __ptext103
__ptext103:
	line	234
	signat	_lcd_disp,88
	global	_incrementd

; *************** function _incrementd *****************
; Defined at:
;		line 193 in file "D:\ABHISHEK JOSHI\PIC\LCD\T8\LCD T8.C"
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
psect	text103
	file	"D:\ABHISHEK JOSHI\PIC\LCD\T8\LCD T8.C"
	line	193
	global	__size_of_incrementd
	__size_of_incrementd	equ	__end_of_incrementd-_incrementd
;LCD T8.C: 192: void incrementd()
;LCD T8.C: 193: {
	
_incrementd:	
	opt stack 5
; Regs used in _incrementd: [wreg+status,2+status,0]
	line	195
	
l30000487:	
;LCD T8.C: 195: ds1=ds1+1;
	movf	(_ds1),w
	addlw	01h
	movwf	(_ds1)
	
l30000488:	
	line	196
;LCD T8.C: 196: if (ds1>'9')
	movlw	(03Ah)
	subwf	(_ds1),w
	skipc
	goto	u131
	goto	u130
u131:
	goto	l39
u130:
	
l30000489:	
	line	198
;LCD T8.C: 197: {
;LCD T8.C: 198: ds1='0';
	movlw	(030h)
	movwf	(_ds1)
	
l30000490:	
	line	199
;LCD T8.C: 199: ds2=ds2+1;
	movf	(_ds2),w
	addlw	01h
	movwf	(_ds2)
	
l30000491:	
	line	201
;LCD T8.C: 201: if (ds2>'9')
	movlw	(03Ah)
	subwf	(_ds2),w
	skipc
	goto	u141
	goto	u140
u141:
	goto	l39
u140:
	
l30000492:	
	line	203
;LCD T8.C: 202: {
;LCD T8.C: 203: ds2='0';
	movlw	(030h)
	movwf	(_ds2)
	
l30000493:	
	line	204
;LCD T8.C: 204: ds3=ds3+1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_ds3),w
	addlw	01h
	movwf	(_ds3)
	
l30000494:	
	line	206
;LCD T8.C: 206: if (ds3>'9')
	movlw	(03Ah)
	subwf	(_ds3),w
	skipc
	goto	u151
	goto	u150
u151:
	goto	l39
u150:
	
l30000495:	
	line	208
;LCD T8.C: 207: {
;LCD T8.C: 208: ds3='0';
	movlw	(030h)
	movwf	(_ds3)
	
l30000496:	
	line	209
;LCD T8.C: 209: ds4=ds4+1;
	movf	(_ds4),w
	addlw	01h
	movwf	(_ds4)
	
l30000497:	
	line	211
;LCD T8.C: 211: if(ds4>'9')
	movlw	(03Ah)
	subwf	(_ds4),w
	skipc
	goto	u161
	goto	u160
u161:
	goto	l41
u160:
	
l30000498:	
	line	213
;LCD T8.C: 212: {
;LCD T8.C: 213: ds1='0';
	movlw	(030h)
	movwf	(_ds1)
	line	214
;LCD T8.C: 214: ds2='0';
	movlw	(030h)
	movwf	(_ds2)
	line	215
;LCD T8.C: 215: ds3='0';
	movlw	(030h)
	movwf	(_ds3)
	line	216
;LCD T8.C: 216: ds4='0';
	movlw	(030h)
	movwf	(_ds4)
	goto	l39
	
l41:	
	
l39:	
	return
	opt stack 0
GLOBAL	__end_of_incrementd
	__end_of_incrementd:
; =============== function _incrementd ends ============

psect	text104,local,class=CODE,delta=2
global __ptext104
__ptext104:
	line	225
	signat	_incrementd,88
	global	_init_lcd

; *************** function _init_lcd *****************
; Defined at:
;		line 237 in file "D:\ABHISHEK JOSHI\PIC\LCD\T8\LCD T8.C"
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
;		_lcd_delay
;		_cmd_wr
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text104
	file	"D:\ABHISHEK JOSHI\PIC\LCD\T8\LCD T8.C"
	line	237
	global	__size_of_init_lcd
	__size_of_init_lcd	equ	__end_of_init_lcd-_init_lcd
;LCD T8.C: 236: void init_lcd()
;LCD T8.C: 237: {
	
_init_lcd:	
	opt stack 5
; Regs used in _init_lcd: [wreg+status,2+status,0+pclath+cstack]
	line	238
	
l30000566:	
;LCD T8.C: 238: lcd_delay (3);
	movlw	low(03h)
	movwf	(?_lcd_delay)
	movlw	high(03h)
	movwf	((?_lcd_delay))+1
	fcall	_lcd_delay
	line	239
;LCD T8.C: 239: lcd_delay (3);
	movlw	low(03h)
	movwf	(?_lcd_delay)
	movlw	high(03h)
	movwf	((?_lcd_delay))+1
	fcall	_lcd_delay
	line	240
;LCD T8.C: 240: lcd_delay (3);
	movlw	low(03h)
	movwf	(?_lcd_delay)
	movlw	high(03h)
	movwf	((?_lcd_delay))+1
	fcall	_lcd_delay
	
l30000567:	
	line	242
;LCD T8.C: 242: cmd_data=0x03;
	movlw	(03h)
	movwf	(_cmd_data)
	
l30000568:	
	line	243
;LCD T8.C: 243: cmd_wr(cmd_data);
	movlw	(03h)
	fcall	_cmd_wr
	
l30000569:	
	line	244
;LCD T8.C: 244: lcd_delay(3);
	movlw	low(03h)
	movwf	(?_lcd_delay)
	movlw	high(03h)
	movwf	((?_lcd_delay))+1
	fcall	_lcd_delay
	
l30000570:	
	line	246
;LCD T8.C: 246: cmd_data=0x03;
	movlw	(03h)
	movwf	(_cmd_data)
	line	247
;LCD T8.C: 247: cmd_wr(cmd_data);
	movlw	(03h)
	fcall	_cmd_wr
	line	248
;LCD T8.C: 248: lcd_delay(3);
	movlw	low(03h)
	movwf	(?_lcd_delay)
	movlw	high(03h)
	movwf	((?_lcd_delay))+1
	fcall	_lcd_delay
	
l30000571:	
	line	250
;LCD T8.C: 250: cmd_data=0x03;
	movlw	(03h)
	movwf	(_cmd_data)
	
l30000572:	
	line	251
;LCD T8.C: 251: cmd_wr(cmd_data);
	movlw	(03h)
	fcall	_cmd_wr
	
l30000573:	
	line	252
;LCD T8.C: 252: lcd_delay(3);
	movlw	low(03h)
	movwf	(?_lcd_delay)
	movlw	high(03h)
	movwf	((?_lcd_delay))+1
	fcall	_lcd_delay
	
l30000574:	
	line	254
;LCD T8.C: 254: cmd_data=0x20;
	movlw	(020h)
	movwf	(_cmd_data)
	line	255
;LCD T8.C: 255: cmd_wr(cmd_data);
	movlw	(020h)
	fcall	_cmd_wr
	line	256
;LCD T8.C: 256: lcd_delay(3);
	movlw	low(03h)
	movwf	(?_lcd_delay)
	movlw	high(03h)
	movwf	((?_lcd_delay))+1
	fcall	_lcd_delay
	
l30000575:	
	line	258
;LCD T8.C: 258: cmd_data=0x28;
	movlw	(028h)
	movwf	(_cmd_data)
	
l30000576:	
	line	259
;LCD T8.C: 259: cmd_wr(cmd_data);
	movlw	(028h)
	fcall	_cmd_wr
	
l30000577:	
	line	260
;LCD T8.C: 260: lcd_delay(3);
	movlw	low(03h)
	movwf	(?_lcd_delay)
	movlw	high(03h)
	movwf	((?_lcd_delay))+1
	fcall	_lcd_delay
	
l30000578:	
	line	262
;LCD T8.C: 262: cmd_data=0x06;
	movlw	(06h)
	movwf	(_cmd_data)
	line	263
;LCD T8.C: 263: cmd_wr(cmd_data);
	movlw	(06h)
	fcall	_cmd_wr
	line	264
;LCD T8.C: 264: lcd_delay(3);
	movlw	low(03h)
	movwf	(?_lcd_delay)
	movlw	high(03h)
	movwf	((?_lcd_delay))+1
	fcall	_lcd_delay
	
l30000579:	
	line	266
;LCD T8.C: 266: cmd_data=0x01;
	clrf	(_cmd_data)
	bsf	status,0
	rlf	(_cmd_data),f
	
l30000580:	
	line	267
;LCD T8.C: 267: cmd_wr(cmd_data);
	movlw	(01h)
	fcall	_cmd_wr
	
l30000581:	
	line	268
;LCD T8.C: 268: lcd_delay(3);
	movlw	low(03h)
	movwf	(?_lcd_delay)
	movlw	high(03h)
	movwf	((?_lcd_delay))+1
	fcall	_lcd_delay
	
l30000582:	
	line	270
;LCD T8.C: 270: RB0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7
	
l45:	
	return
	opt stack 0
GLOBAL	__end_of_init_lcd
	__end_of_init_lcd:
; =============== function _init_lcd ends ============

psect	text105,local,class=CODE,delta=2
global __ptext105
__ptext105:
	line	271
	signat	_init_lcd,88
	global	_data_wr

; *************** function _data_wr *****************
; Defined at:
;		line 286 in file "D:\ABHISHEK JOSHI\PIC\LCD\T8\LCD T8.C"
; Parameters:    Size  Location     Type
;  var_data        1    wreg     unsigned char 
; Auto vars:     Size  Location     Type
;  var_data        1    3[COMMON] unsigned char 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         2       0       0       0       0
;      Temp:     1
;      Total:    2
; This function calls:
;		_data_mapping
;		_toggle
; This function is called by:
;		_main
;		_lcd_disp
; This function uses a non-reentrant model
; 
psect	text105
	file	"D:\ABHISHEK JOSHI\PIC\LCD\T8\LCD T8.C"
	line	286
	global	__size_of_data_wr
	__size_of_data_wr	equ	__end_of_data_wr-_data_wr
;LCD T8.C: 285: void data_wr(unsigned char var_data)
;LCD T8.C: 286: {
	
_data_wr:	
	opt stack 4
; Regs used in _data_wr: [wreg+status,2+status,0+pclath+cstack]
;data_wr@var_data stored from wreg
	movwf	(data_wr@var_data)
	
l30000515:	
	line	287
;LCD T8.C: 287: RB1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(49/8),(49)&7
	line	288
;LCD T8.C: 288: RB2=0;
	bcf	(50/8),(50)&7
	
l30000516:	
	line	289
;LCD T8.C: 289: data_mapping(var_data);
	movf	(data_wr@var_data),w
	fcall	_data_mapping
	
l30000517:	
	line	290
;LCD T8.C: 290: toggle();
	fcall	_toggle
	
l30000518:	
	line	291
;LCD T8.C: 291: var_data=var_data<<4;
	movf	(data_wr@var_data),w
	movwf	(??_data_wr+0+0)
	movlw	(04h)-1
u185:
	clrc
	rlf	(??_data_wr+0+0),f
	addlw	-1
	skipz
	goto	u185
	clrc
	rlf	(??_data_wr+0+0),w
	movwf	(data_wr@var_data)
	
l30000519:	
	line	292
;LCD T8.C: 292: data_mapping(var_data);
	movf	(data_wr@var_data),w
	fcall	_data_mapping
	
l30000520:	
	line	293
;LCD T8.C: 293: toggle();
	fcall	_toggle
	
l47:	
	return
	opt stack 0
GLOBAL	__end_of_data_wr
	__end_of_data_wr:
; =============== function _data_wr ends ============

psect	text106,local,class=CODE,delta=2
global __ptext106
__ptext106:
	line	294
	signat	_data_wr,4216
	global	_init_timer

; *************** function _init_timer *****************
; Defined at:
;		line 80 in file "D:\ABHISHEK JOSHI\PIC\LCD\T8\LCD T8.C"
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
psect	text106
	file	"D:\ABHISHEK JOSHI\PIC\LCD\T8\LCD T8.C"
	line	80
	global	__size_of_init_timer
	__size_of_init_timer	equ	__end_of_init_timer-_init_timer
;LCD T8.C: 79: void init_timer()
;LCD T8.C: 80: {
	
_init_timer:	
	opt stack 4
; Regs used in _init_timer: [wreg]
	line	81
	
l30000553:	
;LCD T8.C: 81: TMR1H=0xFC;
	movlw	(0FCh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(15)	;volatile
	line	82
;LCD T8.C: 82: TMR1L=0x18;
	movlw	(018h)
	movwf	(14)	;volatile
	line	83
;LCD T8.C: 83: T1CON=0x01;
	movlw	(01h)
	movwf	(16)	;volatile
	
l30000554:	
	line	84
;LCD T8.C: 84: TMR1IE=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1120/8)^080h,(1120)&7
	
l30000555:	
	line	85
;LCD T8.C: 85: TMR1IF=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(96/8),(96)&7
	
l11:	
	return
	opt stack 0
GLOBAL	__end_of_init_timer
	__end_of_init_timer:
; =============== function _init_timer ends ============

psect	text107,local,class=CODE,delta=2
global __ptext107
__ptext107:
	line	86
	signat	_init_timer,88
	global	_cmd_wr

; *************** function _cmd_wr *****************
; Defined at:
;		line 275 in file "D:\ABHISHEK JOSHI\PIC\LCD\T8\LCD T8.C"
; Parameters:    Size  Location     Type
;  var_data        1    wreg     unsigned char 
; Auto vars:     Size  Location     Type
;  var_data        1    3[COMMON] unsigned char 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         2       0       0       0       0
;      Temp:     1
;      Total:    2
; This function calls:
;		_data_mapping
;		_toggle
; This function is called by:
;		_main
;		_lcd_disp
;		_init_lcd
; This function uses a non-reentrant model
; 
psect	text107
	file	"D:\ABHISHEK JOSHI\PIC\LCD\T8\LCD T8.C"
	line	275
	global	__size_of_cmd_wr
	__size_of_cmd_wr	equ	__end_of_cmd_wr-_cmd_wr
;LCD T8.C: 274: void cmd_wr(unsigned char var_data)
;LCD T8.C: 275: {
	
_cmd_wr:	
	opt stack 4
; Regs used in _cmd_wr: [wreg+status,2+status,0+pclath+cstack]
;cmd_wr@var_data stored from wreg
	movwf	(cmd_wr@var_data)
	
l30000521:	
	line	276
;LCD T8.C: 276: RB1=RB2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7
	bcf	(49/8),(49)&7
	
l30000522:	
	line	277
;LCD T8.C: 277: data_mapping(var_data);
	movf	(cmd_wr@var_data),w
	fcall	_data_mapping
	
l30000523:	
	line	278
;LCD T8.C: 278: toggle();
	fcall	_toggle
	
l30000524:	
	line	279
;LCD T8.C: 279: var_data=var_data<<4;
	movf	(cmd_wr@var_data),w
	movwf	(??_cmd_wr+0+0)
	movlw	(04h)-1
u195:
	clrc
	rlf	(??_cmd_wr+0+0),f
	addlw	-1
	skipz
	goto	u195
	clrc
	rlf	(??_cmd_wr+0+0),w
	movwf	(cmd_wr@var_data)
	
l30000525:	
	line	280
;LCD T8.C: 280: data_mapping(var_data);
	movf	(cmd_wr@var_data),w
	fcall	_data_mapping
	
l30000526:	
	line	281
;LCD T8.C: 281: toggle();
	fcall	_toggle
	
l46:	
	return
	opt stack 0
GLOBAL	__end_of_cmd_wr
	__end_of_cmd_wr:
; =============== function _cmd_wr ends ============

psect	text108,local,class=CODE,delta=2
global __ptext108
__ptext108:
	line	282
	signat	_cmd_wr,4216
	global	_lcd_delay

; *************** function _lcd_delay *****************
; Defined at:
;		line 314 in file "D:\ABHISHEK JOSHI\PIC\LCD\T8\LCD T8.C"
; Parameters:    Size  Location     Type
;  x               2    3[COMMON] unsigned int 
; Auto vars:     Size  Location     Type
;  j               2    2[BANK0 ] unsigned int 
;  i               2    0[BANK0 ] unsigned int 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         5       4       0       0       0
;      Temp:     3
;      Total:    9
; This function calls:
;		Nothing
; This function is called by:
;		_init_lcd
; This function uses a non-reentrant model
; 
psect	text108
	file	"D:\ABHISHEK JOSHI\PIC\LCD\T8\LCD T8.C"
	line	314
	global	__size_of_lcd_delay
	__size_of_lcd_delay	equ	__end_of_lcd_delay-_lcd_delay
;LCD T8.C: 313: void lcd_delay(unsigned int x)
;LCD T8.C: 314: {
	
_lcd_delay:	
	opt stack 4
; Regs used in _lcd_delay: [wreg]
	line	317
	
l30000561:	
;LCD T8.C: 315: unsigned int i,j;
;LCD T8.C: 317: for (i=0;i<=2*x;i++)
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(lcd_delay@i)
	movlw	high(0)
	movwf	((lcd_delay@i))+1
	goto	l54
	
l30000562:	
	line	319
;LCD T8.C: 318: {
;LCD T8.C: 319: for (j=0;j<=120;j++);
	movlw	low(0)
	movwf	(lcd_delay@j)
	movlw	high(0)
	movwf	((lcd_delay@j))+1
	
l30000564:	
	movlw	low(01h)
	addwf	(lcd_delay@j),f
	skipnc
	incf	(lcd_delay@j+1),f
	movlw	high(01h)
	addwf	(lcd_delay@j+1),f
	movlw	high(079h)
	subwf	(lcd_delay@j+1),w
	movlw	low(079h)
	skipnz
	subwf	(lcd_delay@j),w
	skipc
	goto	u251
	goto	u250
u251:
	goto	l30000564
u250:
	
l30000565:	
	line	317
	movlw	low(01h)
	addwf	(lcd_delay@i),f
	skipnc
	incf	(lcd_delay@i+1),f
	movlw	high(01h)
	addwf	(lcd_delay@i+1),f
	
l54:	
	movf	(lcd_delay@x+1),w
	movwf	(??_lcd_delay+0+0+1)
	movf	(lcd_delay@x),w
	movwf	(??_lcd_delay+0+0)
	movlw	01h
	movwf	(??_lcd_delay+2+0)
u265:
	clrc
	rlf	(??_lcd_delay+0+0),f
	rlf	(??_lcd_delay+0+1),f
	decfsz	(??_lcd_delay+2+0),f
	goto	u265
	movf	(lcd_delay@i+1),w
	subwf	1+(??_lcd_delay+0+0),w
	skipz
	goto	u275
	movf	(lcd_delay@i),w
	subwf	0+(??_lcd_delay+0+0),w
u275:
	skipnc
	goto	u271
	goto	u270
u271:
	goto	l30000562
u270:
	
l50:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_delay
	__end_of_lcd_delay:
; =============== function _lcd_delay ends ============

psect	text109,local,class=CODE,delta=2
global __ptext109
__ptext109:
	line	321
	signat	_lcd_delay,4216
	global	_data_mapping

; *************** function _data_mapping *****************
; Defined at:
;		line 298 in file "D:\ABHISHEK JOSHI\PIC\LCD\T8\LCD T8.C"
; Parameters:    Size  Location     Type
;  var_data1       1    wreg     unsigned char 
; Auto vars:     Size  Location     Type
;  var_data1       1    1[COMMON] unsigned char 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         2       0       0       0       0
;      Temp:     1
;      Total:    2
; This function calls:
;		Nothing
; This function is called by:
;		_cmd_wr
;		_data_wr
; This function uses a non-reentrant model
; 
psect	text109
	file	"D:\ABHISHEK JOSHI\PIC\LCD\T8\LCD T8.C"
	line	298
	global	__size_of_data_mapping
	__size_of_data_mapping	equ	__end_of_data_mapping-_data_mapping
;LCD T8.C: 297: void data_mapping(unsigned char var_data1)
;LCD T8.C: 298: {
	
_data_mapping:	
	opt stack 3
; Regs used in _data_mapping: [wreg+status,2+status,0]
;data_mapping@var_data1 stored from wreg
	movwf	(data_mapping@var_data1)
	
l30000545:	
	line	299
;LCD T8.C: 299: PORTB=(var_data1&0xf0)|(PORTB&0x0f);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(6),w	;volatile
	andlw	0Fh
	movwf	(??_data_mapping+0+0)
	movf	(data_mapping@var_data1),w
	andlw	0F0h
	iorwf	(??_data_mapping+0+0),w
	movwf	(6)	;volatile
	
l48:	
	return
	opt stack 0
GLOBAL	__end_of_data_mapping
	__end_of_data_mapping:
; =============== function _data_mapping ends ============

psect	text110,local,class=CODE,delta=2
global __ptext110
__ptext110:
	line	300
	signat	_data_mapping,4216
	global	_toggle

; *************** function _toggle *****************
; Defined at:
;		line 303 in file "D:\ABHISHEK JOSHI\PIC\LCD\T8\LCD T8.C"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		None
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
;		_cmd_wr
;		_data_wr
; This function uses a non-reentrant model
; 
psect	text110
	file	"D:\ABHISHEK JOSHI\PIC\LCD\T8\LCD T8.C"
	line	303
	global	__size_of_toggle
	__size_of_toggle	equ	__end_of_toggle-_toggle
;LCD T8.C: 302: void toggle()
;LCD T8.C: 303: {
	
_toggle:	
	opt stack 3
; Regs used in _toggle: []
	line	304
	
l30000544:	
;LCD T8.C: 304: RB3=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(51/8),(51)&7
	line	310
;LCD T8.C: 305: ;
;LCD T8.C: 306: ;
;LCD T8.C: 307: ;
;LCD T8.C: 308: ;
;LCD T8.C: 309: ;
;LCD T8.C: 310: RB3=0;
	bcf	(51/8),(51)&7
	
l49:	
	return
	opt stack 0
GLOBAL	__end_of_toggle
	__end_of_toggle:
; =============== function _toggle ends ============

psect	text111,local,class=CODE,delta=2
global __ptext111
__ptext111:
	line	311
	signat	_toggle,88
	global	_isr_t0

; *************** function _isr_t0 *****************
; Defined at:
;		line 43 in file "D:\ABHISHEK JOSHI\PIC\LCD\T8\LCD T8.C"
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
;		_scanner
; This function is called by:
;		Interrupt level 1
; This function uses a non-reentrant model
; 
psect	text111
	file	"D:\ABHISHEK JOSHI\PIC\LCD\T8\LCD T8.C"
	line	43
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
	opt stack 5
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
psect	text111
	line	44
	
i1l30000482:	
;LCD T8.C: 44: init_timer();
	fcall	i1_init_timer
	
i1l30000483:	
	line	45
;LCD T8.C: 45: scanner();
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

psect	text112,local,class=CODE,delta=2
global __ptext112
__ptext112:
	line	46
	signat	_isr_t0,88
	global	_scanner

; *************** function _scanner *****************
; Defined at:
;		line 89 in file "D:\ABHISHEK JOSHI\PIC\LCD\T8\LCD T8.C"
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
;		_isr_t0
; This function uses a non-reentrant model
; 
psect	text112
	file	"D:\ABHISHEK JOSHI\PIC\LCD\T8\LCD T8.C"
	line	89
	global	__size_of_scanner
	__size_of_scanner	equ	__end_of_scanner-_scanner
;LCD T8.C: 88: void scanner()
;LCD T8.C: 89: {
	
_scanner:	
	opt stack 4
; Regs used in _scanner: [wreg-fsr0h+status,2+status,0]
	
i1l30000463:	
	goto	i1l30000481
	
i1l15:	
	line	93
;LCD T8.C: 93: RA1=0;
	bcf	(41/8),(41)&7
	line	94
;LCD T8.C: 94: RC0=1;
	bsf	(56/8),(56)&7
	line	95
;LCD T8.C: 95: RC1=1;
	bsf	(57/8),(57)&7
	line	96
;LCD T8.C: 96: RC2=1;
	bsf	(58/8),(58)&7
	
i1l30000464:	
	line	98
;LCD T8.C: 98: scan_no=1;
	movlw	low(01h)
	movwf	(_scan_no)
	movlw	high(01h)
	movwf	((_scan_no))+1
	goto	i1l12
	
i1l30000465:	
	line	102
;LCD T8.C: 102: scan_no=2;
	movlw	low(02h)
	movwf	(_scan_no)
	movlw	high(02h)
	movwf	((_scan_no))+1
	goto	i1l12
	
i1l30000466:	
	line	106
;LCD T8.C: 106: scan_no=3;
	movlw	low(03h)
	movwf	(_scan_no)
	movlw	high(03h)
	movwf	((_scan_no))+1
	goto	i1l12
	
i1l30000467:	
	line	111
;LCD T8.C: 111: scan_no=4;
	movlw	low(04h)
	movwf	(_scan_no)
	movlw	high(04h)
	movwf	((_scan_no))+1
	goto	i1l12
	
i1l19:	
	line	115
;LCD T8.C: 115: RA1=1;
	bsf	(41/8),(41)&7
	line	116
;LCD T8.C: 116: RC0=0;
	bcf	(56/8),(56)&7
	line	117
;LCD T8.C: 117: RC1=1;
	bsf	(57/8),(57)&7
	line	118
;LCD T8.C: 118: RC2=1;
	bsf	(58/8),(58)&7
	
i1l30000468:	
	line	120
;LCD T8.C: 120: scan_no=5;
	movlw	low(05h)
	movwf	(_scan_no)
	movlw	high(05h)
	movwf	((_scan_no))+1
	goto	i1l12
	
i1l30000469:	
	line	124
;LCD T8.C: 124: scan_no=6;
	movlw	low(06h)
	movwf	(_scan_no)
	movlw	high(06h)
	movwf	((_scan_no))+1
	goto	i1l12
	
i1l30000470:	
	line	128
;LCD T8.C: 128: scan_no=7;
	movlw	low(07h)
	movwf	(_scan_no)
	movlw	high(07h)
	movwf	((_scan_no))+1
	goto	i1l12
	
i1l30000471:	
	line	133
;LCD T8.C: 133: scan_no=8;
	movlw	low(08h)
	movwf	(_scan_no)
	movlw	high(08h)
	movwf	((_scan_no))+1
	goto	i1l12
	
i1l23:	
	line	137
;LCD T8.C: 137: RA1=1;
	bsf	(41/8),(41)&7
	line	138
;LCD T8.C: 138: RC0=1;
	bsf	(56/8),(56)&7
	line	139
;LCD T8.C: 139: RC1=0;
	bcf	(57/8),(57)&7
	line	140
;LCD T8.C: 140: RC2=1;
	bsf	(58/8),(58)&7
	
i1l30000472:	
	line	142
;LCD T8.C: 142: scan_no=9;
	movlw	low(09h)
	movwf	(_scan_no)
	movlw	high(09h)
	movwf	((_scan_no))+1
	goto	i1l12
	
i1l30000473:	
	line	146
;LCD T8.C: 146: scan_no=10;
	movlw	low(0Ah)
	movwf	(_scan_no)
	movlw	high(0Ah)
	movwf	((_scan_no))+1
	goto	i1l12
	
i1l30000474:	
	line	150
;LCD T8.C: 150: scan_no=11;
	movlw	low(0Bh)
	movwf	(_scan_no)
	movlw	high(0Bh)
	movwf	((_scan_no))+1
	goto	i1l12
	
i1l30000475:	
	line	155
;LCD T8.C: 155: scan_no=12;
	movlw	low(0Ch)
	movwf	(_scan_no)
	movlw	high(0Ch)
	movwf	((_scan_no))+1
	goto	i1l12
	
i1l27:	
	line	159
;LCD T8.C: 159: RA1=1;
	bsf	(41/8),(41)&7
	line	160
;LCD T8.C: 160: RC0=1;
	bsf	(56/8),(56)&7
	line	161
;LCD T8.C: 161: RC1=1;
	bsf	(57/8),(57)&7
	line	162
;LCD T8.C: 162: RC2=0;
	bcf	(58/8),(58)&7
	
i1l30000476:	
	line	164
;LCD T8.C: 164: scan_no=13;
	movlw	low(0Dh)
	movwf	(_scan_no)
	movlw	high(0Dh)
	movwf	((_scan_no))+1
	goto	i1l12
	
i1l30000477:	
	line	168
;LCD T8.C: 168: scan_no=14;
	movlw	low(0Eh)
	movwf	(_scan_no)
	movlw	high(0Eh)
	movwf	((_scan_no))+1
	goto	i1l12
	
i1l30000478:	
	line	172
;LCD T8.C: 172: scan_no=15;
	movlw	low(0Fh)
	movwf	(_scan_no)
	movlw	high(0Fh)
	movwf	((_scan_no))+1
	goto	i1l12
	
i1l30000479:	
	line	177
;LCD T8.C: 177: scan_no=0;
	movlw	low(0)
	movwf	(_scan_no)
	movlw	high(0)
	movwf	((_scan_no))+1
	goto	i1l12
	
i1l30000481:	
	line	90
		goto	i1l30015
i1l30016:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf (_scan_no),w
	xorlw	0^0
	skipnz
	goto	i1l15
	xorlw	1^0
	skipnz
	goto	i1l30000465
	xorlw	2^1
	skipnz
	goto	i1l30000466
	xorlw	3^2
	skipnz
	goto	i1l30000467
	xorlw	4^3
	skipnz
	goto	i1l19
	xorlw	5^4
	skipnz
	goto	i1l30000469
	xorlw	6^5
	skipnz
	goto	i1l30000470
	xorlw	7^6
	skipnz
	goto	i1l30000471
	xorlw	8^7
	skipnz
	goto	i1l23
	xorlw	9^8
	skipnz
	goto	i1l30000473
	xorlw	10^9
	skipnz
	goto	i1l30000474
	xorlw	11^10
	skipnz
	goto	i1l30000475
	xorlw	12^11
	skipnz
	goto	i1l27
	xorlw	13^12
	skipnz
	goto	i1l30000477
	xorlw	14^13
	skipnz
	goto	i1l30000478
	xorlw	15^14
	skipnz
	goto	i1l30000479
	goto	i1l12

i1l30015:
	movf (_scan_no+1),w
	xorlw	0^0
	skipnz
	goto	i1l30016
	goto	i1l12

	
i1l12:	
	return
	opt stack 0
GLOBAL	__end_of_scanner
	__end_of_scanner:
; =============== function _scanner ends ============

psect	text113,local,class=CODE,delta=2
global __ptext113
__ptext113:
	line	180
	signat	_scanner,88
	global	i1_init_timer

; *************** function i1_init_timer *****************
; Defined at:
;		line 80 in file "D:\ABHISHEK JOSHI\PIC\LCD\T8\LCD T8.C"
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
psect	text113
	file	"D:\ABHISHEK JOSHI\PIC\LCD\T8\LCD T8.C"
	line	80
	global	__size_ofi1_init_timer
	__size_ofi1_init_timer	equ	__end_ofi1_init_timer-i1_init_timer
;LCD T8.C: 79: void init_timer()
;LCD T8.C: 80: {
	
i1_init_timer:	
	opt stack 4
; Regs used in i1_init_timer: [wreg]
	line	81
	
i1l30000484:	
;LCD T8.C: 81: TMR1H=0xFC;
	movlw	(0FCh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(15)	;volatile
	line	82
;LCD T8.C: 82: TMR1L=0x18;
	movlw	(018h)
	movwf	(14)	;volatile
	line	83
;LCD T8.C: 83: T1CON=0x01;
	movlw	(01h)
	movwf	(16)	;volatile
	
i1l30000485:	
	line	84
;LCD T8.C: 84: TMR1IE=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1120/8)^080h,(1120)&7
	
i1l30000486:	
	line	85
;LCD T8.C: 85: TMR1IF=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(96/8),(96)&7
	
i1l11:	
	return
	opt stack 0
GLOBAL	__end_ofi1_init_timer
	__end_ofi1_init_timer:
; =============== function i1_init_timer ends ============

psect	text114,local,class=CODE,delta=2
global __ptext114
__ptext114:
	line	86
	signat	i1_init_timer,88
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	end
