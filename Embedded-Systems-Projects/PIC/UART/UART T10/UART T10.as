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
;COMMON:	_main->_get_key
	FNCALL	_main,_init_uart
	FNCALL	_main,_init
	FNCALL	_main,_get_key
	FNCALL	_main,_keyprocess
	FNCALL	_keyprocess,_process_a
	FNCALL	_keyprocess,_process_b
	FNCALL	_keyprocess,_process_c
	FNCALL	_keyprocess,_key_release
	FNCALL	_get_key,_uart_disp
	FNCALL	_init,_init_keypad
	FNCALL	_init,_init_timer
	FNCALL	_init,_init_delay_1sec
	FNCALL	_uart_disp,_home_screen
	FNCALL	_uart_disp,_tx
	FNCALL	_home_screen,_tx
	FNCALL	_home_screen,_uart_delay
	FNROOT	_main
	FNCALL	_isr_t0,i1_init_timer
	FNCALL	_isr_t0,_delay_1sec
	FNCALL	_isr_t0,_scanner
	FNCALL	_isr_t0,_incrementd
	FNCALL	_scanner,_k1
	FNCALL	intlevel1,_isr_t0
	global	intlevel1
	FNROOT	intlevel1
	global	_ascii_tab
	global	_cnt
	global	_ds1
	global	_ds2
	global	_ds3
	global	_ds4
	global	_disp
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"D:\ABHISHEK JOSHI\PIC\UART\UART T10\UART T10.C"
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
	line	20

;initializer for _cnt
	retlw	053h
	retlw	054h
	retlw	04Fh
	retlw	050h
	retlw	057h
	retlw	041h
	retlw	054h
	retlw	043h
	retlw	048h
	retlw	0
psect	idataCOMMON,class=CODE,space=0,delta=2
global __pidataCOMMON
__pidataCOMMON:
	line	23

;initializer for _ds1
	retlw	030h

;initializer for _ds2
	retlw	030h

;initializer for _ds3
	retlw	030h

;initializer for _ds4
	retlw	030h
psect	idataBANK1,class=CODE,space=0,delta=2
global __pidataBANK1
__pidataBANK1:
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
	global	_a
	global	_c
	global	_i
	global	_k
	global	_key_code
	global	_key_ready
	global	_nkp
	global	_scan_no
	global	_start_buzzer
	global	_start_sw
	global	_tb
	global	_cmd_data
	global	_disp_data
	global	_cnt_1sh
psect	nvBANK0,class=BANK0,space=1
global __pnvBANK0
__pnvBANK0:
_cnt_1sh:
       ds      2

	global	_cnt_1sl
_cnt_1sl:
       ds      2

	global	_dcount
_dcount:
       ds      2

	global	_krcount
_krcount:
       ds      2

	global	_s1_over
_s1_over:
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
	file	"UART T10.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_disp_data:
       ds      1

psect	dataCOMMON,class=COMMON,space=1
global __pdataCOMMON
__pdataCOMMON:
	file	"D:\ABHISHEK JOSHI\PIC\UART\UART T10\UART T10.C"
	line	23
_ds1:
       ds      1

psect	dataCOMMON
	file	"D:\ABHISHEK JOSHI\PIC\UART\UART T10\UART T10.C"
	line	23
_ds2:
       ds      1

psect	dataCOMMON
	file	"D:\ABHISHEK JOSHI\PIC\UART\UART T10\UART T10.C"
	line	23
_ds3:
       ds      1

psect	dataCOMMON
	file	"D:\ABHISHEK JOSHI\PIC\UART\UART T10\UART T10.C"
	line	23
_ds4:
       ds      1

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_a:
       ds      2

_c:
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

_scan_no:
       ds      2

_start_buzzer:
       ds      2

_start_sw:
       ds      2

_tb:
       ds      2

_cmd_data:
       ds      1

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"D:\ABHISHEK JOSHI\PIC\UART\UART T10\UART T10.C"
	line	22
_ascii_tab:
       ds      25

psect	dataBANK0
	file	"D:\ABHISHEK JOSHI\PIC\UART\UART T10\UART T10.C"
	line	20
_cnt:
       ds      10

psect	dataBANK1,class=BANK1,space=1
global __pdataBANK1
__pdataBANK1:
	file	"D:\ABHISHEK JOSHI\PIC\UART\UART T10\UART T10.C"
	line	21
_disp:
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
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+017h)
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
	movlw low(__pdataBANK0+35)
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
	global	??_isr_t0
??_isr_t0: ;@ 0x0
	ds	4
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	??_process_b
??_process_b: ;@ 0x0
	global	?_init_delay_1sec
?_init_delay_1sec: ;@ 0x0
	global	??_init_delay_1sec
??_init_delay_1sec: ;@ 0x0
	global	?_process_c
?_process_c: ;@ 0x0
	global	??_process_c
??_process_c: ;@ 0x0
	global	?_process_b
?_process_b: ;@ 0x0
	global	??_init_keypad
??_init_keypad: ;@ 0x0
	global	??_tx
??_tx: ;@ 0x0
	global	??_uart_delay
??_uart_delay: ;@ 0x0
	global	?_init_timer
?_init_timer: ;@ 0x0
	global	??_init_timer
??_init_timer: ;@ 0x0
	global	?_init_keypad
?_init_keypad: ;@ 0x0
	global	??_key_release
??_key_release: ;@ 0x0
	global	?_init_uart
?_init_uart: ;@ 0x0
	global	??_init_uart
??_init_uart: ;@ 0x0
	global	?_keyprocess
?_keyprocess: ;@ 0x0
	global	??_keyprocess
??_keyprocess: ;@ 0x0
	global	?_init
?_init: ;@ 0x0
	global	??_process_a
??_process_a: ;@ 0x0
	global	?_key_release
?_key_release: ;@ 0x0
	global	?_process_a
?_process_a: ;@ 0x0
	global	??_init
??_init: ;@ 0x0
	global	tx@tx_data
tx@tx_data:	; 1 bytes @ 0x0
	ds	1
	global	?_tx
?_tx: ;@ 0x1
	global	??_home_screen
??_home_screen: ;@ 0x1
	global	?_uart_delay
?_uart_delay: ;@ 0x1
	global	??_uart_disp
??_uart_disp: ;@ 0x1
	global	uart_delay@del
uart_delay@del:	; 2 bytes @ 0x1
	ds	2
	global	??_get_key
??_get_key: ;@ 0x3
	global	??_main
??_main: ;@ 0x3
	global	?_home_screen
?_home_screen: ;@ 0x3
	global	?_uart_disp
?_uart_disp: ;@ 0x3
	ds	2
	global	?_main
?_main: ;@ 0x5
	global	?_get_key
?_get_key: ;@ 0x5
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	uart_delay@i
uart_delay@i:	; 2 bytes @ 0x0
	ds	2
	global	uart_delay@j
uart_delay@j:	; 2 bytes @ 0x2
	ds	2
	global	??i1_init_timer
??i1_init_timer: ;@ 0x4
	global	?i1_init_timer
?i1_init_timer: ;@ 0x4
	global	??_delay_1sec
??_delay_1sec: ;@ 0x4
	global	?_delay_1sec
?_delay_1sec: ;@ 0x4
	global	??_incrementd
??_incrementd: ;@ 0x4
	global	?_k1
?_k1: ;@ 0x4
	global	??_k1
??_k1: ;@ 0x4
	global	?_incrementd
?_incrementd: ;@ 0x4
	global	??_scanner
??_scanner: ;@ 0x4
	ds	2
	global	?_isr_t0
?_isr_t0: ;@ 0x6
	global	?_scanner
?_scanner: ;@ 0x6
;Data sizes: Strings 0, constant 0, data 64, bss 24, persistent 10 stack 0
;Auto spaces:   Size  Autos    Used
; COMMON          14      5      10
; BANK0           80      6      74
; BANK1           80      4      29
; BANK3           96      0       0
; BANK2           96      0       0


;Pointer list with targets:



;Main: autosize = 0, tempsize = 0, incstack = 0, save=0


