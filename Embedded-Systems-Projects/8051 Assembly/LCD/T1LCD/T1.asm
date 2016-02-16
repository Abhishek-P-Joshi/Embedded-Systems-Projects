temp equ 30h
cmd_data equ 31h
disp_data equ 32h
dcount1 equ 33h
dcount2 equ 34h
dcount3 equ 35h
var_data equ 36h

vled bit p0.0
RS bit p0.1
RW bit p0.2
e bit p0.3



org 0000h

main:

call init_lcd
mov cmd_data,#84h
call cmd_wr
call lcd_delay


mov disp_data,#"A"
call data_wr
//call lcd_delay

mov disp_data,#"B"
call data_wr
//call lcd_delay

mov disp_data,#"H"
call data_wr
//call lcd_delay

mov disp_data,#"I"
call data_wr
//call lcd_delay

mov disp_data,#"S"
call data_wr
//call lcd_delay

mov disp_data,#"H"
call data_wr
//call lcd_delay

mov disp_data,#"E"
call data_wr
//call lcd_delay

mov disp_data,#"K"
call data_wr
//call lcd_delay

mov cmd_data,#0c5h
call cmd_wr
call lcd_delay

mov disp_data,#"J"
call data_wr
//call lcd_delay

mov disp_data,#"O"
call data_wr
//call lcd_delay

mov disp_data,#"S"
call data_wr
//call lcd_delay

mov disp_data,#"H"
call data_wr
//call lcd_delay

mov disp_data,#"I"
call data_wr
//call lcd_delay




jmp $


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
L2: mov dcount2,#3fh
L1: mov dcount1,#0ffh
djnz dcount1,$
djnz dcount2,L1
djnz dcount3,L2
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



















