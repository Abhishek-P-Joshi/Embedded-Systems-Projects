ds1 equ 30h
ds2 equ 31h
ds3 equ 32h
ds4 equ 33h

dcount1 equ 34h
dcount2 equ 35h
dcount3 equ 36h

count equ 37h
scan_no equ 38h

top_of_stack equ 60h

sl1 bit p2.0
sl2 bit p2.1
sl3 bit p2.2
sl4 bit p2.3

temp equ 39h
cmd_data equ 40h
disp_data equ 41h
var_data equ 42h

vled bit p0.0
RS bit p0.1
RW bit p0.2
e bit p0.3

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

call init_lcd

mov cmd_data,#0C0h
call cmd_wr
call lcd_delay

mov disp_data,#"C"
call data_wr
//call lcd_delay

mov disp_data,#"O"
call data_wr
//call lcd_delay

mov disp_data,#"U"
call data_wr
//call lcd_delay

mov disp_data,#"N"
call data_wr
//call lcd_delay

mov disp_data,#"T"
call data_wr
//call lcd_delay

mov disp_data,#"E"
call data_wr
//call lcd_delay

mov disp_data,#"R"
call data_wr
//call lcd_delay

mov sp,#top_of_stack
call init
setb ea
//call test_display

mov ds1,#"0"
mov ds2,#"0"
mov ds3,#"0"
mov ds4,#"0"

l1_main:

call lcd_disp

call wait_1sec
call inc_d
jmp l1_main



init:

mov scan_no,#00h
call init_timer0
ret


init_timer0:

orl tmod,#01h
mov tl0,#66h
mov th0,#0fch
setb tr0
setb et0
ret


isr_t0:

push acc
push psw
push dph
push dpl

call init_timer0
call scanner

out_isr:

pop dpl
pop dph
pop psw
pop acc
reti


scanner:

mov a,scan_no



zero:

cjne a,#00d,one


clr sl1
setb sl2
setb sl3
setb sl4

//call adisp1

mov scan_no,#01d
ajmp out_scanner


one:

cjne a,#01d,two

mov scan_no,#02d
ajmp out_scanner


two:

cjne a,#02d,three

mov scan_no,#03d
ajmp out_scanner


three:

cjne a,#03d,four

//call disp_blank

mov scan_no,#04d
ajmp out_scanner


four:

cjne a,#04d,five


setb sl1
clr sl2
setb sl3
setb sl4

//call adisp2

mov scan_no,#05d
ajmp out_scanner


five:

cjne a,#05d,six

mov scan_no,#06d
ajmp out_scanner


six:

cjne a,#06d,seven

mov scan_no,#07d
ajmp out_scanner


seven:

cjne a,#07d,eight

//call disp_blank

mov scan_no,#08d
ajmp out_scanner


eight:

cjne a,#08d,nine


setb sl1
setb sl2
clr sl3
setb sl4

//call adisp3

mov scan_no,#09d
ajmp out_scanner


nine:

cjne a,#09d,ten

mov scan_no,#10d
ajmp out_scanner


ten:

cjne a,#10d,eleven

mov scan_no,#11d
ajmp out_scanner


eleven:

cjne a,#11d,twelve

//call disp_blank

mov scan_no,#12d
ajmp out_scanner


twelve:

cjne a,#12d,thirteen


setb sl1
setb sl2
setb sl3
clr sl4

//call adisp4

mov scan_no,#13d
ajmp out_scanner


thirteen:

cjne a,#13d,fourteen

mov scan_no,#14d
ajmp out_scanner


fourteen:

cjne a,#14d,fifteen

mov scan_no,#15d
ajmp out_scanner


fifteen:

cjne a,#15d,dummy

//call disp_blank


dummy:

mov scan_no,#00d
ajmp out_scanner

out_scanner:

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

lcd_disp:

mov cmd_data,#87h
call cmd_wr
call lcd_delay

//mov disp_data,#"A"
call data_wr1

mov cmd_data,#86h
call cmd_wr
call lcd_delay

call data_wr2

mov cmd_data,#85h
call cmd_wr
call lcd_delay

call data_wr3

mov cmd_data,#84h
call cmd_wr
call lcd_delay

call data_wr4

ret

cmd_wr:

clr RS
clr RW
mov var_data,cmd_data
call data_map
call enable
mov a,cmd_data
//swap a
rl a
rl a
rl a
rl a
mov var_data,a
call data_map
call enable
ret

data_wr:

setb RS
clr RW
mov var_data,disp_data
call data_map
call enable
mov a,disp_data
//swap a
rl a
rl a
rl a
rl a
mov var_data,a
call data_map
call enable
ret

data_wr1:

setb RS
clr RW
mov var_data,ds1
call data_map
call enable
mov a,ds1
//swap a
rl a
rl a
rl a
rl a
mov var_data,a
call data_map
call enable
ret

data_wr2:

setb RS
clr RW
mov var_data,ds2
call data_map
call enable
mov a,ds2
//swap a
rl a
rl a
rl a
rl a
mov var_data,a
call data_map
call enable
ret

data_wr3:

setb RS
clr RW
mov var_data,ds3
call data_map
call enable
mov a,ds3
//swap a
rl a
rl a
rl a
rl a
mov var_data,a
call data_map
call enable
ret

data_wr4:

setb RS
clr RW
mov var_data,ds4
call data_map
call enable
mov a,ds4
//swap a
rl a
rl a
rl a
rl a
mov var_data,a
call data_map
call enable
ret


data_map:

mov a,var_data
anl a,#0F0h
mov temp,a

mov a,p0
anl a,#0Fh

orl a,temp

mov p0,a

ret

enable:
setb e
nop
nop
nop
nop
nop
clr e
ret


lcd_delay:

mov dcount3,#02h
K2: mov dcount2,#3fh
K1: mov dcount1,#0ffh
djnz dcount1,$
djnz dcount2,K1
djnz dcount3,K2
ret

init_lcd:
	call lcd_delay
	call lcd_delay
	call lcd_delay

	mov cmd_data,#03h
	call cmd_wr
	call lcd_delay

	mov cmd_data,#03h
	call cmd_wr
	call lcd_delay

	mov cmd_data,#03h
	call cmd_wr
	call lcd_delay

	mov cmd_data,#20h
	call cmd_wr
	call lcd_delay

	mov cmd_data,#28h
	call cmd_wr
	call lcd_delay

	mov cmd_data,#06h
	call cmd_wr
	call lcd_delay

	mov cmd_data,#01h
	call cmd_wr
	call lcd_delay

	clr vled
ret

end

