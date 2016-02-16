#include<PIC.h>

void delay(unsigned int);

void main()
{
	TRISB=0x00;

while(1)
{
	PORTB=0x0f;
	delay(500);
	PORTB=0xf0;
	delay(500);
	

}
	
}

void delay(unsigned int del)
{
int i,j;
for(i=0;i<=del;i++)
for(j=0;j<=120;j++);

}