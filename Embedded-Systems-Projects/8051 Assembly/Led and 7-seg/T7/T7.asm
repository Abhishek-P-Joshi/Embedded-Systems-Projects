count equ 37h
count1 equ 38h

org 0000h
jmp main

org 0003h
reti 

org 000bh
ljmp isr_t0

org 0013h
reti

org 001bh
ljmp isr_t1
reti

org 0023h
reti

org 002bh
reti

main:

mov p0,#00h
mov count,#20d
mov count1,#20d
call init_timer0
call init_timer1
setb ea
jmp $


init_timer0:

orl tmod,#01h


mov th0,#0fch;DBh
mov tl0,#66h;FFh
setb tr0
setb et0

ret



init_timer1:

orl tmod,#10h
mov tl1,#00h
mov th1,#00h	 
setb tr1
setb et1
ret
isr_t0:

call init_timer0
djnz count,out_isr
cpl p0.0
mov count,#20d

out_isr:
reti


isr_t1:

call init_timer1
djnz count1,out_isr1
cpl p0.5
mov count1,#20d

out_isr1:
reti

end