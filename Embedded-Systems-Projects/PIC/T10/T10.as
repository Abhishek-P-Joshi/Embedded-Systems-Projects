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
	FNCALL	_main,_init
	FNCALL	_main,_get_key
	FNCALL	_main,_keyprocess
	FNCALL	_keyprocess,_process_a
	FNCALL	_keyprocess,_process_b
	FNCALL	_keyprocess,_process_c
	FNCALL	_keyprocess,_key_release
	FNCALL	_init,_init_keypad
	FNCALL	_init,_init_timer
	FNCALL	_init,_init_delay_1sec
	FNROOT	_main
	FNCALL	_isr_t0,i1_init_timer
	FNCALL	_isr_t0,_delay_1sec
	FNCALL	_isr_t0,_scanner
	FNCALL	_isr_t0,_incrementd
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
	file	"D:\ABHISHEK JOSHI\PIC\T10\T10.C"
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
psect	idataCOMMON,class=CODE,space=0,delta=2
global __pidataCOMMON
__pidataCOMMON:
	line	16

;initializer for _ds1
	retlw	030h

;initializer for _ds2
	retlw	030h

;initializer for _ds3
	retlw	030h

;initializer for _ds4
	retlw	030h
	global	_a
	global	_c
	global	_key_code
	global	_key_ready
	global	_nkp
	global	_scan_no
	global	_start_buzzer
	global	_start_sw
	global	_tb
	global	_k
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
	file	"T10.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_k:
       ds      2

psect	dataCOMMON,class=COMMON,space=1
global __pdataCOMMON
__pdataCOMMON:
	file	"D:\ABHISHEK JOSHI\PIC\T10\T10.C"
	line	16
_ds1:
       ds      1

psect	dataCOMMON
	file	"D:\ABHISHEK JOSHI\PIC\T10\T10.C"
	line	16
_ds2:
       ds      1

psect	dataCOMMON
	file	"D:\ABHISHEK JOSHI\PIC\T10\T10.C"
	line	16
_ds3:
       ds      1

psect	dataCOMMON
	file	"D:\ABHISHEK JOSHI\PIC\T10\T10.C"
	line	16
_ds4:
       ds      1

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_a:
       ds      2

_c:
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

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"D:\ABHISHEK JOSHI\PIC\T10\T10.C"
	line	15
_ascii_tab:
       ds      25

psect	dataBANK0
	file	"D:\ABHISHEK JOSHI\PIC\T10\T10.C"
	line	14
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
	clrf	((__pbssCOMMON)+1)&07Fh
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
	movlw low(__pdataBANK0+50)
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
psect	cstackBANK1,class=BANK1,space=1
global __pcstackBANK1
__pcstackBANK1:
	global	??_isr_t0
??_isr_t0: ;@ 0x0
	ds	4
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	??_process_a
??_process_a: ;@ 0x0
	global	?_init_delay_1sec
?_init_delay_1sec: ;@ 0x0
	global	?_process_a
?_process_a: ;@ 0x0
	global	?_key_release
?_key_release: ;@ 0x0
	global	??_key_release
??_key_release: ;@ 0x0
	global	?_init_timer
?_init_timer: ;@ 0x0
	global	??_init_timer
??_init_timer: ;@ 0x0
	global	??_init_keypad
??_init_keypad: ;@ 0x0
	global	??_init_delay_1sec
??_init_delay_1sec: ;@ 0x0
	global	?_init_keypad
?_init_keypad: ;@ 0x0
	global	??_process_c
??_process_c: ;@ 0x0
	global	??_keyprocess
??_keyprocess: ;@ 0x0
	global	?_init
?_init: ;@ 0x0
	global	??_get_key
??_get_key: ;@ 0x0
	global	?_keyprocess
?_keyprocess: ;@ 0x0
	global	??_process_b
??_process_b: ;@ 0x0
	global	?_process_c
?_process_c: ;@ 0x0
	global	??_init
??_init: ;@ 0x0
	global	?_process_b
?_process_b: ;@ 0x0
	ds	2
	global	??_delay_1sec
??_delay_1sec: ;@ 0x2
	global	??_adisp3
??_adisp3: ;@ 0x2
	global	??i1_init_timer
??i1_init_timer: ;@ 0x2
	global	?_delay_1sec
?_delay_1sec: ;@ 0x2
	global	??_adisp4
??_adisp4: ;@ 0x2
	global	??_k1
??_k1: ;@ 0x2
	global	??_disp_blank
??_disp_blank: ;@ 0x2
	global	??_adisp2
??_adisp2: ;@ 0x2
	global	??_adisp1
??_adisp1: ;@ 0x2
	global	??_scanner
??_scanner: ;@ 0x2
	global	??_main
??_main: ;@ 0x2
	global	?_main
?_main: ;@ 0x2
	global	?_get_key
?_get_key: ;@ 0x2
	global	??_incrementd
??_incrementd: ;@ 0x2
	global	?i1_init_timer
?i1_init_timer: ;@ 0x2
	global	?_incrementd
?_incrementd: ;@ 0x2
	ds	2
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	?_isr_t0
?_isr_t0: ;@ 0x0
	global	?_disp_blank
?_disp_blank: ;@ 0x0
	global	?_k1
?_k1: ;@ 0x0
	global	?_adisp4
?_adisp4: ;@ 0x0
	global	?_adisp3
?_adisp3: ;@ 0x0
	global	?_scanner
?_scanner: ;@ 0x0
	global	?_adisp1
?_adisp1: ;@ 0x0
	global	?_adisp2
?_adisp2: ;@ 0x0
;Data sizes: Strings 0, constant 0, data 54, bss 20, persistent 10 stack 0
;Auto spaces:   Size  Autos    Used
; COMMON          14      4      10
; BANK0           80      0      78
; BANK1           80      4       4
; BANK3           96      0       0
; BANK2           96      0       0


;Pointer list with targets:



;Main: autosize = 0, tempsize = 0, incstack = 0, save=0


;Call graph:                      Base Space Used Autos Args Refs Density
;_main                                                0    0    0   0.00
;               _init
;            _get_key
;         _keyprocess
;  _get_key                                           2    0    0   0.00
;                                    0 COMMO    2
;  _keyprocess                                        0    0    0   0.00
;          _process_a
;          _process_b
;          _process_c
;        _key_release
;  _init                                              0    0    0   0.00
;        _init_keypad
;         _init_timer
;    _init_delay_1sec
;    _process_b                                       0    0    0   0.00
;    _process_c                                       0    0    0   0.00
;    _key_release                                     0    0    0   0.00
;    _process_a                                       0    0    0   0.00
;    _init_delay_1sec                                 0    0    0   0.00
;    _init_keypad                                     0    0    0   0.00
;    _init_timer                                      0    0    0   0.00
; Estimated maximum call depth 2
;_isr_t0                                              4    0    0   0.00
;                                    0 BANK1    4
;       i1_init_timer
;         _delay_1sec
;            _scanner
;         _incrementd
;  _scanner                                           2    0    0   0.00
;                                    2 COMMO    2
;             _adisp1
;                 _k1
;         _disp_blank
;             _adisp2
;             _adisp3
;             _adisp4
;  _incrementd                                        0    0    0   0.00
;  i1_init_timer                                      0    0    0   0.00
;  _delay_1sec                                        0    0    0   0.00
;    _adisp3                                          0    0    0   0.00
;    _adisp4                                          0    0    0   0.00
;    _adisp2                                          0    0    0   0.00
;    _adisp1                                          0    0    0   0.00
;    _k1                                              0    0    0   0.00
;    _disp_blank                                      0    0    0   0.00
; Estimated maximum call depth 2
; Address spaces:

