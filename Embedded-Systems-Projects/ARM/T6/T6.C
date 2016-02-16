#include<LPC214X.h>

void init_timer0(void);

int main()
{
  unsigned int i; 

 VPBDIV=0x00;
 PINSEL0=0x00000000;
 PINSEL1=0x00000000;
 IO0DIR=0x00ff0000;

 
  while(1)
  {
   //IO0SET=0x00ff0000;
   IO0PIN=0x00ff0000;
   for(i=0;i<=1000;i++)
   init_timer0();
   //IO0CLR=0x00ff0000;
   IO0PIN=0x00000000;
   for(i=0;i<=1000;i++)
   init_timer0();
  }
}

void init_timer0()
{
 T0CTCR=0x00;
 T0TC=0x00000000;
 T0MR0=0x00003b2f;
 T0MCR=0x0004;
 T0TCR=0x01;

 while(T0TC!=T0MR0);
 
}

