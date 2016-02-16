dcount1 equ 30h
dcount2 equ 31h
dcount3 equ 32h



org 0000h


main:

call init_uart

L1:

call rx
call delay

call tx 
call delay

jmp L1


init_uart:

mov tmod,#20h
mov th1,#0FDh
setb tr1

mov scon,#52h

ret

rx:

jnb ri,$
mov a,sbuf
clr ri
ret

tx:

jnb ti,$
mov sbuf,a
clr ti
ret

delay:

mov dcount3,#07d
M2:mov dcount2,#0ffh
M1:mov dcount1,#0ffh
djnz dcount1,$
djnz dcount2,M1
djnz dcount3,M2
ret

end