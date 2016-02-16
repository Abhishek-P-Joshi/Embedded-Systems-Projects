org 0000h
main:
mov p0,#0ffh
call init_timer0
mov p0,#00h
call init_timer1
jmp main

init_timer0:
mov r0,#40d
N2:djnz r0,N1
jmp N3

N1: mov TMOD,#01h
mov TH0,#4Bh
mov TL0,#0FDh
setb TR0
JNB TF0,$
clr TF0
jmp N2

N3: ret


init_timer1:
mov r0,#20d
M2:djnz r0,M1
jmp M3

M1: mov TMOD,#10h
mov TH1,#4Bh
mov TL1,#0FDh
setb TR1
JNB TF1,$
clr TF1
jmp M2

M3: ret

end