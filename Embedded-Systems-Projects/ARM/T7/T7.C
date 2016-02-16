#include<LPC214X.h>
unsigned int val;
void init_timer0(void);

  unsigned int i; 

__irq  void timer0_isr() 
{
	init_timer0();
 i--;
 if(i==0)
 	{
 	if(IO0PIN==val)
	IO0CLR=val;
	else
	IO0SET=val;
	i=10000;
 	}
	VICVectAddr = 0x00000000;

}

int main()
{

 VPBDIV=0x00;
 PINSEL0=0x00000000;
 PINSEL1=0x00000000;
 IO0DIR=0x00ff0000;

    VICIntSelect	=	0x00000000;
	VICIntEnable	=	0x00000010;
	VICVectCntl0	=	0x00000024;
	VICVectAddr0	=	(unsigned long) timer0_isr;

 IO0CLR=0x00FF0000;
 val=0x00ff0000;
 i=10000;
 init_timer0();

 
  while(1);
}

void init_timer0()
{
 T0CTCR=0x00;
 T0TC=0x00000000;
 T0MR0=0x00003b2f;
 T0MCR=0x0007;
 T0TCR=0x01;
 
}