;Name               Size   Autos  Total    Cost      Usage
;BITCOMMON            E      0       0       0        0.0%
;CODE                 0      0       0       0        0.0%
;NULL                 0      0       0       0        0.0%
;COMMON               E      4       A       1       71.4%
;SFR0                 0      0       0       1        0.0%
;BITSFR0              0      0       0       1        0.0%
;BITSFR1              0      0       0       2        0.0%
;SFR1                 0      0       0       2        0.0%
;ABS                  0      0      5C       2        0.0%
;STACK                0      0       0       3        0.0%
;BITBANK0            50      0       0       4        0.0%
;SFR3                 0      0       0       4        0.0%
;BITSFR3              0      0       0       4        0.0%
;BANK0               50      0      4E       5       97.5%
;BITSFR2              0      0       0       5        0.0%
;SFR2                 0      0       0       5        0.0%
;BITBANK1            50      0       0       6        0.0%
;BANK1               50      4       4       7        5.0%
;BITBANK3            60      0       0       8        0.0%
;BANK3               60      0       0       9        0.0%
;BITBANK2            60      0       0      10        0.0%
;BANK2               60      0       0      11        0.0%
;DATA                 0      0      5C      12        0.0%
;EEDATA             100      0       0    1000        0.0%

	global	_main
psect	maintext,local,class=CODE,delta=2
global __pmaintext
__pmaintext:

; *************** function _main *****************
; Defined at:
;		line 61 in file "D:\ABHISHEK JOSHI\PIC\T10\T10.C"
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
;		_get_key
;		_keyprocess
; This function is called by:
;		Startup code after reset
; This function uses a non-reentrant model
; 
psect	maintext
	file	"D:\ABHISHEK JOSHI\PIC\T10\T10.C"
	line	61
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
;T10.C: 60: void main()
;T10.C: 61: {
	
_main:	
	opt stack 5
; Regs used in _main: [allreg]
	line	62
	
l30000632:	
;T10.C: 62: TRISB=0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	
l30000633:	
	line	63
;T10.C: 63: TRISA=0x3C;
	movlw	(03Ch)
	movwf	(133)^080h	;volatile
	
l30000634:	
	line	64
;T10.C: 64: TRISC=0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(135)^080h	;volatile
	line	65
;T10.C: 65: ADCON1=0x06;
	movlw	(06h)
	movwf	(159)^080h	;volatile
	line	66
;T10.C: 66: start_sw=0;
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_start_sw)
	movlw	high(0)
	movwf	((_start_sw))+1
	
l30000635:	
	line	67
;T10.C: 67: init();
	fcall	_init
	
l30000636:	
	line	68
;T10.C: 68: GIE=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(95/8),(95)&7
	
l30000637:	
	line	69
;T10.C: 69: PEIE=1;
	bsf	(94/8),(94)&7
	
l30000638:	
	line	74
