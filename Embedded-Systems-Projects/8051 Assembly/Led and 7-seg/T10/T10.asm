ds1 equ 30h
ds2 equ 31h
ds3 equ 32h
ds4 equ 33h

dcount1 equ 34h
dcount2 equ 35h
dcount3 equ 36h

count equ 37h
scan_no equ 38h
dcount equ 39h
krcount equ 40h
key_code equ 41h
cnt_1sl equ 42h
cnt_1sh	equ 43h

top_of_stack equ 60h

sl1 bit p2.0
sl2 bit p2.1
sl3 bit p2.2
sl4 bit p2.3

krl1 bit p2.4
krl2 bit p2.5
krl3 bit p2.6
krl4 bit p2.7

key_ready bit 00h
nkp bit 01h
tb bit 02h

start_sw bit 03h
s1_over bit 04h
start_buzzer bit 05h


org 0000h
jmp main

org 0003h
reti 

org 000bh
ljmp isr_t0

org 0013h
reti

org 001bh
reti

org 0023h
reti

org 002bh
reti



main:

mov sp,#top_of_stack
call init
setb ea
call test_display

call disp_sw

loop:

call get_key
call keyprocess
jmp loop


init:

call init_timer0
call init_display
call init_keypad
call init_delay_1sec
ret


init_display:

mov ds1,#"Z"+2
mov ds2,#"Z"+2
mov ds3,#"Z"+2
mov ds4,#"Z"+2
ret

init_keypad:

setb krl1
setb krl2
setb krl3
setb krl4
mov scan_no,#00d
mov dcount,#33d
mov krcount,#32d
clr key_ready
clr nkp
clr start_buzzer
ret

init_timer0:

orl tmod,#01h
mov tl0,#66h
mov th0,#0fch
setb tr0
setb et0
ret


init_delay_1sec:

mov cnt_1sl,#0e8h
mov cnt_1sh,#04h
setb s1_over
ret


isr_t0:

push acc
push psw
push dph
push dpl

call init_timer0
call delay_1sec
call buzzer
call scanner

jnb s1_over,out_isr
call inc_d
clr s1_over

out_isr:

pop dpl
pop dph
pop psw
pop acc
reti

delay_1sec:

jb s1_over,out_ds1sec
djnz cnt_1sl,out_ds1sec
djnz cnt_1sh,reinit_1sl

mov cnt_1sh,#04h
mov cnt_1sl,#0e8h
setb s1_over
ret

reinit_1sl:

mov cnt_1sl,#0ffh

out_ds1sec:
ret


scanner:

mov a,scan_no


zero:

cjne a,#00d,one


clr sl1
setb sl2
setb sl3
setb sl4

call adisp1

mov c,krl1
call k

mov scan_no,#01d
ajmp out_scanner


one:

cjne a,#01d,two

mov c,krl2
call k

mov scan_no,#02d
ajmp out_scanner


two:

cjne a,#02d,three

mov c,krl3
call k

mov scan_no,#03d
ajmp out_scanner


three:

cjne a,#03d,four

call disp_blank

mov c,krl4
call k

mov scan_no,#04d
ajmp out_scanner


four:

cjne a,#04d,five


setb sl1
clr sl2
setb sl3
setb sl4

call adisp2

mov c,krl1
call k

mov scan_no,#05d
ajmp out_scanner


five:

cjne a,#05d,six

mov c,krl2
call k

mov scan_no,#06d
ajmp out_scanner


six:

cjne a,#06d,seven

mov c,krl3
call k

mov scan_no,#07d
ajmp out_scanner


seven:

cjne a,#07d,eight

call disp_blank

mov c,krl4
call k


mov scan_no,#08d
ajmp out_scanner


eight:

cjne a,#08d,nine


setb sl1
setb sl2
clr sl3
setb sl4

call adisp3

mov c,krl1
call k


mov scan_no,#09d
ajmp out_scanner


nine:

cjne a,#09d,ten

mov c,krl2
call k


mov scan_no,#10d
ajmp out_scanner


ten:

cjne a,#10d,eleven

mov c,krl3
call k


mov scan_no,#11d
ajmp out_scanner


eleven:

cjne a,#11d,twelve

call disp_blank

mov c,krl4
call k


mov scan_no,#12d
ajmp out_scanner


twelve:

cjne a,#12d,thirteen


setb sl1
setb sl2
setb sl3
clr sl4

call adisp4

mov c,krl1
call k


mov scan_no,#13d
ajmp out_scanner


thirteen:

cjne a,#13d,fourteen

mov c,krl2
call k


mov scan_no,#14d
ajmp out_scanner


fourteen:

cjne a,#14d,fifteen

mov c,krl3
call k


mov scan_no,#15d
ajmp out_scanner


fifteen:

cjne a,#15d,dummy

call disp_blank

mov c,krl4
call k



dummy:

mov scan_no,#00d
ajmp out_scanner

out_scanner:

ret

k:

