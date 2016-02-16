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
	FNCALL	_main,_init_uart
	FNCALL	_main,_init
	FNCALL	_main,_key_release
	FNCALL	_main,_uart_disp
	FNCALL	_uart_disp,_home_screen
	FNCALL	_uart_disp,_tx
	FNCALL	_init,_init_keypad
	FNCALL	_init,_init_timer
	FNCALL	_home_screen,_tx
	FNCALL	_home_screen,_uart_delay
	FNROOT	_main
	FNCALL	_isr_t0,i1_init_timer
	FNCALL	_isr_t0,_buzzer
	FNCALL	_isr_t0,_scanner
	FNCALL	_scanner,_k1
	FNCALL	intlevel1,_isr_t0
	global	intlevel1
	FNROOT	intlevel1
	global	_ascii_tab
	global	_disp
	global	_ds2
	global	_ds3
	global	_ds4
	global	_ds1
	global	_cnt
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"D:\ABHISHEK JOSHI\PIC\UART\UART T9\UART T9.C"
	line	22

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
	line	21

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
	line	23

;initializer for _ds2
	retlw	030h

;initializer for _ds3
	retlw	030h

;initializer for _ds4
	retlw	030h

;initializer for _ds1
psect	idataCOMMON,class=CODE,space=0,delta=2
global __pidataCOMMON
__pidataCOMMON:
	retlw	031h
psect	idataBANK1,class=CODE,space=0,delta=2
global __pidataBANK1
__pidataBANK1:
	line	20

;initializer for _cnt
	retlw	050h
	retlw	052h
	retlw	045h
	retlw	053h
	retlw	053h
	retlw	020h
	retlw	041h
	retlw	04Eh
	retlw	059h
	retlw	020h
	retlw	04Bh
	retlw	045h
	retlw	059h
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
	global	_a
	global	_i
	global	_k
	global	_key_code
	global	_key_ready
	global	_nkp
	global	_start_buzzer
	global	_tb
	global	_cmd_data
	global	_disp_data
	global	_c
	global	_scan_no
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
	file	"UART T9.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_c:
       ds      2

_scan_no:
       ds      2

psect	dataCOMMON,class=COMMON,space=1
global __pdataCOMMON
__pdataCOMMON:
	file	"D:\ABHISHEK JOSHI\PIC\UART\UART T9\UART T9.C"
	line	23
_ds1:
       ds      1

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_a:
       ds      2

_i:
       ds      2

_k:
       ds      2

_key_code:
       ds      2

_key_ready:
       ds      2

_nkp:
       ds      2

_start_buzzer:
       ds      2

_tb:
       ds      2

_cmd_data:
       ds      1

_disp_data:
       ds      1

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"D:\ABHISHEK JOSHI\PIC\UART\UART T9\UART T9.C"
	line	22
_ascii_tab:
       ds      25

psect	dataBANK0
	file	"D:\ABHISHEK JOSHI\PIC\UART\UART T9\UART T9.C"
	line	21
_disp:
       ds      25

psect	dataBANK0
	file	"D:\ABHISHEK JOSHI\PIC\UART\UART T9\UART T9.C"
	line	23
_ds2:
       ds      1

psect	dataBANK0
	file	"D:\ABHISHEK JOSHI\PIC\UART\UART T9\UART T9.C"
	line	23
_ds3:
       ds      1

psect	dataBANK0
	file	"D:\ABHISHEK JOSHI\PIC\UART\UART T9\UART T9.C"
	line	23
_ds4:
       ds      1

psect	dataBANK1,class=BANK1,space=1
global __pdataBANK1
__pdataBANK1:
	file	"D:\ABHISHEK JOSHI\PIC\UART\UART T9\UART T9.C"
	line	20
_cnt:
       ds      25

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

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+012h)
	fcall	clear_ram
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
; Initialize objects allocated to BANK0
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK0
	movlw low(__pdataBANK0+53)
	movwf btemp-1,f
	movlw high(__pidataBANK0)
	movwf btemp,f
	movlw low(__pidataBANK0)
	movwf btemp+1,f
	movlw low(__pdataBANK0)
	movwf fsr,f
	fcall init_ram
; Initialize objects allocated to BANK1
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK1
	movlw low(__pdataBANK1+25)
	movwf btemp-1,f
	movlw high(__pidataBANK1)
	movwf btemp,f
	movlw low(__pidataBANK1)
	movwf btemp+1,f
	movlw low(__pdataBANK1)
	movwf fsr,f
	fcall init_ram
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initationation code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackBANK1,class=BANK1,space=1
global __pcstackBANK1
__pcstackBANK1:
	global	?_scanner
?_scanner: ;@ 0x0
	global	??_isr_t0
??_isr_t0: ;@ 0x0
	global	?_k1
?_k1: ;@ 0x0
	ds	4
	global	?_isr_t0
?_isr_t0: ;@ 0x4
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	??_init_keypad
??_init_keypad: ;@ 0x0
	global	?_init_keypad
?_init_keypad: ;@ 0x0
	global	??_tx
??_tx: ;@ 0x0
	global	??_init_timer
??_init_timer: ;@ 0x0
	global	?_init_timer
?_init_timer: ;@ 0x0
	global	??_init
??_init: ;@ 0x0
	global	??_key_release
??_key_release: ;@ 0x0
	global	?_key_release
?_key_release: ;@ 0x0
	global	??_uart_delay
??_uart_delay: ;@ 0x0
	global	?_init_uart
?_init_uart: ;@ 0x0
	global	?_init
?_init: ;@ 0x0
	global	??_init_uart
??_init_uart: ;@ 0x0
	global	tx@tx_data
tx@tx_data:	; 1 bytes @ 0x0
	ds	1
	global	?_tx
?_tx: ;@ 0x1
	global	??_uart_disp
??_uart_disp: ;@ 0x1
	global	??_main
??_main: ;@ 0x1
	global	??_home_screen
??_home_screen: ;@ 0x1
	global	uart_delay@i
