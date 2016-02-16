#include<PIC.h>
#include<stdio.h>

#define sl1 RA1
#define sl2 RC0
#define sl3 RC1
#define sl4 RC2

void delay(unsigned int);

void main()

{
	TRISB=0x00;
	TRISA=0x00;
	TRISC=0x00;
  while(1)
  {
   sl1=0;
   sl2=1;
   sl3=1;
   sl4=1;

   PORTB=0xFC;
   delay(1);

   sl1=1;
   sl2=0;
   sl3=1;
   sl4=1;

   PORTB=0x60;
   delay(1);

   sl1=1;
   sl2=1;
   sl3=0;
   sl4=1;

   PORTB=0xDA;
   delay(1);

   sl1=1;
   sl2=1;
   sl3=1;
   sl4=0;

   PORTB=0xF2;
   delay(1);


  }


}

void delay(unsigned int del)
{
int d1,d2;
 for(d1=0;d1<=del;d1++)
 	for(d2=0;d2<=120;d2++);
}