jb key_ready,out_debounce

mov tb,c
mov a,dcount
cjne a,#33d,debounce
mov c,tb
jc out_k

dec dcount
mov key_code,scan_no
jmp out_k

debounce:

djnz dcount,out_k

mov c,tb
jc spurious_key
mov dcount,#33d
setb key_ready
setb start_buzzer
jmp out_k

spurious_key:

mov dcount,#33d
jmp out_k

out_debounce:

jc l1_k
mov krcount,#32d
jmp out_k

l1_k:

djnz krcount,out_k
setb nkp
clr start_buzzer
mov krcount,#32d
jmp out_k


out_k:
ret


disp_blank:

mov p0,#00h
ret

adisp1:

mov dptr,#adisp_lut
mov a,ds1
clr c
subb a,#"0"
movc a,@a+dptr
mov p0,a
ret


adisp2:

mov dptr,#adisp_lut
mov a,ds2
clr c
subb a,#"0"
movc a,@a+dptr
mov p0,a
ret


adisp3:

mov dptr,#adisp_lut
mov a,ds3
clr c
subb a,#"0"
movc a,@a+dptr
mov p0,a
ret


adisp4:

mov dptr,#adisp_lut
mov a,ds4
clr c
subb a,#"0"
movc a,@a+dptr
mov p0,a
ret


adisp_lut:

db 0FCh	;0
db 60h	;1
db 0DAh	;2
db 0F2h	;3
db 66h	;4
db 0B6h	;5
db 0BEh	;6
db 0E0h	;7
db 0FEh	;8
db 0F6h	;9

db 0FFh	;3a
db 0FFh	;3b
db 0FFh	;3c
db 0FFh	;3d
db 0FFh	;3e
db 0FFh	;3f
db 0FFh	;40

db 0EEh ;A
db 3Eh  ;B
db 9Ch	;C
db 7Ah	;D
db 9Eh	;E
db 8Eh	;F
db 10111100b	;G
db 01101110b	;H
db 00001100b	;I
db 01110000b	;J
db 00001110b	;K
db 00011100b	;L
db 10101010b	;M
db 00101010b	;N
db 00111010b	;O
db 11001110b	;P
db 11010110b	;Q
db 00001010b	;R
db 10110110b	;S
db 00011110b	;T
db 01111100b	;U
db 00111000b	;V
db 10111000b	;W
db 01100010b	;X
db 01100110b	;Y
db 10010010b	;Z
db 00000000b	;Z+1 for space
db 11111111b	;Z+2 for all segment glow



test_display:

mov ds1,#"9"+2
mov ds2,#"9"+2
mov ds3,#"9"+2
mov ds4,#"9"+2

call wait_1sec

mov ds1,#"9"+1
mov ds2,#"9"+1
mov ds3,#"9"+1
mov ds4,#"9"+1

call wait_1sec

ret


wait_1sec:

mov dcount3,#02h
L2: mov dcount2,#0ffh
L1: mov dcount1,#0ffh
djnz dcount1,$
djnz dcount2,L1
djnz dcount3,L2
ret

wait_20ms:

mov dcount2,#55h
mov dcount1,#0ffh
djnz dcount1,$
djnz dcount2,$-3-3
ret


inc_d:

jnb start_sw, out_id
inc ds1
mov a,ds1
cjne a,#"9"+1,$+3
jnc L1_id
ret

L1_id:

mov ds1,#"0"
inc ds2
mov a,ds2
cjne a,#"9"+1,$+3
jnc L2_id
ret

L2_id:

mov ds2,#"0"
inc ds3
mov a,ds3
cjne a,#"9"+1,$+3
jnc L3_id
ret

L3_id:

mov ds3,#"0"
inc ds4
mov a,ds4
cjne a,#"9"+1,out_id

mov ds1,#00h
mov ds2,#00h
mov ds3,#00h
mov ds4,#00h


out_id:

ret


key_release:
jnb nkp,$
clr key_ready
clr nkp
ret


get_key:

jnb key_ready,$
mov a,key_code
mov dptr,#ascii_key
movc a,@a+dptr
mov key_code,a
ret

ascii_key:

db "0123456789ABCDEF"

keyprocess:

mov a,key_code
cjne a,#"A",chk_b
call process_a
jmp out_kp

chk_b:

cjne a,#"B",chk_c
call process_b
jmp out_kp

chk_c:

cjne a,#"C",out_kp
call process_c
jmp out_kp

out_kp:

call key_release
ret

process_a:

setb start_sw
ret

process_b:

clr start_sw
ret

process_c:

clr start_sw

mov ds1,#"0"
mov ds2,#"0"
mov ds3,#"0"
mov ds4,#"0"

ret


disp_sw:

mov ds1,#"Z"+1
mov ds2,#"Z"+1
mov ds3,#"W"
mov ds4,#"S"
ret


buzzer:

jnb start_buzzer,out_b
cpl p1.5

out_b:

ret

end