;T10.C: 73: {
;T10.C: 74: get_key();
	fcall	_get_key
	
l30000639:	
	line	75
;T10.C: 75: keyprocess();
	fcall	_keyprocess
	goto	l30000638
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
; =============== function _main ends ============

psect	maintext
	line	77
	signat	_main,88
	global	_get_key
psect	text144,local,class=CODE,delta=2
global __ptext144
__ptext144:

; *************** function _get_key *****************
; Defined at:
;		line 411 in file "D:\ABHISHEK JOSHI\PIC\T10\T10.C"
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
;      Locals:         2       0       0       0       0
;      Temp:     2
;      Total:    2
; This function calls:
;		Nothing
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text144
	file	"D:\ABHISHEK JOSHI\PIC\T10\T10.C"
	line	411
	global	__size_of_get_key
	__size_of_get_key	equ	__end_of_get_key-_get_key
;T10.C: 410: void get_key()
;T10.C: 411: {
	
_get_key:	
	opt stack 4
; Regs used in _get_key: [wreg-fsr0h+status,2+status,0]
	
l30000640:	
	
l30000641:	
	line	412
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_key_ready),w
	iorwf	(_key_ready+1),w
	skipz
	goto	u271
	goto	u270
u271:
	goto	l30000641
u270:
	
l30000642:	
	line	413
;T10.C: 413: a=key_code;
	movf	(_key_code+1),w
	clrf	(_a+1)
	addwf	(_a+1)
	movf	(_key_code),w
	clrf	(_a)
	addwf	(_a)

	
l30000643:	
	line	414
;T10.C: 414: key_code=ascii_tab[a];
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
	
l74:	
	return
	opt stack 0
GLOBAL	__end_of_get_key
	__end_of_get_key:
; =============== function _get_key ends ============

psect	text145,local,class=CODE,delta=2
global __ptext145
__ptext145:
	line	415
	signat	_get_key,88
	global	_keyprocess

; *************** function _keyprocess *****************
; Defined at:
;		line 418 in file "D:\ABHISHEK JOSHI\PIC\T10\T10.C"
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
	file	"D:\ABHISHEK JOSHI\PIC\T10\T10.C"
	line	418
	global	__size_of_keyprocess
	__size_of_keyprocess	equ	__end_of_keyprocess-_keyprocess
;T10.C: 417: void keyprocess()
;T10.C: 418: {
	
_keyprocess:	
	opt stack 4
; Regs used in _keyprocess: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	
l30000647:	
	goto	l30000652
	
l30000648:	
	line	422
;T10.C: 422: process_a();
	fcall	_process_a
	goto	l30000653
	
l30000649:	
	line	426
;T10.C: 426: process_b();
	fcall	_process_b
	goto	l30000653
	
l30000650:	
	line	429
;T10.C: 429: process_c();
	fcall	_process_c
	goto	l30000653
	
l30000652:	
	line	419
		goto	l30023
l30024:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf (_key_code),w
	xorlw	65^0
	skipnz
	goto	l30000648
	xorlw	66^65
	skipnz
	goto	l30000649
	xorlw	67^66
	skipnz
	goto	l30000650
	goto	l30000653

l30023:
	movf (_key_code+1),w
	xorlw	0^0
	skipnz
	goto	l30024
	goto	l30000653

	
l30000653:	
	line	432
;T10.C: 432: key_release();
	fcall	_key_release
	
l78:	
	return
	opt stack 0
GLOBAL	__end_of_keyprocess
	__end_of_keyprocess:
; =============== function _keyprocess ends ============

psect	text146,local,class=CODE,delta=2
global __ptext146
__ptext146:
	line	433
	signat	_keyprocess,88
	global	_init

; *************** function _init *****************
; Defined at:
;		line 80 in file "D:\ABHISHEK JOSHI\PIC\T10\T10.C"
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
psect	text146
	file	"D:\ABHISHEK JOSHI\PIC\T10\T10.C"
	line	80
	global	__size_of_init
	__size_of_init	equ	__end_of_init-_init
;T10.C: 79: void init()
;T10.C: 80: {
	
_init:	
	opt stack 4
; Regs used in _init: [wreg+status,2+status,0+pclath+cstack]
	line	82
	
l30000631:	
;T10.C: 82: init_keypad();
	fcall	_init_keypad
	line	83
;T10.C: 83: init_timer();
	fcall	_init_timer
	line	84
;T10.C: 84: init_delay_1sec();
	fcall	_init_delay_1sec
	
l8:	
	return
	opt stack 0
GLOBAL	__end_of_init
	__end_of_init:
; =============== function _init ends ============

psect	text147,local,class=CODE,delta=2
global __ptext147
__ptext147:
	line	85
	signat	_init,88
	global	_process_b

; *************** function _process_b *****************
; Defined at:
;		line 441 in file "D:\ABHISHEK JOSHI\PIC\T10\T10.C"
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
psect	text147
	file	"D:\ABHISHEK JOSHI\PIC\T10\T10.C"
	line	441
	global	__size_of_process_b
	__size_of_process_b	equ	__end_of_process_b-_process_b
;T10.C: 440: void process_b()
;T10.C: 441: {
	
_process_b:	
	opt stack 3
; Regs used in _process_b: [wreg]
	line	442
	
l30000656:	
;T10.C: 442: start_sw=0;
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_start_sw)
	movlw	high(0)
	movwf	((_start_sw))+1
	
l85:	
	return
	opt stack 0
GLOBAL	__end_of_process_b
	__end_of_process_b:
; =============== function _process_b ends ============

psect	text148,local,class=CODE,delta=2
global __ptext148
__ptext148:
	line	443
	signat	_process_b,88
	global	_process_c

; *************** function _process_c *****************
; Defined at:
;		line 446 in file "D:\ABHISHEK JOSHI\PIC\T10\T10.C"
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
psect	text148
	file	"D:\ABHISHEK JOSHI\PIC\T10\T10.C"
	line	446
	global	__size_of_process_c
	__size_of_process_c	equ	__end_of_process_c-_process_c
;T10.C: 445: void process_c()
;T10.C: 446: {
	
_process_c:	
	opt stack 3
; Regs used in _process_c: [wreg]
	line	447
	
l30000654:	
;T10.C: 447: start_sw=0;
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_start_sw)
	movlw	high(0)
	movwf	((_start_sw))+1
	line	448
;T10.C: 448: ds1='0';
	movlw	(030h)
	movwf	(_ds1)
	line	449
;T10.C: 449: ds2='0';
	movlw	(030h)
	movwf	(_ds2)
	line	450
;T10.C: 450: ds3='0';
	movlw	(030h)
	movwf	(_ds3)
	line	451
;T10.C: 451: ds4='0';
	movlw	(030h)
	movwf	(_ds4)
	
l86:	
	return
	opt stack 0
GLOBAL	__end_of_process_c
	__end_of_process_c:
; =============== function _process_c ends ============

psect	text149,local,class=CODE,delta=2
global __ptext149
__ptext149:
	line	452
	signat	_process_c,88
	global	_key_release

; *************** function _key_release *****************
; Defined at:
;		line 398 in file "D:\ABHISHEK JOSHI\PIC\T10\T10.C"
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
	file	"D:\ABHISHEK JOSHI\PIC\T10\T10.C"
	line	398
	global	__size_of_key_release
	__size_of_key_release	equ	__end_of_key_release-_key_release
;T10.C: 397: void key_release()
;T10.C: 398: {
	
_key_release:	
	opt stack 3
; Regs used in _key_release: [wreg]
	
l30000644:	
	
l30000645:	
	line	399
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_nkp),w
	iorwf	(_nkp+1),w
	skipz
	goto	u281
	goto	u280
u281:
	goto	l30000645
u280:
	
l30000646:	
	line	400
;T10.C: 400: key_ready=0;
	movlw	low(0)
	movwf	(_key_ready)
	movlw	high(0)
	movwf	((_key_ready))+1
	line	401
;T10.C: 401: nkp=0;
	movlw	low(0)
	movwf	(_nkp)
	movlw	high(0)
	movwf	((_nkp))+1
	
l68:	
	return
	opt stack 0
GLOBAL	__end_of_key_release
	__end_of_key_release:
; =============== function _key_release ends ============

psect	text150,local,class=CODE,delta=2
global __ptext150
__ptext150:
	line	402
	signat	_key_release,88
	global	_process_a

; *************** function _process_a *****************
; Defined at:
;		line 436 in file "D:\ABHISHEK JOSHI\PIC\T10\T10.C"
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
	file	"D:\ABHISHEK JOSHI\PIC\T10\T10.C"
	line	436
	global	__size_of_process_a
	__size_of_process_a	equ	__end_of_process_a-_process_a
;T10.C: 435: void process_a()
;T10.C: 436: {
	
_process_a:	
	opt stack 3
; Regs used in _process_a: [wreg]
	line	437
	
l30000655:	
;T10.C: 437: start_sw=1;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_start_sw)
	movlw	high(01h)
	movwf	((_start_sw))+1
	
l84:	
	return
	opt stack 0
GLOBAL	__end_of_process_a
	__end_of_process_a:
; =============== function _process_a ends ============

psect	text151,local,class=CODE,delta=2
global __ptext151
__ptext151:
	line	438
	signat	_process_a,88
	global	_init_delay_1sec

; *************** function _init_delay_1sec *****************
; Defined at:
;		line 120 in file "D:\ABHISHEK JOSHI\PIC\T10\T10.C"
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
psect	text151
	file	"D:\ABHISHEK JOSHI\PIC\T10\T10.C"
	line	120
	global	__size_of_init_delay_1sec
	__size_of_init_delay_1sec	equ	__end_of_init_delay_1sec-_init_delay_1sec
;T10.C: 119: void init_delay_1sec()
;T10.C: 120: {
	
_init_delay_1sec:	
	opt stack 3
; Regs used in _init_delay_1sec: [wreg]
	line	121
	
l30000670:	
;T10.C: 121: cnt_1sl=0x0e8;
	movlw	low(0E8h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_cnt_1sl)
	movlw	high(0E8h)
	movwf	((_cnt_1sl))+1
	line	122
;T10.C: 122: cnt_1sh=0x04;
	movlw	low(04h)
	movwf	(_cnt_1sh)
	movlw	high(04h)
	movwf	((_cnt_1sh))+1
	line	123
;T10.C: 123: s1_over=1;
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

psect	text152,local,class=CODE,delta=2
global __ptext152
__ptext152:
	line	124
	signat	_init_delay_1sec,88
	global	_init_keypad

; *************** function _init_keypad *****************
; Defined at:
;		line 105 in file "D:\ABHISHEK JOSHI\PIC\T10\T10.C"
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
psect	text152
	file	"D:\ABHISHEK JOSHI\PIC\T10\T10.C"
	line	105
	global	__size_of_init_keypad
	__size_of_init_keypad	equ	__end_of_init_keypad-_init_keypad
;T10.C: 104: void init_keypad()
;T10.C: 105: {
	
_init_keypad:	
	opt stack 3
; Regs used in _init_keypad: [wreg]
	line	106
	
l30000629:	
;T10.C: 106: RA2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(42/8),(42)&7
	line	107
;T10.C: 107: RA3=1;
	bsf	(43/8),(43)&7
	line	108
;T10.C: 108: RA4=1;
	bsf	(44/8),(44)&7
	line	109
;T10.C: 109: RA5=1;
	bsf	(45/8),(45)&7
	
l30000630:	
	line	110
;T10.C: 110: start_sw=0;
	movlw	low(0)
	movwf	(_start_sw)
	movlw	high(0)
	movwf	((_start_sw))+1
	line	111
;T10.C: 111: scan_no=0;
	movlw	low(0)
	movwf	(_scan_no)
	movlw	high(0)
	movwf	((_scan_no))+1
	line	112
;T10.C: 112: dcount=33;
	movlw	low(021h)
	movwf	(_dcount)
	movlw	high(021h)
	movwf	((_dcount))+1
	line	113
;T10.C: 113: krcount=32;
	movlw	low(020h)
	movwf	(_krcount)
	movlw	high(020h)
	movwf	((_krcount))+1
	line	114
;T10.C: 114: key_ready=0;
	movlw	low(0)
	movwf	(_key_ready)
	movlw	high(0)
	movwf	((_key_ready))+1
	line	115
;T10.C: 115: nkp=0;
	movlw	low(0)
	movwf	(_nkp)
	movlw	high(0)
	movwf	((_nkp))+1
	line	116
;T10.C: 116: start_buzzer=0;
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

psect	text153,local,class=CODE,delta=2
global __ptext153
__ptext153:
	line	117
	signat	_init_keypad,88
	global	_init_timer

; *************** function _init_timer *****************
; Defined at:
;		line 88 in file "D:\ABHISHEK JOSHI\PIC\T10\T10.C"
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
	file	"D:\ABHISHEK JOSHI\PIC\T10\T10.C"
	line	88
	global	__size_of_init_timer
	__size_of_init_timer	equ	__end_of_init_timer-_init_timer
;T10.C: 87: void init_timer()
;T10.C: 88: {
	
_init_timer:	
	opt stack 3
; Regs used in _init_timer: [wreg]
	line	89
	
l30000671:	
;T10.C: 89: TMR1H=0xFC;
	movlw	(0FCh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(15)	;volatile
	line	90
;T10.C: 90: TMR1L=0x18;
	movlw	(018h)
	movwf	(14)	;volatile
	line	91
;T10.C: 91: T1CON=0x01;
	movlw	(01h)
	movwf	(16)	;volatile
	
l30000672:	
	line	92
;T10.C: 92: TMR1IE=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1120/8)^080h,(1120)&7
	
l30000673:	
	line	93
;T10.C: 93: TMR1IF=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(96/8),(96)&7
	
l9:	
	return
	opt stack 0
GLOBAL	__end_of_init_timer
	__end_of_init_timer:
; =============== function _init_timer ends ============

psect	text154,local,class=CODE,delta=2
global __ptext154
__ptext154:
	line	94
	signat	_init_timer,88
	global	_isr_t0

; *************** function _isr_t0 *****************
; Defined at:
;		line 47 in file "D:\ABHISHEK JOSHI\PIC\T10\T10.C"
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
psect	text154
	file	"D:\ABHISHEK JOSHI\PIC\T10\T10.C"
	line	47
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
psect	text154
	line	48
	
i1l30000680:	
;T10.C: 48: init_timer();
	fcall	i1_init_timer
	line	49
;T10.C: 49: delay_1sec();
	fcall	_delay_1sec
	
i1l30000681:	
	line	51
;T10.C: 51: scanner();
	fcall	_scanner
	
i1l30000682:	
	line	53
;T10.C: 53: if(s1_over==1)
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_s1_over),w
	iorwf	(_s1_over+1),w
	skipz
	goto	u37_21
	goto	u37_20
u37_21:
	goto	i1l2
u37_20:
	
i1l30000683:	
	line	55
;T10.C: 54: {
;T10.C: 55: incrementd();
	fcall	_incrementd
	
i1l30000684:	
	line	56
;T10.C: 56: s1_over=0;
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

psect	text155,local,class=CODE,delta=2
global __ptext155
__ptext155:
	line	58
	signat	_isr_t0,88
	global	_scanner

; *************** function _scanner *****************
; Defined at:
;		line 148 in file "D:\ABHISHEK JOSHI\PIC\T10\T10.C"
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
psect	text155
	file	"D:\ABHISHEK JOSHI\PIC\T10\T10.C"
	line	148
	global	__size_of_scanner
	__size_of_scanner	equ	__end_of_scanner-_scanner
;T10.C: 147: void scanner()
;T10.C: 148: {
	
_scanner:	
	opt stack 5
; Regs used in _scanner: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	
i1l30000548:	
	goto	i1l30000606
	
i1l21:	
	line	152
;T10.C: 152: RA1=0;
	bcf	(41/8),(41)&7
	line	153
;T10.C: 153: RC0=1;
	bsf	(56/8),(56)&7
	line	154
;T10.C: 154: RC1=1;
	bsf	(57/8),(57)&7
	line	155
;T10.C: 155: RC2=1;
	bsf	(58/8),(58)&7
	
i1l30000549:	
	line	156
;T10.C: 156: adisp1();
	fcall	_adisp1
	
i1l30000550:	
	line	157
;T10.C: 157: c=RA2;
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
	
i1l30000551:	
	line	158
;T10.C: 158: k1();
	fcall	_k1
	
i1l30000552:	
	line	159
;T10.C: 159: scan_no=1;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_scan_no)
	movlw	high(01h)
	movwf	((_scan_no))+1
	goto	i1l18
	
i1l30000553:	
	line	163
;T10.C: 163: c=RA3;
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
	
i1l30000554:	
	line	164
;T10.C: 164: k1();
	fcall	_k1
	
i1l30000555:	
	line	165
;T10.C: 165: scan_no=2;
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_scan_no)
	movlw	high(02h)
	movwf	((_scan_no))+1
	goto	i1l18
	
i1l30000556:	
	line	169
;T10.C: 169: c=RA4;
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
	
i1l30000557:	
	line	170
;T10.C: 170: k1();
	fcall	_k1
	
i1l30000558:	
	line	171
;T10.C: 171: scan_no=3;
	movlw	low(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_scan_no)
	movlw	high(03h)
	movwf	((_scan_no))+1
	goto	i1l18
	
i1l30000559:	
	line	175
;T10.C: 175: disp_blank();
	fcall	_disp_blank
	
i1l30000560:	
	line	176
;T10.C: 176: c=RA5;
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
	
i1l30000561:	
	line	177
;T10.C: 177: k1();
	fcall	_k1
	
i1l30000562:	
	line	178
;T10.C: 178: scan_no=4;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_scan_no)
	movlw	high(04h)
	movwf	((_scan_no))+1
	goto	i1l18
	
i1l25:	
	line	182
;T10.C: 182: RA1=1;
	bsf	(41/8),(41)&7
	line	183
;T10.C: 183: RC0=0;
	bcf	(56/8),(56)&7
	line	184
;T10.C: 184: RC1=1;
	bsf	(57/8),(57)&7
	line	185
;T10.C: 185: RC2=1;
	bsf	(58/8),(58)&7
	
i1l30000563:	
	line	186
;T10.C: 186: adisp2();
	fcall	_adisp2
	
i1l30000564:	
	line	187
;T10.C: 187: c=RA2;
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
	
i1l30000565:	
	line	188
;T10.C: 188: k1();
	fcall	_k1
	
i1l30000566:	
	line	189
;T10.C: 189: scan_no=5;
	movlw	low(05h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_scan_no)
	movlw	high(05h)
	movwf	((_scan_no))+1
	goto	i1l18
	
i1l30000567:	
	line	193
;T10.C: 193: c=RA3;
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
	
i1l30000568:	
	line	194
;T10.C: 194: k1();
	fcall	_k1
	
i1l30000569:	
	line	195
;T10.C: 195: scan_no=6;
	movlw	low(06h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_scan_no)
	movlw	high(06h)
	movwf	((_scan_no))+1
	goto	i1l18
	
i1l30000570:	
	line	199
;T10.C: 199: c=RA4;
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
	
i1l30000571:	
	line	200
;T10.C: 200: k1();
	fcall	_k1
	
i1l30000572:	
	line	201
;T10.C: 201: scan_no=7;
	movlw	low(07h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_scan_no)
	movlw	high(07h)
	movwf	((_scan_no))+1
	goto	i1l18
	
i1l30000573:	
	line	205
;T10.C: 205: disp_blank();
	fcall	_disp_blank
	
i1l30000574:	
	line	206
;T10.C: 206: c=RA5;
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
	
i1l30000575:	
	line	207
;T10.C: 207: k1();
	fcall	_k1
	
i1l30000576:	
	line	208
;T10.C: 208: scan_no=8;
	movlw	low(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_scan_no)
	movlw	high(08h)
	movwf	((_scan_no))+1
	goto	i1l18
	
i1l29:	
	line	212
;T10.C: 212: RA1=1;
	bsf	(41/8),(41)&7
	line	213
;T10.C: 213: RC0=1;
	bsf	(56/8),(56)&7
	line	214
;T10.C: 214: RC1=0;
	bcf	(57/8),(57)&7
	line	215
;T10.C: 215: RC2=1;
	bsf	(58/8),(58)&7
	
i1l30000577:	
	line	216
;T10.C: 216: adisp3();
	fcall	_adisp3
	
i1l30000578:	
	line	217
;T10.C: 217: c=RA2;
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
	
i1l30000579:	
	line	218
;T10.C: 218: k1();
	fcall	_k1
	
i1l30000580:	
	line	219
;T10.C: 219: scan_no=9;
	movlw	low(09h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_scan_no)
	movlw	high(09h)
	movwf	((_scan_no))+1
	goto	i1l18
	
i1l30000581:	
	line	223
;T10.C: 223: c=RA3;
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
	
i1l30000582:	
	line	224
;T10.C: 224: k1();
	fcall	_k1
	
i1l30000583:	
	line	225
;T10.C: 225: scan_no=10;
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_scan_no)
	movlw	high(0Ah)
	movwf	((_scan_no))+1
	goto	i1l18
	
i1l30000584:	
	line	229
;T10.C: 229: c=RA4;
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
	
i1l30000585:	
	line	230
;T10.C: 230: k1();
	fcall	_k1
	
i1l30000586:	
	line	231
;T10.C: 231: scan_no=11;
	movlw	low(0Bh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_scan_no)
	movlw	high(0Bh)
	movwf	((_scan_no))+1
	goto	i1l18
	
i1l30000587:	
	line	235
;T10.C: 235: disp_blank();
	fcall	_disp_blank
	
i1l30000588:	
	line	236
;T10.C: 236: c=RA5;
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
	
i1l30000589:	
	line	237
;T10.C: 237: k1();
	fcall	_k1
	
i1l30000590:	
	line	238
;T10.C: 238: scan_no=12;
	movlw	low(0Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_scan_no)
	movlw	high(0Ch)
	movwf	((_scan_no))+1
	goto	i1l18
	
i1l33:	
	line	242
;T10.C: 242: RA1=1;
	bsf	(41/8),(41)&7
	line	243
;T10.C: 243: RC0=1;
	bsf	(56/8),(56)&7
	line	244
;T10.C: 244: RC1=1;
	bsf	(57/8),(57)&7
	line	245
;T10.C: 245: RC2=0;
	bcf	(58/8),(58)&7
	
i1l30000591:	
	line	246
;T10.C: 246: adisp4();
	fcall	_adisp4
	
i1l30000592:	
	line	247
;T10.C: 247: c=RA2;
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
	
i1l30000593:	
	line	248
;T10.C: 248: k1();
	fcall	_k1
	
i1l30000594:	
	line	249
;T10.C: 249: scan_no=13;
	movlw	low(0Dh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_scan_no)
	movlw	high(0Dh)
	movwf	((_scan_no))+1
	goto	i1l18
	
i1l30000595:	
	line	253
;T10.C: 253: c=RA3;
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
	
i1l30000596:	
	line	254
;T10.C: 254: k1();
	fcall	_k1
	
i1l30000597:	
	line	255
;T10.C: 255: scan_no=14;
	movlw	low(0Eh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_scan_no)
	movlw	high(0Eh)
	movwf	((_scan_no))+1
	goto	i1l18
	
i1l30000598:	
	line	259
;T10.C: 259: c=RA4;
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
	
i1l30000599:	
	line	260
;T10.C: 260: k1();
	fcall	_k1
	
i1l30000600:	
	line	261
;T10.C: 261: scan_no=15;
	movlw	low(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_scan_no)
	movlw	high(0Fh)
	movwf	((_scan_no))+1
	goto	i1l18
	
i1l30000601:	
	line	265
;T10.C: 265: c=RA5;
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
	
i1l30000602:	
	line	266
;T10.C: 266: k1();
	fcall	_k1
	
i1l30000603:	
	line	267
;T10.C: 267: disp_blank();
	fcall	_disp_blank
	
i1l30000604:	
	line	268
;T10.C: 268: scan_no=0;
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_scan_no)
	movlw	high(0)
	movwf	((_scan_no))+1
	goto	i1l18
	
i1l30000606:	
	line	149
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
	goto	i1l30000553
	xorlw	2^1
	skipnz
	goto	i1l30000556
	xorlw	3^2
	skipnz
	goto	i1l30000559
	xorlw	4^3
	skipnz
	goto	i1l25
	xorlw	5^4
	skipnz
	goto	i1l30000567
	xorlw	6^5
	skipnz
	goto	i1l30000570
	xorlw	7^6
	skipnz
	goto	i1l30000573
	xorlw	8^7
	skipnz
	goto	i1l29
	xorlw	9^8
	skipnz
	goto	i1l30000581
	xorlw	10^9
	skipnz
	goto	i1l30000584
	xorlw	11^10
	skipnz
	goto	i1l30000587
	xorlw	12^11
	skipnz
	goto	i1l33
	xorlw	13^12
	skipnz
	goto	i1l30000595
	xorlw	14^13
	skipnz
	goto	i1l30000598
	xorlw	15^14
	skipnz
	goto	i1l30000601
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

psect	text156,local,class=CODE,delta=2
global __ptext156
__ptext156:
	line	271
	signat	_scanner,88
	global	_incrementd

; *************** function _incrementd *****************
; Defined at:
;		line 362 in file "D:\ABHISHEK JOSHI\PIC\T10\T10.C"
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
psect	text156
	file	"D:\ABHISHEK JOSHI\PIC\T10\T10.C"
	line	362
	global	__size_of_incrementd
	__size_of_incrementd	equ	__end_of_incrementd-_incrementd
;T10.C: 361: void incrementd()
;T10.C: 362: {
	
_incrementd:	
	opt stack 5
; Regs used in _incrementd: [wreg+status,2+status,0]
	line	363
	
i1l30000657:	
;T10.C: 363: if(start_sw==1)
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_start_sw),w
	iorwf	(_start_sw+1),w
	skipz
	goto	u29_21
	goto	u29_20
u29_21:
	goto	i1l62
u29_20:
	
i1l30000658:	
	line	365
;T10.C: 364: {
;T10.C: 365: ds1=ds1+1;
	movf	(_ds1),w
	addlw	01h
	movwf	(_ds1)
	
i1l30000659:	
	line	366
;T10.C: 366: if (ds1>'9')
	movlw	(03Ah)
	subwf	(_ds1),w
	skipc
	goto	u30_21
	goto	u30_20
u30_21:
	goto	i1l62
u30_20:
	
i1l30000660:	
	line	368
;T10.C: 367: {
;T10.C: 368: ds1='0';
	movlw	(030h)
	movwf	(_ds1)
	
i1l30000661:	
	line	369
;T10.C: 369: ds2=ds2+1;
	movf	(_ds2),w
	addlw	01h
	movwf	(_ds2)
	
i1l30000662:	
	line	371
;T10.C: 371: if (ds2>'9')
	movlw	(03Ah)
	subwf	(_ds2),w
	skipc
	goto	u31_21
	goto	u31_20
u31_21:
	goto	i1l62
u31_20:
	
i1l30000663:	
	line	373
;T10.C: 372: {
;T10.C: 373: ds2='0';
	movlw	(030h)
	movwf	(_ds2)
	
i1l30000664:	
	line	374
;T10.C: 374: ds3=ds3+1;
	movf	(_ds3),w
	addlw	01h
	movwf	(_ds3)
	
i1l30000665:	
	line	376
;T10.C: 376: if (ds3>'9')
	movlw	(03Ah)
	subwf	(_ds3),w
	skipc
	goto	u32_21
	goto	u32_20
u32_21:
	goto	i1l62
u32_20:
	
i1l30000666:	
	line	378
;T10.C: 377: {
;T10.C: 378: ds3='0';
	movlw	(030h)
	movwf	(_ds3)
	
i1l30000667:	
	line	379
;T10.C: 379: ds4=ds4+1;
	movf	(_ds4),w
	addlw	01h
	movwf	(_ds4)
	
i1l30000668:	
	line	381
;T10.C: 381: if(ds4>'9')
	movlw	(03Ah)
	subwf	(_ds4),w
	skipc
	goto	u33_21
	goto	u33_20
u33_21:
	goto	i1l64
u33_20:
	
i1l30000669:	
	line	383
;T10.C: 382: {
;T10.C: 383: ds1='0';
	movlw	(030h)
	movwf	(_ds1)
	line	384
;T10.C: 384: ds2='0';
	movlw	(030h)
	movwf	(_ds2)
	line	385
;T10.C: 385: ds3='0';
	movlw	(030h)
	movwf	(_ds3)
	line	386
;T10.C: 386: ds4='0';
	movlw	(030h)
	movwf	(_ds4)
	goto	i1l62
	
i1l64:	
	
i1l62:	
	return
	opt stack 0
GLOBAL	__end_of_incrementd
	__end_of_incrementd:
; =============== function _incrementd ends ============

psect	text157,local,class=CODE,delta=2
global __ptext157
__ptext157:
	line	395
	signat	_incrementd,88
	global	i1_init_timer

; *************** function i1_init_timer *****************
; Defined at:
;		line 88 in file "D:\ABHISHEK JOSHI\PIC\T10\T10.C"
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
psect	text157
	file	"D:\ABHISHEK JOSHI\PIC\T10\T10.C"
	line	88
	global	__size_ofi1_init_timer
	__size_ofi1_init_timer	equ	__end_ofi1_init_timer-i1_init_timer
;T10.C: 87: void init_timer()
;T10.C: 88: {
	
i1_init_timer:	
	opt stack 5
; Regs used in i1_init_timer: [wreg]
	line	89
	
i1l30000539:	
;T10.C: 89: TMR1H=0xFC;
	movlw	(0FCh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(15)	;volatile
	line	90
;T10.C: 90: TMR1L=0x18;
	movlw	(018h)
	movwf	(14)	;volatile
	line	91
;T10.C: 91: T1CON=0x01;
	movlw	(01h)
	movwf	(16)	;volatile
	
i1l30000540:	
	line	92
;T10.C: 92: TMR1IE=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1120/8)^080h,(1120)&7
	
i1l30000541:	
	line	93
;T10.C: 93: TMR1IF=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(96/8),(96)&7
	
i1l9:	
	return
	opt stack 0
GLOBAL	__end_ofi1_init_timer
	__end_ofi1_init_timer:
; =============== function i1_init_timer ends ============

psect	text158,local,class=CODE,delta=2
global __ptext158
__ptext158:
	line	94
	signat	i1_init_timer,88
	global	_delay_1sec

; *************** function _delay_1sec *****************
; Defined at:
;		line 127 in file "D:\ABHISHEK JOSHI\PIC\T10\T10.C"
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
psect	text158
	file	"D:\ABHISHEK JOSHI\PIC\T10\T10.C"
	line	127
	global	__size_of_delay_1sec
	__size_of_delay_1sec	equ	__end_of_delay_1sec-_delay_1sec
;T10.C: 126: void delay_1sec()
;T10.C: 127: {
	
_delay_1sec:	
	opt stack 5
; Regs used in _delay_1sec: [wreg+status,2+status,0]
	line	128
	
i1l30000674:	
;T10.C: 128: if(s1_over!=1)
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_s1_over),w
	iorwf	(_s1_over+1),w
	skipnz
	goto	u34_21
	goto	u34_20
u34_21:
	goto	i1l13
u34_20:
	
i1l30000675:	
	line	130
;T10.C: 129: {
;T10.C: 130: cnt_1sl--;
	movlw	low(-1)
	addwf	(_cnt_1sl),f
	skipnc
	incf	(_cnt_1sl+1),f
	movlw	high(-1)
	addwf	(_cnt_1sl+1),f
	
i1l30000676:	
	line	131
;T10.C: 131: if(cnt_1sl==0)
	movf	((_cnt_1sl+1)),w
	iorwf	((_cnt_1sl)),w
	skipz
	goto	u35_21
	goto	u35_20
u35_21:
	goto	i1l13
u35_20:
	
i1l30000677:	
	line	133
;T10.C: 132: {
;T10.C: 133: cnt_1sh--;
	movlw	low(-1)
	addwf	(_cnt_1sh),f
	skipnc
	incf	(_cnt_1sh+1),f
	movlw	high(-1)
	addwf	(_cnt_1sh+1),f
	line	134
;T10.C: 134: if(cnt_1sh!=0)
	movf	(_cnt_1sh+1),w
	iorwf	(_cnt_1sh),w
	skipnz
	goto	u36_21
	goto	u36_20
u36_21:
	goto	i1l30000679
u36_20:
	
i1l30000678:	
	line	135
;T10.C: 135: cnt_1sl=0x0ff;
	movlw	low(0FFh)
	movwf	(_cnt_1sl)
	movlw	high(0FFh)
	movwf	((_cnt_1sl))+1
	goto	i1l13
	
i1l30000679:	
	line	138
;T10.C: 136: else
;T10.C: 137: {
;T10.C: 138: cnt_1sl=0x0e8;
	movlw	low(0E8h)
	movwf	(_cnt_1sl)
	movlw	high(0E8h)
	movwf	((_cnt_1sl))+1
	line	139
;T10.C: 139: cnt_1sh=0x04;
	movlw	low(04h)
	movwf	(_cnt_1sh)
	movlw	high(04h)
	movwf	((_cnt_1sh))+1
	line	140
;T10.C: 140: s1_over=1;
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

psect	text159,local,class=CODE,delta=2
global __ptext159
__ptext159:
	line	145
	signat	_delay_1sec,88
	global	_adisp3

; *************** function _adisp3 *****************
; Defined at:
;		line 340 in file "D:\ABHISHEK JOSHI\PIC\T10\T10.C"
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
psect	text159
	file	"D:\ABHISHEK JOSHI\PIC\T10\T10.C"
	line	340
	global	__size_of_adisp3
	__size_of_adisp3	equ	__end_of_adisp3-_adisp3
;T10.C: 339: void adisp3()
;T10.C: 340: {
	
_adisp3:	
	opt stack 4
; Regs used in _adisp3: [wreg-fsr0h+status,2+status,0]
	line	341
	
i1l30000625:	
;T10.C: 341: k=ds3-'0';
	movf	(_ds3),w
	addlw	low(0FFD0h)
	movwf	(_k)
	movlw	high(0FFD0h)
	skipnc
	movlw	high(0FFD0h)+1
	movwf	((_k))+1
	
i1l30000626:	
	line	342
;T10.C: 342: PORTB=disp[k];
	movf	(_k),w
	addlw	(_disp)&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	
i1l52:	
	return
	opt stack 0
GLOBAL	__end_of_adisp3
	__end_of_adisp3:
; =============== function _adisp3 ends ============

psect	text160,local,class=CODE,delta=2
global __ptext160
__ptext160:
	line	343
	signat	_adisp3,88
	global	_adisp4

; *************** function _adisp4 *****************
; Defined at:
;		line 346 in file "D:\ABHISHEK JOSHI\PIC\T10\T10.C"
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
psect	text160
	file	"D:\ABHISHEK JOSHI\PIC\T10\T10.C"
	line	346
	global	__size_of_adisp4
	__size_of_adisp4	equ	__end_of_adisp4-_adisp4
;T10.C: 345: void adisp4()
;T10.C: 346: {
	
_adisp4:	
	opt stack 4
; Regs used in _adisp4: [wreg-fsr0h+status,2+status,0]
	line	347
	
i1l30000623:	
;T10.C: 347: k=ds4-'0';
	movf	(_ds4),w
	addlw	low(0FFD0h)
	movwf	(_k)
	movlw	high(0FFD0h)
	skipnc
	movlw	high(0FFD0h)+1
	movwf	((_k))+1
	
i1l30000624:	
	line	348
;T10.C: 348: PORTB=disp[k];
	movf	(_k),w
	addlw	(_disp)&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	
i1l53:	
	return
	opt stack 0
GLOBAL	__end_of_adisp4
	__end_of_adisp4:
; =============== function _adisp4 ends ============

psect	text161,local,class=CODE,delta=2
global __ptext161
__ptext161:
	line	349
	signat	_adisp4,88
	global	_adisp2

; *************** function _adisp2 *****************
; Defined at:
;		line 334 in file "D:\ABHISHEK JOSHI\PIC\T10\T10.C"
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
psect	text161
	file	"D:\ABHISHEK JOSHI\PIC\T10\T10.C"
	line	334
	global	__size_of_adisp2
	__size_of_adisp2	equ	__end_of_adisp2-_adisp2
;T10.C: 333: void adisp2()
;T10.C: 334: {
	
_adisp2:	
	opt stack 4
; Regs used in _adisp2: [wreg-fsr0h+status,2+status,0]
	line	335
	
i1l30000621:	
;T10.C: 335: k=ds2-'0';
	movf	(_ds2),w
	addlw	low(0FFD0h)
	movwf	(_k)
	movlw	high(0FFD0h)
	skipnc
	movlw	high(0FFD0h)+1
	movwf	((_k))+1
	
i1l30000622:	
	line	336
;T10.C: 336: PORTB=disp[k];
	movf	(_k),w
	addlw	(_disp)&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	
i1l51:	
	return
	opt stack 0
GLOBAL	__end_of_adisp2
	__end_of_adisp2:
; =============== function _adisp2 ends ============

psect	text162,local,class=CODE,delta=2
global __ptext162
__ptext162:
	line	337
	signat	_adisp2,88
	global	_adisp1

; *************** function _adisp1 *****************
; Defined at:
;		line 328 in file "D:\ABHISHEK JOSHI\PIC\T10\T10.C"
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
psect	text162
	file	"D:\ABHISHEK JOSHI\PIC\T10\T10.C"
	line	328
	global	__size_of_adisp1
	__size_of_adisp1	equ	__end_of_adisp1-_adisp1
;T10.C: 327: void adisp1()
;T10.C: 328: {
	
_adisp1:	
	opt stack 4
; Regs used in _adisp1: [wreg-fsr0h+status,2+status,0]
	line	329
	
i1l30000627:	
;T10.C: 329: k=ds1-'0';
	movf	(_ds1),w
	addlw	low(0FFD0h)
	movwf	(_k)
	movlw	high(0FFD0h)
	skipnc
	movlw	high(0FFD0h)+1
	movwf	((_k))+1
	
i1l30000628:	
	line	330
;T10.C: 330: PORTB=disp[k];
	movf	(_k),w
	addlw	(_disp)&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	
i1l50:	
	return
	opt stack 0
GLOBAL	__end_of_adisp1
	__end_of_adisp1:
; =============== function _adisp1 ends ============

psect	text163,local,class=CODE,delta=2
global __ptext163
__ptext163:
	line	331
	signat	_adisp1,88
	global	_k1

; *************** function _k1 *****************
; Defined at:
;		line 274 in file "D:\ABHISHEK JOSHI\PIC\T10\T10.C"
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
psect	text163
	file	"D:\ABHISHEK JOSHI\PIC\T10\T10.C"
	line	274
	global	__size_of_k1
	__size_of_k1	equ	__end_of_k1-_k1
;T10.C: 273: void k1()
;T10.C: 274: {
	
_k1:	
	opt stack 4
; Regs used in _k1: [wreg+status,2+status,0]
	line	275
	
i1l30000607:	
;T10.C: 275: if(key_ready==1)
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_key_ready),w
	iorwf	(_key_ready+1),w
	skipz
	goto	u20_21
	goto	u20_20
u20_21:
	goto	i1l30000613
u20_20:
	
i1l30000608:	
	line	277
;T10.C: 276: {
;T10.C: 277: if(c==0)
	movf	((_c+1)),w
	iorwf	((_c)),w
	skipz
	goto	u21_21
	goto	u21_20
u21_21:
	goto	i1l30000610
u21_20:
	
i1l30000609:	
	line	279
;T10.C: 278: {
;T10.C: 279: krcount=32;
	movlw	low(020h)
	movwf	(_krcount)
	movlw	high(020h)
	movwf	((_krcount))+1
	goto	i1l37
	
i1l30000610:	
	line	283
;T10.C: 281: else
;T10.C: 282: {
;T10.C: 283: krcount=krcount-1;
	movf	(_krcount),w
	addlw	low(-1)
	movwf	(_krcount)
	movf	(_krcount+1),w
	skipnc
	addlw	1
	addlw	high(-1)
	movwf	1+(_krcount)
	
i1l30000611:	
	line	285
;T10.C: 285: if(krcount==0)
	movf	((_krcount+1)),w
	iorwf	((_krcount)),w
	skipz
	goto	u22_21
	goto	u22_20
u22_21:
	goto	i1l37
u22_20:
	
i1l30000612:	
	line	287
;T10.C: 286: {
;T10.C: 287: nkp=1;
	movlw	low(01h)
	movwf	(_nkp)
	movlw	high(01h)
	movwf	((_nkp))+1
	line	288
;T10.C: 288: start_buzzer=0;
	movlw	low(0)
	movwf	(_start_buzzer)
	movlw	high(0)
	movwf	((_start_buzzer))+1
	line	289
;T10.C: 289: krcount=32;
	movlw	low(020h)
	movwf	(_krcount)
	movlw	high(020h)
	movwf	((_krcount))+1
	goto	i1l37
	
i1l30000613:	
	line	293
;T10.C: 293: else if(dcount==33)
	movlw	021h
	xorwf	(_dcount),w
	iorwf	(_dcount+1),w
	skipz
	goto	u23_21
	goto	u23_20
u23_21:
	goto	i1l30000616
u23_20:
	
i1l30000614:	
	line	295
;T10.C: 294: {
;T10.C: 295: if(c==0)
	movf	((_c+1)),w
	iorwf	((_c)),w
	skipz
	goto	u24_21
	goto	u24_20
u24_21:
	goto	i1l37
u24_20:
	
i1l30000615:	
	line	297
;T10.C: 296: {
;T10.C: 297: dcount=dcount-1;
	movf	(_dcount),w
	addlw	low(-1)
	movwf	(_dcount)
	movf	(_dcount+1),w
	skipnc
	addlw	1
	addlw	high(-1)
	movwf	1+(_dcount)
	line	298
;T10.C: 298: key_code=scan_no;
	movf	(_scan_no+1),w
	clrf	(_key_code+1)
	addwf	(_key_code+1)
	movf	(_scan_no),w
	clrf	(_key_code)
	addwf	(_key_code)

	goto	i1l37
	
i1l30000616:	
	line	305
;T10.C: 303: else
;T10.C: 304: {
;T10.C: 305: dcount=dcount-1;
	movf	(_dcount),w
	addlw	low(-1)
	movwf	(_dcount)
	movf	(_dcount+1),w
	skipnc
	addlw	1
	addlw	high(-1)
	movwf	1+(_dcount)
	
i1l30000617:	
	line	306
;T10.C: 306: if(dcount==0)
	movf	((_dcount+1)),w
	iorwf	((_dcount)),w
	skipz
	goto	u25_21
	goto	u25_20
u25_21:
	goto	i1l37
u25_20:
	
i1l30000618:	
	line	308
;T10.C: 307: {
;T10.C: 308: if(c==0)
	movf	((_c+1)),w
	iorwf	((_c)),w
	skipz
	goto	u26_21
	goto	u26_20
u26_21:
	goto	i1l30000620
u26_20:
	
i1l30000619:	
	line	310
;T10.C: 309: {
;T10.C: 310: key_ready=1;
	movlw	low(01h)
	movwf	(_key_ready)
	movlw	high(01h)
	movwf	((_key_ready))+1
	line	311
;T10.C: 311: start_buzzer=1;
	movlw	low(01h)
	movwf	(_start_buzzer)
	movlw	high(01h)
	movwf	((_start_buzzer))+1
	line	312
;T10.C: 312: dcount=33;
	movlw	low(021h)
	movwf	(_dcount)
	movlw	high(021h)
	movwf	((_dcount))+1
	goto	i1l37
	
i1l30000620:	
	line	314
;T10.C: 314: else dcount=33;
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

psect	text164,local,class=CODE,delta=2
global __ptext164
__ptext164:
	line	318
	signat	_k1,88
	global	_disp_blank

; *************** function _disp_blank *****************
; Defined at:
;		line 323 in file "D:\ABHISHEK JOSHI\PIC\T10\T10.C"
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
psect	text164
	file	"D:\ABHISHEK JOSHI\PIC\T10\T10.C"
	line	323
	global	__size_of_disp_blank
	__size_of_disp_blank	equ	__end_of_disp_blank-_disp_blank
;T10.C: 322: void disp_blank()
;T10.C: 323: {
	
_disp_blank:	
	opt stack 4
; Regs used in _disp_blank: [wreg+status,2+status,0]
	line	324
	
i1l30000547:	
;T10.C: 324: PORTB=0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	
i1l49:	
	return
	opt stack 0
GLOBAL	__end_of_disp_blank
	__end_of_disp_blank:
; =============== function _disp_blank ends ============

psect	text165,local,class=CODE,delta=2
global __ptext165
__ptext165:
	line	325
	signat	_disp_blank,88
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	end