;Call graph:                      Base Space Used Autos Args Refs Density
;_main                                                0    0  140   0.00
;          _init_uart
;               _init
;            _get_key
;         _keyprocess
;  _keyprocess                                        0    0    0   0.00
;          _process_a
;          _process_b
;          _process_c
;        _key_release
;  _get_key                                           2    0  140   0.00
;                                    3 COMMO    2
;          _uart_disp
;  _init_uart                                         0    0    0   0.00
;  _init                                              0    0    0   0.00
;        _init_keypad
;         _init_timer
;    _init_delay_1sec
;    _process_a                                       0    0    0   0.00
;    _key_release                                     0    0    0   0.00
;    _process_c                                       0    0    0   0.00
;    _process_b                                       0    0    0   0.00
;    _init_delay_1sec                                 0    0    0   0.00
;    _init_timer                                      0    0    0   0.00
;    _init_keypad                                     0    0    0   0.00
;    _uart_disp                                       0    0  140   0.00
;        _home_screen
;                 _tx
;      _home_screen                                   0    0  124   0.00
;                 _tx
;         _uart_delay
;        _tx                                          1    0   16   0.00
;                                    0 COMMO    1
;        _uart_delay                                  5    2  108   0.00
;                                    0 COMMO    3
;                                    0 BANK0    4
; Estimated maximum call depth 4
;_isr_t0                                              4    0    0   0.00
;                                    0 BANK1    4
;       i1_init_timer
;         _delay_1sec
;            _scanner
;         _incrementd
;  _scanner                                           2    0    0   0.00
;                                    4 BANK0    2
;                 _k1
;  _incrementd                                        0    0    0   0.00
;  i1_init_timer                                      0    0    0   0.00
;  _delay_1sec                                        0    0    0   0.00
;    _k1                                              0    0    0   0.00
; Estimated maximum call depth 2
; Address spaces:

;Name               Size   Autos  Total    Cost      Usage
;BITCOMMON            E      0       0       0        0.0%
;CODE                 0      0       0       0        0.0%
;NULL                 0      0       0       0        0.0%
;COMMON               E      5       A       1       71.4%
;SFR0                 0      0       0       1        0.0%
;BITSFR0              0      0       0       1        0.0%
;BITSFR1              0      0       0       2        0.0%
;SFR1                 0      0       0       2        0.0%
;ABS                  0      0      71       2        0.0%
;STACK                0      0       0       3        0.0%
;BITBANK0            50      0       0       4        0.0%
;SFR3                 0      0       0       4        0.0%
;BITSFR3              0      0       0       4        0.0%
;BANK0               50      6      4A       5       92.5%
;BITSFR2              0      0       0       5        0.0%
;SFR2                 0      0       0       5        0.0%
;BITBANK1            50      0       0       6        0.0%
;BANK1               50      4      1D       7       36.3%
;BITBANK3            60      0       0       8        0.0%
;BANK3               60      0       0       9        0.0%
;BITBANK2            60      0       0      10        0.0%
;BANK2               60      0       0      11        0.0%
;DATA                 0      0      71      12        0.0%
;EEDATA             100      0       0    1000        0.0%

	global	_main
psect	maintext,local,class=CODE,delta=2
global __pmaintext
__pmaintext:

; *************** function _main *****************
; Defined at:
;		line 69 in file "D:\ABHISHEK JOSHI\PIC\UART\UART T10\UART T10.C"
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
;		_get_key
;		_keyprocess
; This function is called by:
;		Startup code after reset
; This function uses a non-reentrant model
; 
psect	maintext
	file	"D:\ABHISHEK JOSHI\PIC\UART\UART T10\UART T10.C"
	line	69
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
;UART T10.C: 68: void main()
;UART T10.C: 69: {
	
_main:	
	opt stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	70
	
l30000698:	
;UART T10.C: 70: TRISB=0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	
l30000699:	
	line	71
;UART T10.C: 71: TRISA=0x3C;
	movlw	(03Ch)
	movwf	(133)^080h	;volatile
	
l30000700:	
	line	72
;UART T10.C: 72: TRISC=0xC0;
	movlw	(0C0h)
	movwf	(135)^080h	;volatile
	
l30000701:	
	line	73
;UART T10.C: 73: ADCON1=0x06;
	movlw	(06h)
	movwf	(159)^080h	;volatile
	
l30000702:	
	line	74
;UART T10.C: 74: init_uart();
	fcall	_init_uart
	
l30000703:	
	line	75
;UART T10.C: 75: start_sw=0;
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_start_sw)
	movlw	high(0)
	movwf	((_start_sw))+1
	
l30000704:	
	line	76
;UART T10.C: 76: init();
	fcall	_init
	
l30000705:	
	line	77
;UART T10.C: 77: GIE=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(95/8),(95)&7
	
l30000706:	
	line	78
;UART T10.C: 78: PEIE=1;
	bsf	(94/8),(94)&7
	
l30000707:	
	line	88
