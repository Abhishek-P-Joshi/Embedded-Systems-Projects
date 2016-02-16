#include<PIC.h>
#include<stdio.h>

void timer_func();

void main()
{
TRISB=0x00;
unsigned int i;
 while (1)
 {
 PORTB=0x00;
 for(i=0;i<=1000;i++)
 timer_func();
 PORTB=0xff;
 for(i=0;i<=1000;i++)
 timer_func();

  }
 
 }

void timer_func()
{

 TMR1H=0xFC;
 TMR1L=0x18;
 T1CON=0x01;
 //TR0=1;
 while(!TMR1IF);
 TMR1IF=0;
}