uart_delay@i:	; 2 bytes @ 0x1
	ds	2
	global	uart_delay@j
uart_delay@j:	; 2 bytes @ 0x3
	ds	2
	global	?_uart_disp
?_uart_disp: ;@ 0x5
	global	?_main
?_main: ;@ 0x5
	global	?_home_screen
?_home_screen: ;@ 0x5
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	?_uart_delay
?_uart_delay: ;@ 0x0
	global	uart_delay@del
uart_delay@del:	; 2 bytes @ 0x0
	ds	2
	global	??i1_init_timer
??i1_init_timer: ;@ 0x2
	global	??_k1
??_k1: ;@ 0x2
	global	?i1_init_timer
?i1_init_timer: ;@ 0x2
	global	??_scanner
??_scanner: ;@ 0x2
	global	?_buzzer
?_buzzer: ;@ 0x2
	global	??_buzzer
??_buzzer: ;@ 0x2
	ds	2
;Data sizes: Strings 0, constant 0, data 79, bss 22, persistent 4 stack 0
;Auto spaces:   Size  Autos    Used
; COMMON          14      5      12
; BANK0           80      4      77
; BANK1           80      4      29
; BANK3           96      0       0
; BANK2           96      0       0


;Pointer list with targets:



;Main: autosize = 0, tempsize = 0, incstack = 0, save=0


;Call graph:                      Base Space Used Autos Args Refs Density
;_main                                                0    0  140   0.00
;          _init_uart
;               _init
;        _key_release
;          _uart_disp
;  _uart_disp                                         0    0  140   0.00
;        _home_screen
;                 _tx
;  _key_release                                       0    0    0   0.00
;  _init_uart                                         0    0    0   0.00
;  _init                                              0    0    0   0.00
;        _init_keypad
;         _init_timer
;    _home_screen                                     0    0  124   0.00
;                 _tx
;         _uart_delay
;    _init_keypad                                     0    0    0   0.00
;    _init_timer                                      0    0    0   0.00
;      _uart_delay                                    5    2  108   0.00
;                                    0 COMMO    5
;                                    0 BANK0    2
;      _tx                                            1    0   16   0.00
;                                    0 COMMO    1
; Estimated maximum call depth 3
;_isr_t0                                              4    0    0   0.00
;                                    0 BANK1    4
;       i1_init_timer
;             _buzzer
;            _scanner
;  _scanner                                           2    0    0   0.00
;                                    2 BANK0    2
;                 _k1
;  _buzzer                                            0    0    0   0.00
;  i1_init_timer                                      0    0    0   0.00
;    _k1                                              0    0    0   0.00
; Estimated maximum call depth 2
; Address spaces:

;Name               Size   Autos  Total    Cost      Usage
;BITCOMMON            E      0       0       0        0.0%
;CODE                 0      0       0       0        0.0%
;NULL                 0      0       0       0        0.0%
;COMMON               E      5       C       1       85.7%
;SFR0                 0      0       0       1        0.0%
;BITSFR0              0      0       0       1        0.0%
;BITSFR1              0      0       0       2        0.0%
;SFR1                 0      0       0       2        0.0%
;ABS                  0      0      76       2        0.0%
;STACK                0      0       0       3        0.0%
;BITBANK0            50      0       0       4        0.0%
;SFR3                 0      0       0       4        0.0%
;BITSFR3              0      0       0       4        0.0%
;BANK0               50      4      4D       5       96.3%
;BITSFR2              0      0       0       5        0.0%
;SFR2                 0      0       0       5        0.0%
;BITBANK1            50      0       0       6        0.0%
;BANK1               50      4      1D       7       36.3%
;BITBANK3            60      0       0       8        0.0%
;BANK3               60      0       0       9        0.0%
;BITBANK2            60      0       0      10        0.0%
;BANK2               60      0       0      11        0.0%
;DATA                 0      0      76      12        0.0%
;EEDATA             100      0       0    1000        0.0%

	global	_main
psect	maintext,local,class=CODE,delta=2
global __pmaintext
__pmaintext:

; *************** function _main *****************
; Defined at:
;		line 55 in file "D:\ABHISHEK JOSHI\PIC\UART\UART T9\UART T9.C"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
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
;		_init
;		_key_release
;		_uart_disp
; This function is called by:
;		Startup code after reset
; This function uses a non-reentrant model
; 
psect	maintext
	file	"D:\ABHISHEK JOSHI\PIC\UART\UART T9\UART T9.C"
	line	55
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
;UART T9.C: 54: void main()
;UART T9.C: 55: {
	
_main:	
	opt stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	56
	
l30000605:	
;UART T9.C: 56: TRISB=0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	
l30000606:	
	line	57
;UART T9.C: 57: TRISA=0x3C;
	movlw	(03Ch)
	movwf	(133)^080h	;volatile
	
l30000607:	
	line	58
;UART T9.C: 58: TRISC=0xC0;
	movlw	(0C0h)
	movwf	(135)^080h	;volatile
	
l30000608:	
	line	59
;UART T9.C: 59: ADCON1=0x06;
	movlw	(06h)
	movwf	(159)^080h	;volatile
	
l30000609:	
	line	60
;UART T9.C: 60: init_uart();
	fcall	_init_uart
	
l30000610:	
	line	61
;UART T9.C: 61: init();
	fcall	_init
	
l30000611:	
	line	62
;UART T9.C: 62: GIE=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(95/8),(95)&7
	
l30000612:	
	line	63
;UART T9.C: 63: PEIE=1;
	bsf	(94/8),(94)&7
	
l30000613:	
	line	74
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_key_ready),w
	iorwf	(_key_ready+1),w
	skipz
	goto	u291
	goto	u290
u291:
	goto	l30000613
u290:
	
l30000614:	
	line	75
;UART T9.C: 75: a=key_code;
	movf	(_key_code+1),w
	clrf	(_a+1)
	addwf	(_a+1)
	movf	(_key_code),w
	clrf	(_a)
	addwf	(_a)

	
l30000615:	
	line	76
