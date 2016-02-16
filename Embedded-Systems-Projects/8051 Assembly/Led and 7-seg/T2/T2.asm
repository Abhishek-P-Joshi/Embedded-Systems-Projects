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

main:

clr sl1
setb sl2
setb sl3
setb sl4

mov ds1,#60h
mov p0,ds1

call delay


setb sl1
clr sl2
setb sl3
setb sl4

mov ds2,#0DAh
mov p0,ds2

call delay


setb sl1
setb sl2
clr sl3
setb sl4

mov ds3,#0F2h
mov p0,ds3

call delay


setb sl1
setb sl2
setb sl3
clr sl4

mov ds4,#66h
mov p0,ds4

call delay

jmp main


delay:

mov dcount3,#01h
L2: mov dcount2,#05h
L1: mov dcount1,#0ffh
djnz dcount1,$
djnz dcount2,L1
djnz dcount3,L2
ret

end