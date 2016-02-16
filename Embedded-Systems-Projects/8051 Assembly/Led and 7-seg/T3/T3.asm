ds1 equ 30h
ds2 equ 31h
ds3 equ 32h
ds4 equ 33h

dcount1 equ 34h
dcount2 equ 35h
dcount3 equ 36h

sl1 bit p2.0
sl2 bit p2.1
sl3 bit p2.2
sl4 bit p2.3

org 0000h

mov p0,#00h

mov ds1,#06h
mov ds2,#07h
mov ds3,#08h
mov ds4,#09h

main:

call display
jmp main

display:

clr sl1
setb sl2
setb sl3
setb sl4

mov dptr,#disp_lut
mov a,ds1
movc a,@a+dptr
mov p0,a

call delay


setb sl1
clr sl2
setb sl3
setb sl4

mov dptr,#disp_lut
mov a,ds2
movc a,@a+dptr
mov p0,a

call delay


setb sl1
setb sl2
clr sl3
setb sl4

mov dptr,#disp_lut
mov a,ds3
movc a,@a+dptr
mov p0,a

call delay


setb sl1
setb sl2
setb sl3
clr sl4

mov dptr,#disp_lut
mov a,ds4
movc a,@a+dptr
mov p0,a

call delay

ret


delay:

mov dcount3,#01h
L2: mov dcount2,#05h
L1: mov dcount1,#0ffh
djnz dcount1,$
djnz dcount2,L1
djnz dcount3,L2
ret


disp_lut:

db 0FCh
db 60h
db 0DAh
db 0F2h
db 66h
db 0B6h
db 0BEh
db 0E0h
db 0FEh
db 0F6h


end