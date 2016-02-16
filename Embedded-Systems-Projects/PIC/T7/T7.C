#include<PIC.h>
#include<stdio.h> 

void timer_func();

unsigned int i;

interrupt void isr_t0()
{
 timer_func();
 i--;
 if(i==0)
 	{
 	PORTB=~PORTB;
 	i=1000;
 	}
 }


void main()
{
 TRISB=0x00;
 PORTB=0x00;
 i=1000;
 timer_func();
 GIE=1;
 PEIE=1;
 while(1);
}

void timer_func()
{
 
 TMR1H=0xFC;
 TMR1L=0x18;
 T1CON=0x01;
 TMR1IE=1;
 TMR1IF=0;
}
