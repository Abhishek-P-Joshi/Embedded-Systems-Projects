dcount1 equ 34h
dcount2 equ 35h
dcount3 equ 36h

tx_data equ 37h




org 000h

main:

call init_uart

call clr_screen
l1_main:
call home_screen

mov tx_data,#"H"
call tx
call delay

mov tx_data,#"E"
call tx
call delay

jmp l1_main

   
init_uart:


orl tmod,#20h
mov th1,#0FDh	 
setb tr1
mov scon,#52h

ret

clr_screen:

mov tx_data,#1bh
call tx
call delay

mov tx_data,#"["
call tx
call delay

mov tx_data,#"2"
call tx
call delay

mov tx_data,#"J"
call tx
call delay

ret

home_screen:

mov tx_data,#1bh
call tx
call delay

mov tx_data,#"["
call tx
call delay

mov tx_data,#"H"
call tx
call delay

ret

tx:
jnb ti,$
mov sbuf,tx_data
clr ti
ret

delay:
mov dcount3,#02h
K2: mov dcount2,#3fh
K1: mov dcount1,#0ffh
djnz dcount1,$
djnz dcount2,K1
djnz dcount3,K2
ret




end
























