dcount_1 equ 45h
dcount_2 equ 46h
dcount_3 equ 47h

org 000h
main:
mov p0,#00h

mov r1,#02h ;count twice

L5:
mov p0,#00h
call delay
mov p0,#0ffh
call delay
djnz r1,L5
mov r1,#02h

L6:
mov p0,#01010101b
call delay
mov p0,#10101010b
call delay
djnz r1,L6
mov r1,#02h


L7:
mov A,#01h
mov p0,A 
call delay
mov r0,#07h
L3:
rl A
mov p0,A
call delay
djnz r0,L3
mov r0,#07h
L4:rr A
mov p0,A
call delay
djnz r0,L4
djnz r1,L7

jmp main



delay:
	mov dcount_3,#05h
L2:	mov dcount_2,#0ffh
L1:	mov dcount_1,#0ffh
	djnz dcount_1,$
	djnz dcount_2,L1
	djnz dcount_3,L2
	ret

end