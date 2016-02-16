ds1 equ 30h
ds2 equ 31h
ds3 equ 32h
ds4 equ 33h

dcount1 equ 34h
dcount2 equ 35h
dcount3 equ 36h

count equ 37h

sl1 bit p2.0
sl2 bit p2.1
sl3 bit p2.2
sl4 bit p2.3

org 0000h

mov p0,#00h

main:

mov ds1,#"0"
mov ds2,#"0"
mov ds3,#"0"
mov ds4,#"0"

L1_main:

mov count,#20d

L2_main:

call display
djnz count,L2_main

call inc_d
jmp L1_main


display:

clr sl1
setb sl2
setb sl3
setb sl4

call adisp1
call delay


setb sl1
clr sl2
setb sl3
setb sl4

call adisp2
call delay


setb sl1
setb sl2
clr sl3
setb sl4

call adisp3
call delay


setb sl1
setb sl2
setb sl3
clr sl4

call adisp4
call delay

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


delay:

mov dcount3,#01h
L2: mov dcount2,#05h
L1: mov dcount1,#0ffh
djnz dcount1,$
djnz dcount2,L1
djnz dcount3,L2
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
cjne a,#"9"+1,$+3
jnc L4_id
ret

L4_id:

mov ds1,#00h
mov ds2,#00h
mov ds3,#00h
mov ds4,#00h
ret

end