;UART T10.C: 87: {
;UART T10.C: 88: get_key();
	fcall	_get_key
	
l30000708:	
	line	89
;UART T10.C: 89: keyprocess();
	fcall	_keyprocess
	goto	l30000707
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
; =============== function _main ends ============

psect	maintext
	line	91
	signat	_main,88
	global	_keyprocess
psect	text145,local,class=CODE,delta=2
global __ptext145
__ptext145:

; *************** function _keyprocess *****************
; Defined at:
;		line 402 in file "D:\ABHISHEK JOSHI\PIC\UART\UART T10\UART T10.C"
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
;      Locals:         0       0       0       0       0
;      Temp:     0
;      Total:    0
; This function calls:
;		_process_a
;		_process_b
;		_process_c
;		_key_release
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text145
	file	"D:\ABHISHEK JOSHI\PIC\UART\UART T10\UART T10.C"
	line	402
	global	__size_of_keyprocess
	__size_of_keyprocess	equ	__end_of_keyprocess-_keyprocess
;UART T10.C: 401: void keyprocess()
;UART T10.C: 402: {
	
_keyprocess:	
	opt stack 4
; Regs used in _keyprocess: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	
l30000667:	
	goto	l30000672
	
l30000668:	
	line	406
;UART T10.C: 406: process_a();
	fcall	_process_a
	goto	l30000673
	
l30000669:	
	line	410
;UART T10.C: 410: process_b();
	fcall	_process_b
	goto	l30000673
	
l30000670:	
	line	413
;UART T10.C: 413: process_c();
	fcall	_process_c
	goto	l30000673
	
l30000672:	
	line	403
		goto	l30023
l30024:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf (_key_code),w
	xorlw	65^0
	skipnz
	goto	l30000668
	xorlw	66^65
	skipnz
	goto	l30000669
	xorlw	67^66
	skipnz
	goto	l30000670
	goto	l30000673

l30023:
	movf (_key_code+1),w
	xorlw	0^0
	skipnz
	goto	l30024
	goto	l30000673

	
l30000673:	
	line	416
;UART T10.C: 416: key_release();
	fcall	_key_release
	
l73:	
	return
	opt stack 0
GLOBAL	__end_of_keyprocess
	__end_of_keyprocess:
; =============== function _keyprocess ends ============

psect	text146,local,class=CODE,delta=2
global __ptext146
__ptext146:
	line	417
	signat	_keyprocess,88
	global	_get_key

; *************** function _get_key *****************
; Defined at:
;		line 394 in file "D:\ABHISHEK JOSHI\PIC\UART\UART T10\UART T10.C"
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
;		_uart_disp
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text146
	file	"D:\ABHISHEK JOSHI\PIC\UART\UART T10\UART T10.C"
	line	394
	global	__size_of_get_key
	__size_of_get_key	equ	__end_of_get_key-_get_key
;UART T10.C: 393: void get_key()
;UART T10.C: 394: {
	
_get_key:	
	opt stack 4
; Regs used in _get_key: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	
l30000693:	
	goto	l30000695
	
l30000694:	
	line	396
;UART T10.C: 396: uart_disp();
	fcall	_uart_disp
	
l30000695:	
	line	395
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_key_ready),w
	iorwf	(_key_ready+1),w
	skipz
	goto	u451
	goto	u450
u451:
	goto	l30000694
u450:
	
l30000696:	
	line	397
;UART T10.C: 397: a=key_code;
	movf	(_key_code+1),w
	clrf	(_a+1)
	addwf	(_a+1)
	movf	(_key_code),w
	clrf	(_a)
	addwf	(_a)

	
l30000697:	
	line	398
;UART T10.C: 398: key_code=ascii_tab[a];
	movf	(_a),w
	addlw	(_ascii_tab)&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_get_key+0+0)
	clrf	(??_get_key+0+0+1)
	movf	0+(??_get_key+0+0),w
	movwf	(_key_code)
	movf	1+(??_get_key+0+0),w
	movwf	(_key_code+1)
	
l69:	
	return
	opt stack 0
GLOBAL	__end_of_get_key
	__end_of_get_key:
; =============== function _get_key ends ============

psect	text147,local,class=CODE,delta=2
global __ptext147
__ptext147:
	line	399
	signat	_get_key,88
	global	_init_uart

; *************** function _init_uart *****************
; Defined at:
;		line 451 in file "D:\ABHISHEK JOSHI\PIC\UART\UART T10\UART T10.C"
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
psect	text147
	file	"D:\ABHISHEK JOSHI\PIC\UART\UART T10\UART T10.C"
	line	451
	global	__size_of_init_uart
	__size_of_init_uart	equ	__end_of_init_uart-_init_uart
;UART T10.C: 450: void init_uart()
;UART T10.C: 451: {
	
_init_uart:	
	opt stack 4
; Regs used in _init_uart: [wreg]
	line	452
	
l30000680:	
;UART T10.C: 452: TXSTA=0x24;
	movlw	(024h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(152)^080h	;volatile
	line	453
;UART T10.C: 453: SPBRG=25;
	movlw	(019h)
	movwf	(153)^080h	;volatile
	
l30000681:	
	line	454
;UART T10.C: 454: SPEN=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(199/8),(199)&7
	
l83:	
	return
	opt stack 0
GLOBAL	__end_of_init_uart
	__end_of_init_uart:
; =============== function _init_uart ends ============

psect	text148,local,class=CODE,delta=2
global __ptext148
__ptext148:
	line	455
	signat	_init_uart,88
	global	_init

; *************** function _init *****************
; Defined at:
;		line 94 in file "D:\ABHISHEK JOSHI\PIC\UART\UART T10\UART T10.C"
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
;		_init_delay_1sec
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text148
	file	"D:\ABHISHEK JOSHI\PIC\UART\UART T10\UART T10.C"
	line	94
	global	__size_of_init
	__size_of_init	equ	__end_of_init-_init
;UART T10.C: 93: void init()
;UART T10.C: 94: {
	
_init:	
	opt stack 4
; Regs used in _init: [wreg+status,2+status,0+pclath+cstack]
	line	96
	
l30000636:	
;UART T10.C: 96: init_keypad();
	fcall	_init_keypad
	line	97
;UART T10.C: 97: init_timer();
	fcall	_init_timer
	line	98
;UART T10.C: 98: init_delay_1sec();
	fcall	_init_delay_1sec
	
l8:	
	return
	opt stack 0
GLOBAL	__end_of_init
	__end_of_init:
; =============== function _init ends ============

psect	text149,local,class=CODE,delta=2
global __ptext149
__ptext149:
	line	99
	signat	_init,88
	global	_process_a

; *************** function _process_a *****************
; Defined at:
;		line 420 in file "D:\ABHISHEK JOSHI\PIC\UART\UART T10\UART T10.C"
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
;		_keyprocess
; This function uses a non-reentrant model
; 
psect	text149
	file	"D:\ABHISHEK JOSHI\PIC\UART\UART T10\UART T10.C"
	line	420
	global	__size_of_process_a
	__size_of_process_a	equ	__end_of_process_a-_process_a
;UART T10.C: 419: void process_a()
;UART T10.C: 420: {
	
_process_a:	
	opt stack 3
; Regs used in _process_a: [wreg]
	line	421
	
l30000678:	
;UART T10.C: 421: start_sw=1;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_start_sw)
	movlw	high(01h)
	movwf	((_start_sw))+1
	
l79:	
	return
	opt stack 0
GLOBAL	__end_of_process_a
	__end_of_process_a:
; =============== function _process_a ends ============

psect	text150,local,class=CODE,delta=2
global __ptext150
__ptext150:
	line	422
	signat	_process_a,88
	global	_key_release

; *************** function _key_release *****************
; Defined at:
;		line 381 in file "D:\ABHISHEK JOSHI\PIC\UART\UART T10\UART T10.C"
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
;		_keyprocess
; This function uses a non-reentrant model
; 
psect	text150
	file	"D:\ABHISHEK JOSHI\PIC\UART\UART T10\UART T10.C"
	line	381
	global	__size_of_key_release
	__size_of_key_release	equ	__end_of_key_release-_key_release
;UART T10.C: 380: void key_release()
;UART T10.C: 381: {
	
_key_release:	
	opt stack 3
; Regs used in _key_release: [wreg]
	
l30000675:	
	
l30000676:	
	line	382
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_nkp),w
	iorwf	(_nkp+1),w
	skipz
	goto	u421
	goto	u420
u421:
	goto	l30000676
u420:
	
l30000677:	
	line	383
;UART T10.C: 383: key_ready=0;
	movlw	low(0)
	movwf	(_key_ready)
	movlw	high(0)
	movwf	((_key_ready))+1
	line	384
;UART T10.C: 384: nkp=0;
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

psect	text151,local,class=CODE,delta=2
global __ptext151
__ptext151:
	line	385
	signat	_key_release,88
	global	_process_c

; *************** function _process_c *****************
; Defined at:
;		line 430 in file "D:\ABHISHEK JOSHI\PIC\UART\UART T10\UART T10.C"
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
;		_keyprocess
; This function uses a non-reentrant model
; 
psect	text151
	file	"D:\ABHISHEK JOSHI\PIC\UART\UART T10\UART T10.C"
	line	430
	global	__size_of_process_c
	__size_of_process_c	equ	__end_of_process_c-_process_c
;UART T10.C: 429: void process_c()
;UART T10.C: 430: {
	
_process_c:	
	opt stack 3
; Regs used in _process_c: [wreg]
	line	431
	
l30000674:	
;UART T10.C: 431: start_sw=0;
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_start_sw)
	movlw	high(0)
	movwf	((_start_sw))+1
	line	432
;UART T10.C: 432: ds1='0';
	movlw	(030h)
	movwf	(_ds1)
	line	433
;UART T10.C: 433: ds2='0';
	movlw	(030h)
	movwf	(_ds2)
	line	434
;UART T10.C: 434: ds3='0';
	movlw	(030h)
	movwf	(_ds3)
	line	435
;UART T10.C: 435: ds4='0';
	movlw	(030h)
	movwf	(_ds4)
	
l81:	
	return
	opt stack 0
GLOBAL	__end_of_process_c
	__end_of_process_c:
; =============== function _process_c ends ============

psect	text152,local,class=CODE,delta=2
global __ptext152
__ptext152:
	line	436
	signat	_process_c,88
	global	_process_b

; *************** function _process_b *****************
; Defined at:
;		line 425 in file "D:\ABHISHEK JOSHI\PIC\UART\UART T10\UART T10.C"
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
;		_keyprocess
; This function uses a non-reentrant model
; 
psect	text152
	file	"D:\ABHISHEK JOSHI\PIC\UART\UART T10\UART T10.C"
	line	425
	global	__size_of_process_b
	__size_of_process_b	equ	__end_of_process_b-_process_b
;UART T10.C: 424: void process_b()
;UART T10.C: 425: {
	
_process_b:	
	opt stack 3
; Regs used in _process_b: [wreg]
	line	426
	
l30000679:	
;UART T10.C: 426: start_sw=0;
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_start_sw)
	movlw	high(0)
	movwf	((_start_sw))+1
	
l80:	
	return
	opt stack 0
GLOBAL	__end_of_process_b
	__end_of_process_b:
; =============== function _process_b ends ============

psect	text153,local,class=CODE,delta=2
global __ptext153
__ptext153:
	line	427
	signat	_process_b,88
	global	_init_delay_1sec

; *************** function _init_delay_1sec *****************
; Defined at:
;		line 134 in file "D:\ABHISHEK JOSHI\PIC\UART\UART T10\UART T10.C"
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
psect	text153
	file	"D:\ABHISHEK JOSHI\PIC\UART\UART T10\UART T10.C"
	line	134
	global	__size_of_init_delay_1sec
	__size_of_init_delay_1sec	equ	__end_of_init_delay_1sec-_init_delay_1sec
;UART T10.C: 133: void init_delay_1sec()
;UART T10.C: 134: {
	
_init_delay_1sec:	
	opt stack 3
; Regs used in _init_delay_1sec: [wreg]
	line	135
	
l30000682:	
;UART T10.C: 135: cnt_1sl=0x0e8;
	movlw	low(0E8h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_cnt_1sl)
	movlw	high(0E8h)
	movwf	((_cnt_1sl))+1
	line	136
;UART T10.C: 136: cnt_1sh=0x04;
	movlw	low(04h)
	movwf	(_cnt_1sh)
	movlw	high(04h)
	movwf	((_cnt_1sh))+1
	line	137
;UART T10.C: 137: s1_over=1;
	movlw	low(01h)
	movwf	(_s1_over)
	movlw	high(01h)
	movwf	((_s1_over))+1
	
l12:	
	return
	opt stack 0
GLOBAL	__end_of_init_delay_1sec
	__end_of_init_delay_1sec:
; =============== function _init_delay_1sec ends ============

psect	text154,local,class=CODE,delta=2
global __ptext154
__ptext154:
	line	138
	signat	_init_delay_1sec,88
	global	_init_timer

; *************** function _init_timer *****************
; Defined at:
;		line 102 in file "D:\ABHISHEK JOSHI\PIC\UART\UART T10\UART T10.C"
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
psect	text154
	file	"D:\ABHISHEK JOSHI\PIC\UART\UART T10\UART T10.C"
	line	102
	global	__size_of_init_timer
	__size_of_init_timer	equ	__end_of_init_timer-_init_timer
;UART T10.C: 101: void init_timer()
;UART T10.C: 102: {
	
_init_timer:	
	opt stack 3
; Regs used in _init_timer: [wreg]
	line	103
	
l30000683:	
;UART T10.C: 103: TMR1H=0xFC;
	movlw	(0FCh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(15)	;volatile
	line	104
;UART T10.C: 104: TMR1L=0x18;
	movlw	(018h)
	movwf	(14)	;volatile
	line	105
;UART T10.C: 105: T1CON=0x01;
	movlw	(01h)
	movwf	(16)	;volatile
	
l30000684:	
	line	106
;UART T10.C: 106: TMR1IE=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1120/8)^080h,(1120)&7
	
l30000685:	
	line	107
;UART T10.C: 107: TMR1IF=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(96/8),(96)&7
	
l9:	
	return
	opt stack 0
GLOBAL	__end_of_init_timer
	__end_of_init_timer:
; =============== function _init_timer ends ============

psect	text155,local,class=CODE,delta=2
global __ptext155
__ptext155:
	line	108
	signat	_init_timer,88
	global	_init_keypad

; *************** function _init_keypad *****************
; Defined at:
;		line 119 in file "D:\ABHISHEK JOSHI\PIC\UART\UART T10\UART T10.C"
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
psect	text155
	file	"D:\ABHISHEK JOSHI\PIC\UART\UART T10\UART T10.C"
	line	119
	global	__size_of_init_keypad
	__size_of_init_keypad	equ	__end_of_init_keypad-_init_keypad
;UART T10.C: 118: void init_keypad()
;UART T10.C: 119: {
	
_init_keypad:	
	opt stack 3
; Regs used in _init_keypad: [wreg]
	line	120
	
l30000634:	
;UART T10.C: 120: RA2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(42/8),(42)&7
	line	121
;UART T10.C: 121: RA3=1;
	bsf	(43/8),(43)&7
	line	122
;UART T10.C: 122: RA4=1;
	bsf	(44/8),(44)&7
	line	123
;UART T10.C: 123: RA5=1;
	bsf	(45/8),(45)&7
	
l30000635:	
	line	124
;UART T10.C: 124: start_sw=0;
	movlw	low(0)
	movwf	(_start_sw)
	movlw	high(0)
	movwf	((_start_sw))+1
	line	125
;UART T10.C: 125: scan_no=0;
	movlw	low(0)
	movwf	(_scan_no)
	movlw	high(0)
	movwf	((_scan_no))+1
	line	126
;UART T10.C: 126: dcount=33;
	movlw	low(021h)
	movwf	(_dcount)
	movlw	high(021h)
	movwf	((_dcount))+1
	line	127
;UART T10.C: 127: krcount=32;
	movlw	low(020h)
	movwf	(_krcount)
	movlw	high(020h)
	movwf	((_krcount))+1
	line	128
;UART T10.C: 128: key_ready=0;
	movlw	low(0)
	movwf	(_key_ready)
	movlw	high(0)
	movwf	((_key_ready))+1
	line	129
;UART T10.C: 129: nkp=0;
	movlw	low(0)
	movwf	(_nkp)
	movlw	high(0)
	movwf	((_nkp))+1
	line	130
;UART T10.C: 130: start_buzzer=0;
	movlw	low(0)
	movwf	(_start_buzzer)
	movlw	high(0)
	movwf	((_start_buzzer))+1
	
l11:	
	return
	opt stack 0
GLOBAL	__end_of_init_keypad
	__end_of_init_keypad:
; =============== function _init_keypad ends ============

psect	text156,local,class=CODE,delta=2
global __ptext156
__ptext156:
	line	131
	signat	_init_keypad,88
	global	_uart_disp

; *************** function _uart_disp *****************
; Defined at:
;		line 440 in file "D:\ABHISHEK JOSHI\PIC\UART\UART T10\UART T10.C"
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
;		_get_key
; This function uses a non-reentrant model
; 
psect	text156
	file	"D:\ABHISHEK JOSHI\PIC\UART\UART T10\UART T10.C"
	line	440
	global	__size_of_uart_disp
	__size_of_uart_disp	equ	__end_of_uart_disp-_uart_disp
;UART T10.C: 439: void uart_disp()
;UART T10.C: 440: {
	
_uart_disp:	
	opt stack 3
; Regs used in _uart_disp: [wreg+status,2+status,0+pclath+cstack]
	line	442
	
l30000692:	
;UART T10.C: 442: home_screen();
	fcall	_home_screen
	line	443
;UART T10.C: 443: tx(ds4);
	movf	(_ds4),w
	fcall	_tx
	line	444
;UART T10.C: 444: tx(ds3);
	movf	(_ds3),w
	fcall	_tx
	line	445
;UART T10.C: 445: tx(ds2);
	movf	(_ds2),w
	fcall	_tx
	line	446
;UART T10.C: 446: tx(ds1);
	movf	(_ds1),w
	fcall	_tx
	
l82:	
	return
	opt stack 0
GLOBAL	__end_of_uart_disp
	__end_of_uart_disp:
; =============== function _uart_disp ends ============

psect	text157,local,class=CODE,delta=2
global __ptext157
__ptext157:
	line	448
	signat	_uart_disp,88
	global	_home_screen

; *************** function _home_screen *****************
; Defined at:
;		line 470 in file "D:\ABHISHEK JOSHI\PIC\UART\UART T10\UART T10.C"
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
psect	text157
	file	"D:\ABHISHEK JOSHI\PIC\UART\UART T10\UART T10.C"
	line	470
	global	__size_of_home_screen
	__size_of_home_screen	equ	__end_of_home_screen-_home_screen
;UART T10.C: 469: void home_screen()
;UART T10.C: 470: {
	
_home_screen:	
	opt stack 2
; Regs used in _home_screen: [wreg+status,2+status,0+pclath+cstack]
	line	471
	
l30000691:	
;UART T10.C: 471: tx(0x1b);
	movlw	(01Bh)
	fcall	_tx
	line	472
;UART T10.C: 472: uart_delay(1);
	movlw	low(01h)
	movwf	(?_uart_delay)
	movlw	high(01h)
	movwf	((?_uart_delay))+1
	fcall	_uart_delay
	line	473
;UART T10.C: 473: tx('[');
	movlw	(05Bh)
	fcall	_tx
	line	474
;UART T10.C: 474: uart_delay(1);
	movlw	low(01h)
	movwf	(?_uart_delay)
	movlw	high(01h)
	movwf	((?_uart_delay))+1
	fcall	_uart_delay
	line	475
;UART T10.C: 475: tx('H');
	movlw	(048h)
	fcall	_tx
	line	476
;UART T10.C: 476: uart_delay(1);
	movlw	low(01h)
	movwf	(?_uart_delay)
	movlw	high(01h)
	movwf	((?_uart_delay))+1
	fcall	_uart_delay
	
l85:	
	return
	opt stack 0
GLOBAL	__end_of_home_screen
	__end_of_home_screen:
; =============== function _home_screen ends ============

psect	text158,local,class=CODE,delta=2
global __ptext158
__ptext158:
	line	477
	signat	_home_screen,88
	global	_tx

; *************** function _tx *****************
; Defined at:
;		line 480 in file "D:\ABHISHEK JOSHI\PIC\UART\UART T10\UART T10.C"
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
psect	text158
	file	"D:\ABHISHEK JOSHI\PIC\UART\UART T10\UART T10.C"
	line	480
	global	__size_of_tx
	__size_of_tx	equ	__end_of_tx-_tx
;UART T10.C: 479: void tx(unsigned char tx_data)
;UART T10.C: 480: {
	
_tx:	
	opt stack 1
; Regs used in _tx: [wreg]
;tx@tx_data stored from wreg
	movwf	(tx@tx_data)
	
l30000664:	
	
l87:	
	line	481
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7
	goto	u411
	goto	u410
u411:
	goto	l87
u410:
	
l30000665:	
	line	482
;UART T10.C: 482: TXREG=tx_data;
	movf	(tx@tx_data),w
	movwf	(25)	;volatile
	
l30000666:	
	line	483
;UART T10.C: 483: TXIF=0;
	bcf	(100/8),(100)&7
	
l86:	
	return
	opt stack 0
GLOBAL	__end_of_tx
	__end_of_tx:
; =============== function _tx ends ============

psect	text159,local,class=CODE,delta=2
global __ptext159
__ptext159:
	line	484
	signat	_tx,4216
	global	_uart_delay

; *************** function _uart_delay *****************
; Defined at:
;		line 487 in file "D:\ABHISHEK JOSHI\PIC\UART\UART T10\UART T10.C"
; Parameters:    Size  Location     Type
;  del             2    1[COMMON] unsigned int 
; Auto vars:     Size  Location     Type
;  j               2    2[BANK0 ] int 
;  i               2    0[BANK0 ] int 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;      Locals:         3       4       0       0       0
;      Temp:     1
;      Total:    7
; This function calls:
;		Nothing
; This function is called by:
;		_home_screen
; This function uses a non-reentrant model
; 
psect	text159
	file	"D:\ABHISHEK JOSHI\PIC\UART\UART T10\UART T10.C"
	line	487
	global	__size_of_uart_delay
	__size_of_uart_delay	equ	__end_of_uart_delay-_uart_delay
;UART T10.C: 486: void uart_delay(unsigned int del)
;UART T10.C: 487: {
	
_uart_delay:	
	opt stack 1
; Regs used in _uart_delay: [wreg]
	line	489
	
l30000686:	
;UART T10.C: 488: int j,i;
;UART T10.C: 489: for(i=0;i<=del;i++)
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(uart_delay@i)
	movlw	high(0)
	movwf	((uart_delay@i))+1
	goto	l94
	
l30000687:	
	line	490
;UART T10.C: 490: for(j=0;j<=120;j++);
	movlw	low(0)
	movwf	(uart_delay@j)
	movlw	high(0)
	movwf	((uart_delay@j))+1
	
l30000689:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	goto	u435
	movlw	low(079h)
	subwf	(uart_delay@j),w
u435:

	skipc
	goto	u431
	goto	u430
u431:
	goto	l30000689
u430:
	
l30000690:	
	line	489
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(uart_delay@i),f
	skipnc
	incf	(uart_delay@i+1),f
	movlw	high(01h)
	addwf	(uart_delay@i+1),f
	
l94:	
	movf	(uart_delay@i+1),w
	subwf	(uart_delay@del+1),w
	skipz
	goto	u445
	movf	(uart_delay@i),w
	subwf	(uart_delay@del),w
u445:
	skipnc
	goto	u441
	goto	u440
u441:
	goto	l30000687
u440:
	
l90:	
	return
	opt stack 0
GLOBAL	__end_of_uart_delay
	__end_of_uart_delay:
; =============== function _uart_delay ends ============

psect	text160,local,class=CODE,delta=2
global __ptext160
__ptext160:
	line	492
	signat	_uart_delay,4216
	global	_isr_t0

; *************** function _isr_t0 *****************
; Defined at:
;		line 55 in file "D:\ABHISHEK JOSHI\PIC\UART\UART T10\UART T10.C"
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
;		_delay_1sec
;		_scanner
;		_incrementd
; This function is called by:
;		Interrupt level 1
; This function uses a non-reentrant model
; 
psect	text160
	file	"D:\ABHISHEK JOSHI\PIC\UART\UART T10\UART T10.C"
	line	55
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
	opt stack 4
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
psect	text160
	line	56
	
i1l30000709:	
;UART T10.C: 56: init_timer();
	fcall	i1_init_timer
	line	57
;UART T10.C: 57: delay_1sec();
	fcall	_delay_1sec
	
i1l30000710:	
	line	59
;UART T10.C: 59: scanner();
	fcall	_scanner
	
i1l30000711:	
	line	61
;UART T10.C: 61: if(s1_over==1)
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_s1_over),w
	iorwf	(_s1_over+1),w
	skipz
	goto	u46_21
	goto	u46_20
u46_21:
	goto	i1l2
u46_20:
	
i1l30000712:	
	line	63
;UART T10.C: 62: {
;UART T10.C: 63: incrementd();
	fcall	_incrementd
	
i1l30000713:	
	line	64
;UART T10.C: 64: s1_over=0;
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_s1_over)
	movlw	high(0)
	movwf	((_s1_over))+1
	
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

psect	text161,local,class=CODE,delta=2
global __ptext161
__ptext161:
	line	66
	signat	_isr_t0,88
	global	_scanner

; *************** function _scanner *****************
; Defined at:
;		line 162 in file "D:\ABHISHEK JOSHI\PIC\UART\UART T10\UART T10.C"
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
psect	text161
	file	"D:\ABHISHEK JOSHI\PIC\UART\UART T10\UART T10.C"
	line	162
	global	__size_of_scanner
	__size_of_scanner	equ	__end_of_scanner-_scanner
;UART T10.C: 161: void scanner()
;UART T10.C: 162: {
	
_scanner:	
	opt stack 3
; Regs used in _scanner: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	
i1l30000556:	
	goto	i1l30000606
	
i1l21:	
	line	166
;UART T10.C: 166: RA1=0;
	bcf	(41/8),(41)&7
	line	167
;UART T10.C: 167: RC0=1;
	bsf	(56/8),(56)&7
	line	168
;UART T10.C: 168: RC1=1;
	bsf	(57/8),(57)&7
	line	169
;UART T10.C: 169: RC2=1;
	bsf	(58/8),(58)&7
	
i1l30000557:	
	line	171
;UART T10.C: 171: c=RA2;
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
	
i1l30000558:	
	line	172
;UART T10.C: 172: k1();
	fcall	_k1
	
i1l30000559:	
	line	173
;UART T10.C: 173: scan_no=1;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_scan_no)
	movlw	high(01h)
	movwf	((_scan_no))+1
	goto	i1l18
	
i1l30000560:	
	line	177
;UART T10.C: 177: c=RA3;
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
	
i1l30000561:	
	line	178
;UART T10.C: 178: k1();
	fcall	_k1
	
i1l30000562:	
	line	179
;UART T10.C: 179: scan_no=2;
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_scan_no)
	movlw	high(02h)
	movwf	((_scan_no))+1
	goto	i1l18
	
i1l30000563:	
	line	183
;UART T10.C: 183: c=RA4;
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
	
i1l30000564:	
	line	184
;UART T10.C: 184: k1();
	fcall	_k1
	
i1l30000565:	
	line	185
;UART T10.C: 185: scan_no=3;
	movlw	low(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_scan_no)
	movlw	high(03h)
	movwf	((_scan_no))+1
	goto	i1l18
	
i1l30000566:	
	line	190
;UART T10.C: 190: c=RA5;
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
	
i1l30000567:	
	line	191
;UART T10.C: 191: k1();
	fcall	_k1
	
i1l30000568:	
	line	192
;UART T10.C: 192: scan_no=4;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_scan_no)
	movlw	high(04h)
	movwf	((_scan_no))+1
	goto	i1l18
	
i1l25:	
	line	196
;UART T10.C: 196: RA1=1;
	bsf	(41/8),(41)&7
	line	197
;UART T10.C: 197: RC0=0;
	bcf	(56/8),(56)&7
	line	198
;UART T10.C: 198: RC1=1;
	bsf	(57/8),(57)&7
	line	199
;UART T10.C: 199: RC2=1;
	bsf	(58/8),(58)&7
	
i1l30000569:	
	line	201
;UART T10.C: 201: c=RA2;
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
	
i1l30000570:	
	line	202
;UART T10.C: 202: k1();
	fcall	_k1
	
i1l30000571:	
	line	203
;UART T10.C: 203: scan_no=5;
	movlw	low(05h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_scan_no)
	movlw	high(05h)
	movwf	((_scan_no))+1
	goto	i1l18
	
i1l30000572:	
	line	207
;UART T10.C: 207: c=RA3;
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
	
i1l30000573:	
	line	208
;UART T10.C: 208: k1();
	fcall	_k1
	
i1l30000574:	
	line	209
;UART T10.C: 209: scan_no=6;
	movlw	low(06h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_scan_no)
	movlw	high(06h)
	movwf	((_scan_no))+1
	goto	i1l18
	
i1l30000575:	
	line	213
;UART T10.C: 213: c=RA4;
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
	
i1l30000576:	
	line	214
;UART T10.C: 214: k1();
	fcall	_k1
	
i1l30000577:	
	line	215
;UART T10.C: 215: scan_no=7;
	movlw	low(07h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_scan_no)
	movlw	high(07h)
	movwf	((_scan_no))+1
	goto	i1l18
	
i1l30000578:	
	line	220
;UART T10.C: 220: c=RA5;
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
	
i1l30000579:	
	line	221
;UART T10.C: 221: k1();
	fcall	_k1
	
i1l30000580:	
	line	222
;UART T10.C: 222: scan_no=8;
	movlw	low(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_scan_no)
	movlw	high(08h)
	movwf	((_scan_no))+1
	goto	i1l18
	
i1l29:	
	line	226
;UART T10.C: 226: RA1=1;
	bsf	(41/8),(41)&7
	line	227
;UART T10.C: 227: RC0=1;
	bsf	(56/8),(56)&7
	line	228
;UART T10.C: 228: RC1=0;
	bcf	(57/8),(57)&7
	line	229
;UART T10.C: 229: RC2=1;
	bsf	(58/8),(58)&7
	
i1l30000581:	
	line	231
;UART T10.C: 231: c=RA2;
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
	
i1l30000582:	
	line	232
;UART T10.C: 232: k1();
	fcall	_k1
	
i1l30000583:	
	line	233
;UART T10.C: 233: scan_no=9;
	movlw	low(09h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_scan_no)
	movlw	high(09h)
	movwf	((_scan_no))+1
	goto	i1l18
	
i1l30000584:	
	line	237
;UART T10.C: 237: c=RA3;
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
	
i1l30000585:	
	line	238
;UART T10.C: 238: k1();
	fcall	_k1
	
i1l30000586:	
	line	239
;UART T10.C: 239: scan_no=10;
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_scan_no)
	movlw	high(0Ah)
	movwf	((_scan_no))+1
	goto	i1l18
	
i1l30000587:	
	line	243
;UART T10.C: 243: c=RA4;
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
	
i1l30000588:	
	line	244
;UART T10.C: 244: k1();
	fcall	_k1
	
i1l30000589:	
	line	245
;UART T10.C: 245: scan_no=11;
	movlw	low(0Bh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_scan_no)
	movlw	high(0Bh)
	movwf	((_scan_no))+1
	goto	i1l18
	
i1l30000590:	
	line	250
;UART T10.C: 250: c=RA5;
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
	
i1l30000591:	
	line	251
;UART T10.C: 251: k1();
	fcall	_k1
	
i1l30000592:	
	line	252
;UART T10.C: 252: scan_no=12;
	movlw	low(0Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_scan_no)
	movlw	high(0Ch)
	movwf	((_scan_no))+1
	goto	i1l18
	
i1l33:	
	line	256
;UART T10.C: 256: RA1=1;
	bsf	(41/8),(41)&7
	line	257
;UART T10.C: 257: RC0=1;
	bsf	(56/8),(56)&7
	line	258
;UART T10.C: 258: RC1=1;
	bsf	(57/8),(57)&7
	line	259
;UART T10.C: 259: RC2=0;
	bcf	(58/8),(58)&7
	
i1l30000593:	
	line	261
;UART T10.C: 261: c=RA2;
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
	
i1l30000594:	
	line	262
;UART T10.C: 262: k1();
	fcall	_k1
	
i1l30000595:	
	line	263
;UART T10.C: 263: scan_no=13;
	movlw	low(0Dh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_scan_no)
	movlw	high(0Dh)
	movwf	((_scan_no))+1
	goto	i1l18
	
i1l30000596:	
	line	267
;UART T10.C: 267: c=RA3;
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
	
i1l30000597:	
	line	268
;UART T10.C: 268: k1();
	fcall	_k1
	
i1l30000598:	
	line	269
;UART T10.C: 269: scan_no=14;
	movlw	low(0Eh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_scan_no)
	movlw	high(0Eh)
	movwf	((_scan_no))+1
	goto	i1l18
	
i1l30000599:	
	line	273
;UART T10.C: 273: c=RA4;
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
	
i1l30000600:	
	line	274
;UART T10.C: 274: k1();
	fcall	_k1
	
i1l30000601:	
	line	275
;UART T10.C: 275: scan_no=15;
	movlw	low(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_scan_no)
	movlw	high(0Fh)
	movwf	((_scan_no))+1
	goto	i1l18
	
i1l30000602:	
	line	279
;UART T10.C: 279: c=RA5;
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
	
i1l30000603:	
	line	280
;UART T10.C: 280: k1();
	fcall	_k1
	
i1l30000604:	
	line	282
;UART T10.C: 282: scan_no=0;
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_scan_no)
	movlw	high(0)
	movwf	((_scan_no))+1
	goto	i1l18
	
i1l30000606:	
	line	163
		goto	i1l30025
i1l30026:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf (_scan_no),w
	xorlw	0^0
	skipnz
	goto	i1l21
	xorlw	1^0
	skipnz
	goto	i1l30000560
	xorlw	2^1
	skipnz
	goto	i1l30000563
	xorlw	3^2
	skipnz
	goto	i1l30000566
	xorlw	4^3
	skipnz
	goto	i1l25
	xorlw	5^4
	skipnz
	goto	i1l30000572
	xorlw	6^5
	skipnz
	goto	i1l30000575
	xorlw	7^6
	skipnz
	goto	i1l30000578
	xorlw	8^7
	skipnz
	goto	i1l29
	xorlw	9^8
	skipnz
	goto	i1l30000584
	xorlw	10^9
	skipnz
	goto	i1l30000587
	xorlw	11^10
	skipnz
	goto	i1l30000590
	xorlw	12^11
	skipnz
	goto	i1l33
	xorlw	13^12
	skipnz
	goto	i1l30000596
	xorlw	14^13
	skipnz
	goto	i1l30000599
	xorlw	15^14
	skipnz
	goto	i1l30000602
	goto	i1l18

i1l30025:
	movf (_scan_no+1),w
	xorlw	0^0
	skipnz
	goto	i1l30026
	goto	i1l18

	
i1l18:	
	return
	opt stack 0
GLOBAL	__end_of_scanner
	__end_of_scanner:
; =============== function _scanner ends ============

psect	text162,local,class=CODE,delta=2
global __ptext162
__ptext162:
	line	285
	signat	_scanner,88
	global	_incrementd

; *************** function _incrementd *****************
; Defined at:
;		line 345 in file "D:\ABHISHEK JOSHI\PIC\UART\UART T10\UART T10.C"
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
;		_isr_t0
; This function uses a non-reentrant model
; 
psect	text162
	file	"D:\ABHISHEK JOSHI\PIC\UART\UART T10\UART T10.C"
	line	345
	global	__size_of_incrementd
	__size_of_incrementd	equ	__end_of_incrementd-_incrementd
;UART T10.C: 344: void incrementd()
;UART T10.C: 345: {
	
_incrementd:	
	opt stack 3
; Regs used in _incrementd: [wreg+status,2+status,0]
	line	346
	
i1l30000612:	
;UART T10.C: 346: if(start_sw==1)
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_start_sw),w
	iorwf	(_start_sw+1),w
	skipz
	goto	u30_21
	goto	u30_20
u30_21:
	goto	i1l57
u30_20:
	
i1l30000613:	
	line	348
;UART T10.C: 347: {
;UART T10.C: 348: ds1=ds1+1;
	movf	(_ds1),w
	addlw	01h
	movwf	(_ds1)
	
i1l30000614:	
	line	349
;UART T10.C: 349: if (ds1>'9')
	movlw	(03Ah)
	subwf	(_ds1),w
	skipc
	goto	u31_21
	goto	u31_20
u31_21:
	goto	i1l57
u31_20:
	
i1l30000615:	
	line	351
;UART T10.C: 350: {
;UART T10.C: 351: ds1='0';
	movlw	(030h)
	movwf	(_ds1)
	
i1l30000616:	
	line	352
;UART T10.C: 352: ds2=ds2+1;
	movf	(_ds2),w
	addlw	01h
	movwf	(_ds2)
	
i1l30000617:	
	line	354
;UART T10.C: 354: if (ds2>'9')
	movlw	(03Ah)
	subwf	(_ds2),w
	skipc
	goto	u32_21
	goto	u32_20
u32_21:
	goto	i1l57
u32_20:
	
i1l30000618:	
	line	356
;UART T10.C: 355: {
;UART T10.C: 356: ds2='0';
	movlw	(030h)
	movwf	(_ds2)
	
i1l30000619:	
	line	357
;UART T10.C: 357: ds3=ds3+1;
	movf	(_ds3),w
	addlw	01h
	movwf	(_ds3)
	
i1l30000620:	
	line	359
;UART T10.C: 359: if (ds3>'9')
	movlw	(03Ah)
	subwf	(_ds3),w
	skipc
	goto	u33_21
	goto	u33_20
u33_21:
	goto	i1l57
u33_20:
	
i1l30000621:	
	line	361
;UART T10.C: 360: {
;UART T10.C: 361: ds3='0';
	movlw	(030h)
	movwf	(_ds3)
	
i1l30000622:	
	line	362
;UART T10.C: 362: ds4=ds4+1;
	movf	(_ds4),w
	addlw	01h
	movwf	(_ds4)
	
i1l30000623:	
	line	364
;UART T10.C: 364: if(ds4>'9')
	movlw	(03Ah)
	subwf	(_ds4),w
	skipc
	goto	u34_21
	goto	u34_20
u34_21:
	goto	i1l59
u34_20:
	
i1l30000624:	
	line	366
;UART T10.C: 365: {
;UART T10.C: 366: ds1='0';
	movlw	(030h)
	movwf	(_ds1)
	line	367
;UART T10.C: 367: ds2='0';
	movlw	(030h)
	movwf	(_ds2)
	line	368
;UART T10.C: 368: ds3='0';
	movlw	(030h)
	movwf	(_ds3)
	line	369
;UART T10.C: 369: ds4='0';
	movlw	(030h)
	movwf	(_ds4)
	goto	i1l57
	
i1l59:	
	
i1l57:	
	return
	opt stack 0
GLOBAL	__end_of_incrementd
	__end_of_incrementd:
; =============== function _incrementd ends ============

psect	text163,local,class=CODE,delta=2
global __ptext163
__ptext163:
	line	378
	signat	_incrementd,88
	global	i1_init_timer

; *************** function i1_init_timer *****************
; Defined at:
;		line 102 in file "D:\ABHISHEK JOSHI\PIC\UART\UART T10\UART T10.C"
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
psect	text163
	file	"D:\ABHISHEK JOSHI\PIC\UART\UART T10\UART T10.C"
	line	102
	global	__size_ofi1_init_timer
	__size_ofi1_init_timer	equ	__end_ofi1_init_timer-i1_init_timer
;UART T10.C: 101: void init_timer()
;UART T10.C: 102: {
	
i1_init_timer:	
	opt stack 3
; Regs used in i1_init_timer: [wreg]
	line	103
	
i1l30000625:	
;UART T10.C: 103: TMR1H=0xFC;
	movlw	(0FCh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(15)	;volatile
	line	104
;UART T10.C: 104: TMR1L=0x18;
	movlw	(018h)
	movwf	(14)	;volatile
	line	105
;UART T10.C: 105: T1CON=0x01;
	movlw	(01h)
	movwf	(16)	;volatile
	
i1l30000626:	
	line	106
;UART T10.C: 106: TMR1IE=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1120/8)^080h,(1120)&7
	
i1l30000627:	
	line	107
;UART T10.C: 107: TMR1IF=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(96/8),(96)&7
	
i1l9:	
	return
	opt stack 0
GLOBAL	__end_ofi1_init_timer
	__end_ofi1_init_timer:
; =============== function i1_init_timer ends ============

psect	text164,local,class=CODE,delta=2
global __ptext164
__ptext164:
	line	108
	signat	i1_init_timer,88
	global	_delay_1sec

; *************** function _delay_1sec *****************
; Defined at:
;		line 141 in file "D:\ABHISHEK JOSHI\PIC\UART\UART T10\UART T10.C"
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
;		_isr_t0
; This function uses a non-reentrant model
; 
psect	text164
	file	"D:\ABHISHEK JOSHI\PIC\UART\UART T10\UART T10.C"
	line	141
	global	__size_of_delay_1sec
	__size_of_delay_1sec	equ	__end_of_delay_1sec-_delay_1sec
;UART T10.C: 140: void delay_1sec()
;UART T10.C: 141: {
	
_delay_1sec:	
	opt stack 3
; Regs used in _delay_1sec: [wreg+status,2+status,0]
	line	142
	
i1l30000628:	
;UART T10.C: 142: if(s1_over!=1)
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_s1_over),w
	iorwf	(_s1_over+1),w
	skipnz
	goto	u35_21
	goto	u35_20
u35_21:
	goto	i1l13
u35_20:
	
i1l30000629:	
	line	144
;UART T10.C: 143: {
;UART T10.C: 144: cnt_1sl--;
	movlw	low(-1)
	addwf	(_cnt_1sl),f
	skipnc
	incf	(_cnt_1sl+1),f
	movlw	high(-1)
	addwf	(_cnt_1sl+1),f
	
i1l30000630:	
	line	145
;UART T10.C: 145: if(cnt_1sl==0)
	movf	((_cnt_1sl+1)),w
	iorwf	((_cnt_1sl)),w
	skipz
	goto	u36_21
	goto	u36_20
u36_21:
	goto	i1l13
u36_20:
	
i1l30000631:	
	line	147
;UART T10.C: 146: {
;UART T10.C: 147: cnt_1sh--;
	movlw	low(-1)
	addwf	(_cnt_1sh),f
	skipnc
	incf	(_cnt_1sh+1),f
	movlw	high(-1)
	addwf	(_cnt_1sh+1),f
	line	148
;UART T10.C: 148: if(cnt_1sh!=0)
	movf	(_cnt_1sh+1),w
	iorwf	(_cnt_1sh),w
	skipnz
	goto	u37_21
	goto	u37_20
u37_21:
	goto	i1l30000633
u37_20:
	
i1l30000632:	
	line	149
;UART T10.C: 149: cnt_1sl=0x0ff;
	movlw	low(0FFh)
	movwf	(_cnt_1sl)
	movlw	high(0FFh)
	movwf	((_cnt_1sl))+1
	goto	i1l13
	
i1l30000633:	
	line	152
;UART T10.C: 150: else
;UART T10.C: 151: {
;UART T10.C: 152: cnt_1sl=0x0e8;
	movlw	low(0E8h)
	movwf	(_cnt_1sl)
	movlw	high(0E8h)
	movwf	((_cnt_1sl))+1
	line	153
;UART T10.C: 153: cnt_1sh=0x04;
	movlw	low(04h)
	movwf	(_cnt_1sh)
	movlw	high(04h)
	movwf	((_cnt_1sh))+1
	line	154
;UART T10.C: 154: s1_over=1;
	movlw	low(01h)
	movwf	(_s1_over)
	movlw	high(01h)
	movwf	((_s1_over))+1
	
i1l13:	
	return
	opt stack 0
GLOBAL	__end_of_delay_1sec
	__end_of_delay_1sec:
; =============== function _delay_1sec ends ============

psect	text165,local,class=CODE,delta=2
global __ptext165
__ptext165:
	line	159
	signat	_delay_1sec,88
	global	_k1

; *************** function _k1 *****************
; Defined at:
;		line 288 in file "D:\ABHISHEK JOSHI\PIC\UART\UART T10\UART T10.C"
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
psect	text165
	file	"D:\ABHISHEK JOSHI\PIC\UART\UART T10\UART T10.C"
	line	288
	global	__size_of_k1
	__size_of_k1	equ	__end_of_k1-_k1
;UART T10.C: 287: void k1()
;UART T10.C: 288: {
	
_k1:	
	opt stack 2
; Regs used in _k1: [wreg+status,2+status,0]
	line	289
	
i1l30000542:	
;UART T10.C: 289: if(key_ready==1)
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_key_ready),w
	iorwf	(_key_ready+1),w
	skipz
	goto	u22_21
	goto	u22_20
u22_21:
	goto	i1l30000548
u22_20:
	
i1l30000543:	
	line	291
;UART T10.C: 290: {
;UART T10.C: 291: if(c==0)
	movf	((_c+1)),w
	iorwf	((_c)),w
	skipz
	goto	u23_21
	goto	u23_20
u23_21:
	goto	i1l30000545
u23_20:
	
i1l30000544:	
	line	293
;UART T10.C: 292: {
;UART T10.C: 293: krcount=32;
	movlw	low(020h)
	movwf	(_krcount)
	movlw	high(020h)
	movwf	((_krcount))+1
	goto	i1l37
	
i1l30000545:	
	line	297
;UART T10.C: 295: else
;UART T10.C: 296: {
;UART T10.C: 297: krcount=krcount-1;
	movf	(_krcount),w
	addlw	low(-1)
	movwf	(_krcount)
	movf	(_krcount+1),w
	skipnc
	addlw	1
	addlw	high(-1)
	movwf	1+(_krcount)
	
i1l30000546:	
	line	299
;UART T10.C: 299: if(krcount==0)
	movf	((_krcount+1)),w
	iorwf	((_krcount)),w
	skipz
	goto	u24_21
	goto	u24_20
u24_21:
	goto	i1l37
u24_20:
	
i1l30000547:	
	line	301
;UART T10.C: 300: {
;UART T10.C: 301: nkp=1;
	movlw	low(01h)
	movwf	(_nkp)
	movlw	high(01h)
	movwf	((_nkp))+1
	line	302
;UART T10.C: 302: start_buzzer=0;
	movlw	low(0)
	movwf	(_start_buzzer)
	movlw	high(0)
	movwf	((_start_buzzer))+1
	line	303
;UART T10.C: 303: krcount=32;
	movlw	low(020h)
	movwf	(_krcount)
	movlw	high(020h)
	movwf	((_krcount))+1
	goto	i1l37
	
i1l30000548:	
	line	307
;UART T10.C: 307: else if(dcount==33)
	movlw	021h
	xorwf	(_dcount),w
	iorwf	(_dcount+1),w
	skipz
	goto	u25_21
	goto	u25_20
u25_21:
	goto	i1l30000551
u25_20:
	
i1l30000549:	
	line	309
;UART T10.C: 308: {
;UART T10.C: 309: if(c==0)
	movf	((_c+1)),w
	iorwf	((_c)),w
	skipz
	goto	u26_21
	goto	u26_20
u26_21:
	goto	i1l37
u26_20:
	
i1l30000550:	
	line	311
;UART T10.C: 310: {
;UART T10.C: 311: dcount=dcount-1;
	movf	(_dcount),w
	addlw	low(-1)
	movwf	(_dcount)
	movf	(_dcount+1),w
	skipnc
	addlw	1
	addlw	high(-1)
	movwf	1+(_dcount)
	line	312
;UART T10.C: 312: key_code=scan_no;
	movf	(_scan_no+1),w
	clrf	(_key_code+1)
	addwf	(_key_code+1)
	movf	(_scan_no),w
	clrf	(_key_code)
	addwf	(_key_code)

	goto	i1l37
	
i1l30000551:	
	line	319
;UART T10.C: 317: else
;UART T10.C: 318: {
;UART T10.C: 319: dcount=dcount-1;
	movf	(_dcount),w
	addlw	low(-1)
	movwf	(_dcount)
	movf	(_dcount+1),w
	skipnc
	addlw	1
	addlw	high(-1)
	movwf	1+(_dcount)
	
i1l30000552:	
	line	320
;UART T10.C: 320: if(dcount==0)
	movf	((_dcount+1)),w
	iorwf	((_dcount)),w
	skipz
	goto	u27_21
	goto	u27_20
u27_21:
	goto	i1l37
u27_20:
	
i1l30000553:	
	line	322
;UART T10.C: 321: {
;UART T10.C: 322: if(c==0)
	movf	((_c+1)),w
	iorwf	((_c)),w
	skipz
	goto	u28_21
	goto	u28_20
u28_21:
	goto	i1l30000555
u28_20:
	
i1l30000554:	
	line	324
;UART T10.C: 323: {
;UART T10.C: 324: key_ready=1;
	movlw	low(01h)
	movwf	(_key_ready)
	movlw	high(01h)
	movwf	((_key_ready))+1
	line	325
;UART T10.C: 325: start_buzzer=1;
	movlw	low(01h)
	movwf	(_start_buzzer)
	movlw	high(01h)
	movwf	((_start_buzzer))+1
	line	326
;UART T10.C: 326: dcount=33;
	movlw	low(021h)
	movwf	(_dcount)
	movlw	high(021h)
	movwf	((_dcount))+1
	goto	i1l37
	
i1l30000555:	
	line	328
;UART T10.C: 328: else dcount=33;
	movlw	low(021h)
	movwf	(_dcount)
	movlw	high(021h)
	movwf	((_dcount))+1
	
i1l37:	
	return
	opt stack 0
GLOBAL	__end_of_k1
	__end_of_k1:
; =============== function _k1 ends ============

psect	text166,local,class=CODE,delta=2
global __ptext166
__ptext166:
	line	332
	signat	_k1,88
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	end