;UART T9.C: 76: ds1=ascii_tab[a];
	movf	(_a),w
	addlw	(_ascii_tab)&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(_ds1)
	
l30000616:	
	line	77
;UART T9.C: 77: key_release();
	fcall	_key_release
	
l30000617:	
	line	78
;UART T9.C: 78: uart_disp();
	fcall	_uart_disp
	goto	l30000613
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
; =============== function _main ends ============

psect	maintext
	line	80
	signat	_main,88
	global	_uart_disp
psect	text107,local,class=CODE,delta=2
global __ptext107
__ptext107:

; *************** function _uart_disp *****************
; Defined at:
;		line 352 in file "D:\ABHISHEK JOSHI\PIC\UART\UART T9\UART T9.C"
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
;		_home_screen
;		_tx
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text107
	file	"D:\ABHISHEK JOSHI\PIC\UART\UART T9\UART T9.C"
	line	352
	global	__size_of_uart_disp
	__size_of_uart_disp	equ	__end_of_uart_disp-_uart_disp
;UART T9.C: 351: void uart_disp()
;UART T9.C: 352: {
	
_uart_disp:	
	opt stack 4
; Regs used in _uart_disp: [wreg+status,2+status,0+pclath+cstack]
	line	354
	
l30000604:	
;UART T9.C: 354: home_screen();
	fcall	_home_screen
	line	355
;UART T9.C: 355: tx(ds1);
	movf	(_ds1),w
	fcall	_tx
	
l64:	
	return
	opt stack 0
GLOBAL	__end_of_uart_disp
	__end_of_uart_disp:
; =============== function _uart_disp ends ============

psect	text108,local,class=CODE,delta=2
global __ptext108
__ptext108:
	line	357
	signat	_uart_disp,88
	global	_key_release

; *************** function _key_release *****************
; Defined at:
;		line 339 in file "D:\ABHISHEK JOSHI\PIC\UART\UART T9\UART T9.C"
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
psect	text108
	file	"D:\ABHISHEK JOSHI\PIC\UART\UART T9\UART T9.C"
	line	339
	global	__size_of_key_release
	__size_of_key_release	equ	__end_of_key_release-_key_release
;UART T9.C: 338: void key_release()
;UART T9.C: 339: {
	
_key_release:	
	opt stack 4
; Regs used in _key_release: [wreg]
	
l30000562:	
	
l30000563:	
	line	340
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_nkp),w
	iorwf	(_nkp+1),w
	skipz
	goto	u151
	goto	u150
u151:
	goto	l30000563
u150:
	
l30000564:	
	line	341
;UART T9.C: 341: key_ready=0;
	movlw	low(0)
	movwf	(_key_ready)
	movlw	high(0)
	movwf	((_key_ready))+1
	line	342
;UART T9.C: 342: nkp=0;
	movlw	low(0)
	movwf	(_nkp)
	movlw	high(0)
	movwf	((_nkp))+1
	
l58:	
	return
	opt stack 0
GLOBAL	__end_of_key_release
	__end_of_key_release:
; =============== function _key_release ends ============

psect	text109,local,class=CODE,delta=2
global __ptext109
__ptext109:
	line	343
	signat	_key_release,88
	global	_init_uart

; *************** function _init_uart *****************
; Defined at:
;		line 360 in file "D:\ABHISHEK JOSHI\PIC\UART\UART T9\UART T9.C"
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
psect	text109
	file	"D:\ABHISHEK JOSHI\PIC\UART\UART T9\UART T9.C"
	line	360
	global	__size_of_init_uart
	__size_of_init_uart	equ	__end_of_init_uart-_init_uart
;UART T9.C: 359: void init_uart()
;UART T9.C: 360: {
	
_init_uart:	
	opt stack 4
; Regs used in _init_uart: [wreg]
	line	361
	
l30000565:	
;UART T9.C: 361: TXSTA=0x24;
	movlw	(024h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(152)^080h	;volatile
	line	362
;UART T9.C: 362: SPBRG=25;
	movlw	(019h)
	movwf	(153)^080h	;volatile
	
l30000566:	
	line	363
;UART T9.C: 363: SPEN=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(199/8),(199)&7
	
l65:	
	return
	opt stack 0
GLOBAL	__end_of_init_uart
	__end_of_init_uart:
; =============== function _init_uart ends ============

psect	text110,local,class=CODE,delta=2
global __ptext110
__ptext110:
	line	364
	signat	_init_uart,88
	global	_init

; *************** function _init *****************
; Defined at:
;		line 83 in file "D:\ABHISHEK JOSHI\PIC\UART\UART T9\UART T9.C"
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
psect	text110
	file	"D:\ABHISHEK JOSHI\PIC\UART\UART T9\UART T9.C"
	line	83
	global	__size_of_init
	__size_of_init	equ	__end_of_init-_init
;UART T9.C: 82: void init()
;UART T9.C: 83: {
	
_init:	
	opt stack 4
; Regs used in _init: [wreg+status,2+status,0+pclath+cstack]
	line	85
	
l30000567:	
;UART T9.C: 85: init_keypad();
	fcall	_init_keypad
	line	86
;UART T9.C: 86: init_timer();
	fcall	_init_timer
	
l10:	
	return
	opt stack 0
GLOBAL	__end_of_init
	__end_of_init:
; =============== function _init ends ============

psect	text111,local,class=CODE,delta=2
global __ptext111
__ptext111:
	line	87
	signat	_init,88
	global	_home_screen

; *************** function _home_screen *****************
; Defined at:
;		line 379 in file "D:\ABHISHEK JOSHI\PIC\UART\UART T9\UART T9.C"
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
;		_tx
;		_uart_delay
; This function is called by:
;		_uart_disp
; This function uses a non-reentrant model
; 
psect	text111
	file	"D:\ABHISHEK JOSHI\PIC\UART\UART T9\UART T9.C"
	line	379
	global	__size_of_home_screen
	__size_of_home_screen	equ	__end_of_home_screen-_home_screen
;UART T9.C: 378: void home_screen()
;UART T9.C: 379: {
	
_home_screen:	
	opt stack 3
; Regs used in _home_screen: [wreg+status,2+status,0+pclath+cstack]
	line	380
	
l30000603:	
;UART T9.C: 380: tx(0x1b);
	movlw	(01Bh)
	fcall	_tx
	line	381
;UART T9.C: 381: uart_delay(1);
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_uart_delay)
	movlw	high(01h)
	movwf	((?_uart_delay))+1
	fcall	_uart_delay
	line	382
;UART T9.C: 382: tx('[');
	movlw	(05Bh)
	fcall	_tx
	line	383
;UART T9.C: 383: uart_delay(1);
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_uart_delay)
	movlw	high(01h)
	movwf	((?_uart_delay))+1
	fcall	_uart_delay
	line	384
;UART T9.C: 384: tx('H');
	movlw	(048h)
	fcall	_tx
	line	385
;UART T9.C: 385: uart_delay(1);
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_uart_delay)
	movlw	high(01h)
	movwf	((?_uart_delay))+1
	fcall	_uart_delay
	
l67:	
	return
	opt stack 0
GLOBAL	__end_of_home_screen
	__end_of_home_screen:
; =============== function _home_screen ends ============

psect	text112,local,class=CODE,delta=2
global __ptext112
__ptext112:
	line	386
	signat	_home_screen,88
	global	_init_keypad

; *************** function _init_keypad *****************
; Defined at:
;		line 107 in file "D:\ABHISHEK JOSHI\PIC\UART\UART T9\UART T9.C"
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
psect	text112
	file	"D:\ABHISHEK JOSHI\PIC\UART\UART T9\UART T9.C"
	line	107
	global	__size_of_init_keypad
	__size_of_init_keypad	equ	__end_of_init_keypad-_init_keypad
;UART T9.C: 106: void init_keypad()
;UART T9.C: 107: {
	
_init_keypad:	
	opt stack 3
; Regs used in _init_keypad: [wreg]
	line	108
	
l30000569:	
;UART T9.C: 108: RA2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(42/8),(42)&7
	line	109
;UART T9.C: 109: RA3=1;
	bsf	(43/8),(43)&7
	line	110
;UART T9.C: 110: RA4=1;
	bsf	(44/8),(44)&7
	line	111
;UART T9.C: 111: RA5=1;
	bsf	(45/8),(45)&7
	
l30000570:	
	line	112
;UART T9.C: 112: scan_no=0;
	movlw	low(0)
	movwf	(_scan_no)
	movlw	high(0)
	movwf	((_scan_no))+1
	line	113
;UART T9.C: 113: dcount=33;
	movlw	low(021h)
	movwf	(_dcount)
	movlw	high(021h)
	movwf	((_dcount))+1
	line	114
;UART T9.C: 114: krcount=32;
	movlw	low(020h)
	movwf	(_krcount)
	movlw	high(020h)
	movwf	((_krcount))+1
	line	115
;UART T9.C: 115: key_ready=0;
	movlw	low(0)
	movwf	(_key_ready)
	movlw	high(0)
	movwf	((_key_ready))+1
	line	116
;UART T9.C: 116: nkp=0;
	movlw	low(0)
	movwf	(_nkp)
	movlw	high(0)
	movwf	((_nkp))+1
	line	117
;UART T9.C: 117: start_buzzer=0;
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

psect	text113,local,class=CODE,delta=2
global __ptext113
__ptext113:
	line	118
	signat	_init_keypad,88
	global	_init_timer

; *************** function _init_timer *****************
; Defined at:
;		line 90 in file "D:\ABHISHEK JOSHI\PIC\UART\UART T9\UART T9.C"
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
psect	text113
	file	"D:\ABHISHEK JOSHI\PIC\UART\UART T9\UART T9.C"
	line	90
	global	__size_of_init_timer
	__size_of_init_timer	equ	__end_of_init_timer-_init_timer
;UART T9.C: 89: void init_timer()
;UART T9.C: 90: {
	
_init_timer:	
	opt stack 3
; Regs used in _init_timer: [wreg]
	line	91
	
l30000571:	
;UART T9.C: 91: TMR1H=0xFC;
	movlw	(0FCh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(15)	;volatile
	line	92
;UART T9.C: 92: TMR1L=0x18;
	movlw	(018h)
	movwf	(14)	;volatile
	line	93
;UART T9.C: 93: T1CON=0x01;
	movlw	(01h)
	movwf	(16)	;volatile
	
l30000572:	
	line	94
;UART T9.C: 94: TMR1IE=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1120/8)^080h,(1120)&7
	
l30000573:	
	line	95
;UART T9.C: 95: TMR1IF=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(96/8),(96)&7
	
l11:	
	return
	opt stack 0
GLOBAL	__end_of_init_timer
	__end_of_init_timer:
; =============== function _init_timer ends ============

psect	text114,local,class=CODE,delta=2
global __ptext114
__ptext114:
	line	96
	signat	_init_timer,88
	global	_uart_delay

; *************** function _uart_delay *****************
; Defined at:
;		line 396 in file "D:\ABHISHEK JOSHI\PIC\UART\UART T9\UART T9.C"
; Parameters:    Size  Location     Type
;  del             2    0[BANK0 ] unsigned int 
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
;      Locals:         5       2       0       0       0
;      Temp:     1
;      Total:    7
; This function calls:
;		Nothing
; This function is called by:
;		_home_screen
; This function uses a non-reentrant model
; 
psect	text114
	file	"D:\ABHISHEK JOSHI\PIC\UART\UART T9\UART T9.C"
	line	396
	global	__size_of_uart_delay
	__size_of_uart_delay	equ	__end_of_uart_delay-_uart_delay
;UART T9.C: 395: void uart_delay(unsigned int del)
;UART T9.C: 396: {
	
_uart_delay:	
	opt stack 2
; Regs used in _uart_delay: [wreg]
	line	398
	
l30000598:	
;UART T9.C: 397: int j,i;
;UART T9.C: 398: for(i=0;i<=del;i++)
	movlw	low(0)
	movwf	(uart_delay@i)
	movlw	high(0)
	movwf	((uart_delay@i))+1
	goto	l76
	
l30000599:	
	line	399
;UART T9.C: 399: for(j=0;j<=120;j++);
	movlw	low(0)
	movwf	(uart_delay@j)
	movlw	high(0)
	movwf	((uart_delay@j))+1
	
l30000601:	
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
	goto	u275
	movlw	low(079h)
	subwf	(uart_delay@j),w
u275:

	skipc
	goto	u271
	goto	u270
u271:
	goto	l30000601
u270:
	
l30000602:	
	line	398
	movlw	low(01h)
	addwf	(uart_delay@i),f
	skipnc
	incf	(uart_delay@i+1),f
	movlw	high(01h)
	addwf	(uart_delay@i+1),f
	
l76:	
	movf	(uart_delay@i+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(uart_delay@del+1),w
	skipz
	goto	u285
	movf	(uart_delay@i),w
	subwf	(uart_delay@del),w
u285:
	skipnc
	goto	u281
	goto	u280
u281:
	goto	l30000599
u280:
	
l72:	
	return
	opt stack 0
GLOBAL	__end_of_uart_delay
	__end_of_uart_delay:
; =============== function _uart_delay ends ============

psect	text115,local,class=CODE,delta=2
global __ptext115
__ptext115:
	line	401
	signat	_uart_delay,4216
	global	_tx

; *************** function _tx *****************
; Defined at:
;		line 389 in file "D:\ABHISHEK JOSHI\PIC\UART\UART T9\UART T9.C"
; Parameters:    Size  Location     Type
;  tx_data         1    wreg     unsigned char 
; Auto vars:     Size  Location     Type
;  tx_data         1    0[COMMON] unsigned char 
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
;		_uart_disp
;		_home_screen
; This function uses a non-reentrant model
; 
psect	text115
	file	"D:\ABHISHEK JOSHI\PIC\UART\UART T9\UART T9.C"
	line	389
	global	__size_of_tx
	__size_of_tx	equ	__end_of_tx-_tx
;UART T9.C: 388: void tx(unsigned char tx_data)
;UART T9.C: 389: {
	
_tx:	
	opt stack 2
; Regs used in _tx: [wreg]
;tx@tx_data stored from wreg
	movwf	(tx@tx_data)
	
l30000579:	
	
l69:	
	line	390
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7
	goto	u181
	goto	u180
u181:
	goto	l69
u180:
	
l30000580:	
	line	391
;UART T9.C: 391: TXREG=tx_data;
	movf	(tx@tx_data),w
	movwf	(25)	;volatile
	
l30000581:	
	line	392
;UART T9.C: 392: TXIF=0;
	bcf	(100/8),(100)&7
	
l68:	
	return
	opt stack 0
GLOBAL	__end_of_tx
	__end_of_tx:
; =============== function _tx ends ============

psect	text116,local,class=CODE,delta=2
global __ptext116
__ptext116:
	line	393
	signat	_tx,4216
	global	_isr_t0

; *************** function _isr_t0 *****************
; Defined at:
;		line 48 in file "D:\ABHISHEK JOSHI\PIC\UART\UART T9\UART T9.C"
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
;      Locals:         0       0       4       0       0
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
psect	text116
	file	"D:\ABHISHEK JOSHI\PIC\UART\UART T9\UART T9.C"
	line	48
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
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_isr_t0+0)^080h
	movf	fsr0,w
	movwf	(??_isr_t0+1)^080h
	movf	pclath,w
	movwf	(??_isr_t0+2)^080h
	movf	btemp+0,w
	movwf	(??_isr_t0+3)^080h
	ljmp	_isr_t0
psect	text116
	line	49
	
i1l30000683:	
;UART T9.C: 49: init_timer();
	fcall	i1_init_timer
	line	50
;UART T9.C: 50: buzzer();
	fcall	_buzzer
	
i1l30000684:	
	line	51
;UART T9.C: 51: scanner();
	fcall	_scanner
	
i1l2:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(??_isr_t0+3)^080h,w
	movwf	btemp+0
	movf	(??_isr_t0+2)^080h,w
	movwf	pclath
	movf	(??_isr_t0+1)^080h,w
	movwf	fsr0
	movf	(??_isr_t0+0)^080h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_isr_t0
	__end_of_isr_t0:
; =============== function _isr_t0 ends ============

psect	text117,local,class=CODE,delta=2
global __ptext117
__ptext117:
	line	52
	signat	_isr_t0,88
	global	_scanner

; *************** function _scanner *****************
; Defined at:
;		line 121 in file "D:\ABHISHEK JOSHI\PIC\UART\UART T9\UART T9.C"
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
;      Locals:         0       2       0       0       0
;      Temp:     2
;      Total:    2
; This function calls:
;		_k1
; This function is called by:
;		_isr_t0
; This function uses a non-reentrant model
; 
psect	text117
	file	"D:\ABHISHEK JOSHI\PIC\UART\UART T9\UART T9.C"
	line	121
	global	__size_of_scanner
	__size_of_scanner	equ	__end_of_scanner-_scanner
;UART T9.C: 120: void scanner()
;UART T9.C: 121: {
	
_scanner:	
	opt stack 4
; Regs used in _scanner: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	
i1l30000632:	
	goto	i1l30000682
	
i1l17:	
	line	125
;UART T9.C: 125: RA1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(41/8),(41)&7
	line	126
;UART T9.C: 126: RC0=1;
	bsf	(56/8),(56)&7
	line	127
;UART T9.C: 127: RC1=1;
	bsf	(57/8),(57)&7
	line	128
;UART T9.C: 128: RC2=1;
	bsf	(58/8),(58)&7
	
i1l30000633:	
	line	130
;UART T9.C: 130: c=RA2;
	clrc
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
	
i1l30000634:	
	line	131
;UART T9.C: 131: k1();
	fcall	_k1
	
i1l30000635:	
	line	132
;UART T9.C: 132: scan_no=1;
	movlw	low(01h)
	movwf	(_scan_no)
	movlw	high(01h)
	movwf	((_scan_no))+1
	goto	i1l14
	
i1l30000636:	
	line	136
;UART T9.C: 136: c=RA3;
	clrc
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	
i1l30000637:	
	line	137
;UART T9.C: 137: k1();
	fcall	_k1
	
i1l30000638:	
	line	138
;UART T9.C: 138: scan_no=2;
	movlw	low(02h)
	movwf	(_scan_no)
	movlw	high(02h)
	movwf	((_scan_no))+1
	goto	i1l14
	
i1l30000639:	
	line	142
;UART T9.C: 142: c=RA4;
	clrc
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	
i1l30000640:	
	line	143
;UART T9.C: 143: k1();
	fcall	_k1
	
i1l30000641:	
	line	144
;UART T9.C: 144: scan_no=3;
	movlw	low(03h)
	movwf	(_scan_no)
	movlw	high(03h)
	movwf	((_scan_no))+1
	goto	i1l14
	
i1l30000642:	
	line	149
;UART T9.C: 149: c=RA5;
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
	
i1l30000643:	
	line	150
;UART T9.C: 150: k1();
	fcall	_k1
	
i1l30000644:	
	line	151
;UART T9.C: 151: scan_no=4;
	movlw	low(04h)
	movwf	(_scan_no)
	movlw	high(04h)
	movwf	((_scan_no))+1
	goto	i1l14
	
i1l21:	
	line	155
;UART T9.C: 155: RA1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(41/8),(41)&7
	line	156
;UART T9.C: 156: RC0=0;
	bcf	(56/8),(56)&7
	line	157
;UART T9.C: 157: RC1=1;
	bsf	(57/8),(57)&7
	line	158
;UART T9.C: 158: RC2=1;
	bsf	(58/8),(58)&7
	
i1l30000645:	
	line	160
;UART T9.C: 160: c=RA2;
	clrc
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
	
i1l30000646:	
	line	161
;UART T9.C: 161: k1();
	fcall	_k1
	
i1l30000647:	
	line	162
;UART T9.C: 162: scan_no=5;
	movlw	low(05h)
	movwf	(_scan_no)
	movlw	high(05h)
	movwf	((_scan_no))+1
	goto	i1l14
	
i1l30000648:	
	line	166
;UART T9.C: 166: c=RA3;
	clrc
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	
i1l30000649:	
	line	167
;UART T9.C: 167: k1();
	fcall	_k1
	
i1l30000650:	
	line	168
;UART T9.C: 168: scan_no=6;
	movlw	low(06h)
	movwf	(_scan_no)
	movlw	high(06h)
	movwf	((_scan_no))+1
	goto	i1l14
	
i1l30000651:	
	line	172
;UART T9.C: 172: c=RA4;
	clrc
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	
i1l30000652:	
	line	173
;UART T9.C: 173: k1();
	fcall	_k1
	
i1l30000653:	
	line	174
;UART T9.C: 174: scan_no=7;
	movlw	low(07h)
	movwf	(_scan_no)
	movlw	high(07h)
	movwf	((_scan_no))+1
	goto	i1l14
	
i1l30000654:	
	line	179
;UART T9.C: 179: c=RA5;
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
	
i1l30000655:	
	line	180
;UART T9.C: 180: k1();
	fcall	_k1
	
i1l30000656:	
	line	181
;UART T9.C: 181: scan_no=8;
	movlw	low(08h)
	movwf	(_scan_no)
	movlw	high(08h)
	movwf	((_scan_no))+1
	goto	i1l14
	
i1l25:	
	line	185
;UART T9.C: 185: RA1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(41/8),(41)&7
	line	186
;UART T9.C: 186: RC0=1;
	bsf	(56/8),(56)&7
	line	187
;UART T9.C: 187: RC1=0;
	bcf	(57/8),(57)&7
	line	188
;UART T9.C: 188: RC2=1;
	bsf	(58/8),(58)&7
	
i1l30000657:	
	line	190
;UART T9.C: 190: c=RA2;
	clrc
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
	
i1l30000658:	
	line	191
;UART T9.C: 191: k1();
	fcall	_k1
	
i1l30000659:	
	line	192
;UART T9.C: 192: scan_no=9;
	movlw	low(09h)
	movwf	(_scan_no)
	movlw	high(09h)
	movwf	((_scan_no))+1
	goto	i1l14
	
i1l30000660:	
	line	196
;UART T9.C: 196: c=RA3;
	clrc
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	
i1l30000661:	
	line	197
;UART T9.C: 197: k1();
	fcall	_k1
	
i1l30000662:	
	line	198
;UART T9.C: 198: scan_no=10;
	movlw	low(0Ah)
	movwf	(_scan_no)
	movlw	high(0Ah)
	movwf	((_scan_no))+1
	goto	i1l14
	
i1l30000663:	
	line	202
;UART T9.C: 202: c=RA4;
	clrc
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	
i1l30000664:	
	line	203
;UART T9.C: 203: k1();
	fcall	_k1
	
i1l30000665:	
	line	204
;UART T9.C: 204: scan_no=11;
	movlw	low(0Bh)
	movwf	(_scan_no)
	movlw	high(0Bh)
	movwf	((_scan_no))+1
	goto	i1l14
	
i1l30000666:	
	line	209
;UART T9.C: 209: c=RA5;
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
	
i1l30000667:	
	line	210
;UART T9.C: 210: k1();
	fcall	_k1
	
i1l30000668:	
	line	211
;UART T9.C: 211: scan_no=12;
	movlw	low(0Ch)
	movwf	(_scan_no)
	movlw	high(0Ch)
	movwf	((_scan_no))+1
	goto	i1l14
	
i1l29:	
	line	215
;UART T9.C: 215: RA1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(41/8),(41)&7
	line	216
;UART T9.C: 216: RC0=1;
	bsf	(56/8),(56)&7
	line	217
;UART T9.C: 217: RC1=1;
	bsf	(57/8),(57)&7
	line	218
;UART T9.C: 218: RC2=0;
	bcf	(58/8),(58)&7
	
i1l30000669:	
	line	220
;UART T9.C: 220: c=RA2;
	clrc
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
	
i1l30000670:	
	line	221
;UART T9.C: 221: k1();
	fcall	_k1
	
i1l30000671:	
	line	222
;UART T9.C: 222: scan_no=13;
	movlw	low(0Dh)
	movwf	(_scan_no)
	movlw	high(0Dh)
	movwf	((_scan_no))+1
	goto	i1l14
	
i1l30000672:	
	line	226
;UART T9.C: 226: c=RA3;
	clrc
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	
i1l30000673:	
	line	227
;UART T9.C: 227: k1();
	fcall	_k1
	
i1l30000674:	
	line	228
;UART T9.C: 228: scan_no=14;
	movlw	low(0Eh)
	movwf	(_scan_no)
	movlw	high(0Eh)
	movwf	((_scan_no))+1
	goto	i1l14
	
i1l30000675:	
	line	232
;UART T9.C: 232: c=RA4;
	clrc
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	
i1l30000676:	
	line	233
;UART T9.C: 233: k1();
	fcall	_k1
	
i1l30000677:	
	line	234
;UART T9.C: 234: scan_no=15;
	movlw	low(0Fh)
	movwf	(_scan_no)
	movlw	high(0Fh)
	movwf	((_scan_no))+1
	goto	i1l14
	
i1l30000678:	
	line	238
;UART T9.C: 238: c=RA5;
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
	
i1l30000679:	
	line	239
;UART T9.C: 239: k1();
	fcall	_k1
	
i1l30000680:	
	line	241
;UART T9.C: 241: scan_no=0;
	movlw	low(0)
	movwf	(_scan_no)
	movlw	high(0)
	movwf	((_scan_no))+1
	goto	i1l14
	
i1l30000682:	
	line	122
		goto	i1l30013
i1l30014:
	movf (_scan_no),w
	xorlw	0^0
	skipnz
	goto	i1l17
	xorlw	1^0
	skipnz
	goto	i1l30000636
	xorlw	2^1
	skipnz
	goto	i1l30000639
	xorlw	3^2
	skipnz
	goto	i1l30000642
	xorlw	4^3
	skipnz
	goto	i1l21
	xorlw	5^4
	skipnz
	goto	i1l30000648
	xorlw	6^5
	skipnz
	goto	i1l30000651
	xorlw	7^6
	skipnz
	goto	i1l30000654
	xorlw	8^7
	skipnz
	goto	i1l25
	xorlw	9^8
	skipnz
	goto	i1l30000660
	xorlw	10^9
	skipnz
	goto	i1l30000663
	xorlw	11^10
	skipnz
	goto	i1l30000666
	xorlw	12^11
	skipnz
	goto	i1l29
	xorlw	13^12
	skipnz
	goto	i1l30000672
	xorlw	14^13
	skipnz
	goto	i1l30000675
	xorlw	15^14
	skipnz
	goto	i1l30000678
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

psect	text118,local,class=CODE,delta=2
global __ptext118
__ptext118:
	line	244
	signat	_scanner,88
	global	_buzzer

; *************** function _buzzer *****************
; Defined at:
;		line 346 in file "D:\ABHISHEK JOSHI\PIC\UART\UART T9\UART T9.C"
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
psect	text118
	file	"D:\ABHISHEK JOSHI\PIC\UART\UART T9\UART T9.C"
	line	346
	global	__size_of_buzzer
	__size_of_buzzer	equ	__end_of_buzzer-_buzzer
;UART T9.C: 345: void buzzer()
;UART T9.C: 346: {
	
_buzzer:	
	opt stack 4
; Regs used in _buzzer: [wreg]
	line	347
	
i1l30000685:	
;UART T9.C: 347: if(start_buzzer==1)
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_start_buzzer),w
	iorwf	(_start_buzzer+1),w
	skipz
	goto	u37_21
	goto	u37_20
u37_21:
	goto	i1l62
u37_20:
	
i1l30000686:	
	line	348
;UART T9.C: 348: RC5=~RC5;
	movlw	1<<((61)&7)
	xorwf	((61)/8),f
	
i1l62:	
	return
	opt stack 0
GLOBAL	__end_of_buzzer
	__end_of_buzzer:
; =============== function _buzzer ends ============

psect	text119,local,class=CODE,delta=2
global __ptext119
__ptext119:
	line	349
	signat	_buzzer,88
	global	i1_init_timer

; *************** function i1_init_timer *****************
; Defined at:
;		line 90 in file "D:\ABHISHEK JOSHI\PIC\UART\UART T9\UART T9.C"
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
psect	text119
	file	"D:\ABHISHEK JOSHI\PIC\UART\UART T9\UART T9.C"
	line	90
	global	__size_ofi1_init_timer
	__size_ofi1_init_timer	equ	__end_ofi1_init_timer-i1_init_timer
;UART T9.C: 89: void init_timer()
;UART T9.C: 90: {
	
i1_init_timer:	
	opt stack 4
; Regs used in i1_init_timer: [wreg]
	line	91
	
i1l30000687:	
;UART T9.C: 91: TMR1H=0xFC;
	movlw	(0FCh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(15)	;volatile
	line	92
;UART T9.C: 92: TMR1L=0x18;
	movlw	(018h)
	movwf	(14)	;volatile
	line	93
;UART T9.C: 93: T1CON=0x01;
	movlw	(01h)
	movwf	(16)	;volatile
	
i1l30000688:	
	line	94
;UART T9.C: 94: TMR1IE=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1120/8)^080h,(1120)&7
	
i1l30000689:	
	line	95
;UART T9.C: 95: TMR1IF=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(96/8),(96)&7
	
i1l11:	
	return
	opt stack 0
GLOBAL	__end_ofi1_init_timer
	__end_ofi1_init_timer:
; =============== function i1_init_timer ends ============

psect	text120,local,class=CODE,delta=2
global __ptext120
__ptext120:
	line	96
	signat	i1_init_timer,88
	global	_k1

; *************** function _k1 *****************
; Defined at:
;		line 247 in file "D:\ABHISHEK JOSHI\PIC\UART\UART T9\UART T9.C"
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
psect	text120
	file	"D:\ABHISHEK JOSHI\PIC\UART\UART T9\UART T9.C"
	line	247
	global	__size_of_k1
	__size_of_k1	equ	__end_of_k1-_k1
;UART T9.C: 246: void k1()
;UART T9.C: 247: {
	
_k1:	
	opt stack 3
; Regs used in _k1: [wreg+status,2+status,0]
	line	248
	
i1l30000618:	
;UART T9.C: 248: if(key_ready==1)
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_key_ready),w
	iorwf	(_key_ready+1),w
	skipz
	goto	u30_21
	goto	u30_20
u30_21:
	goto	i1l30000624
u30_20:
	
i1l30000619:	
	line	250
;UART T9.C: 249: {
;UART T9.C: 250: if(c==0)
	movf	((_c+1)),w
	iorwf	((_c)),w
	skipz
	goto	u31_21
	goto	u31_20
u31_21:
	goto	i1l30000621
u31_20:
	
i1l30000620:	
	line	252
;UART T9.C: 251: {
;UART T9.C: 252: krcount=32;
	movlw	low(020h)
	movwf	(_krcount)
	movlw	high(020h)
	movwf	((_krcount))+1
	goto	i1l33
	
i1l30000621:	
	line	256
;UART T9.C: 254: else
;UART T9.C: 255: {
;UART T9.C: 256: krcount=krcount-1;
	movf	(_krcount),w
	addlw	low(-1)
	movwf	(_krcount)
	movf	(_krcount+1),w
	skipnc
	addlw	1
	addlw	high(-1)
	movwf	1+(_krcount)
	
i1l30000622:	
	line	258
;UART T9.C: 258: if(krcount==0)
	movf	((_krcount+1)),w
	iorwf	((_krcount)),w
	skipz
	goto	u32_21
	goto	u32_20
u32_21:
	goto	i1l33
u32_20:
	
i1l30000623:	
	line	260
;UART T9.C: 259: {
;UART T9.C: 260: nkp=1;
	movlw	low(01h)
	movwf	(_nkp)
	movlw	high(01h)
	movwf	((_nkp))+1
	line	261
;UART T9.C: 261: start_buzzer=0;
	movlw	low(0)
	movwf	(_start_buzzer)
	movlw	high(0)
	movwf	((_start_buzzer))+1
	line	262
;UART T9.C: 262: krcount=32;
	movlw	low(020h)
	movwf	(_krcount)
	movlw	high(020h)
	movwf	((_krcount))+1
	goto	i1l33
	
i1l30000624:	
	line	266
;UART T9.C: 266: else if(dcount==33)
	movlw	021h
	xorwf	(_dcount),w
	iorwf	(_dcount+1),w
	skipz
	goto	u33_21
	goto	u33_20
u33_21:
	goto	i1l30000627
u33_20:
	
i1l30000625:	
	line	268
;UART T9.C: 267: {
;UART T9.C: 268: if(c==0)
	movf	((_c+1)),w
	iorwf	((_c)),w
	skipz
	goto	u34_21
	goto	u34_20
u34_21:
	goto	i1l33
u34_20:
	
i1l30000626:	
	line	270
;UART T9.C: 269: {
;UART T9.C: 270: dcount=dcount-1;
	movf	(_dcount),w
	addlw	low(-1)
	movwf	(_dcount)
	movf	(_dcount+1),w
	skipnc
	addlw	1
	addlw	high(-1)
	movwf	1+(_dcount)
	line	271
;UART T9.C: 271: key_code=scan_no;
	movf	(_scan_no+1),w
	clrf	(_key_code+1)
	addwf	(_key_code+1)
	movf	(_scan_no),w
	clrf	(_key_code)
	addwf	(_key_code)

	goto	i1l33
	
i1l30000627:	
	line	278
;UART T9.C: 276: else
;UART T9.C: 277: {
;UART T9.C: 278: dcount=dcount-1;
	movf	(_dcount),w
	addlw	low(-1)
	movwf	(_dcount)
	movf	(_dcount+1),w
	skipnc
	addlw	1
	addlw	high(-1)
	movwf	1+(_dcount)
	
i1l30000628:	
	line	279
;UART T9.C: 279: if(dcount==0)
	movf	((_dcount+1)),w
	iorwf	((_dcount)),w
	skipz
	goto	u35_21
	goto	u35_20
u35_21:
	goto	i1l33
u35_20:
	
i1l30000629:	
	line	281
;UART T9.C: 280: {
;UART T9.C: 281: if(c==0)
	movf	((_c+1)),w
	iorwf	((_c)),w
	skipz
	goto	u36_21
	goto	u36_20
u36_21:
	goto	i1l30000631
u36_20:
	
i1l30000630:	
	line	283
;UART T9.C: 282: {
;UART T9.C: 283: key_ready=1;
	movlw	low(01h)
	movwf	(_key_ready)
	movlw	high(01h)
	movwf	((_key_ready))+1
	line	284
;UART T9.C: 284: start_buzzer=1;
	movlw	low(01h)
	movwf	(_start_buzzer)
	movlw	high(01h)
	movwf	((_start_buzzer))+1
	line	285
;UART T9.C: 285: dcount=33;
	movlw	low(021h)
	movwf	(_dcount)
	movlw	high(021h)
	movwf	((_dcount))+1
	goto	i1l33
	
i1l30000631:	
	line	287
;UART T9.C: 287: else dcount=33;
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

psect	text121,local,class=CODE,delta=2
global __ptext121
__ptext121:
	line	291
	signat	_k1,88
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	end
