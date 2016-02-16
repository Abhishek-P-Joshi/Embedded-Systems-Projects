#include<PIC.h>
#include<stdio.h>

#define sl1 RA1
#define sl2 RC0
#define sl3 RC1
#define sl4 RC2

unsigned char disp[25]={0xfc,0x60,0xda,0xf2,0x66,0xb6,0xbe,0xe0,0xfe,0xf6};
char ds1=0,ds2=0,ds3=0,ds4=0;

void delay(unsigned int);
void display();
void incrementd();

void main()
{
	TRISB=0x00;
	TRISA=0x00;
	TRISC=0x00;
  int i,j; 
  while(1)
  {
   for(j=0;j<=5;j++)
	display();
	incrementd();
  }
}
void display()

{
   sl1=0;
   sl2=1;
   sl3=1;
   sl4=1;

   PORTB=disp[ds1];
   delay(1);

   sl1=1;
   sl2=0;
   sl3=1;
   sl4=1;

   PORTB=disp[ds2];
   delay(1);

   sl1=1;
   sl2=1;
   sl3=0;
   sl4=1;

   PORTB=disp[ds3];
   delay(1);

   sl1=1;
   sl2=1;
   sl3=1;
   sl4=0;

   PORTB=disp[ds4];
   delay(1);

}

void delay(unsigned int del)
{
int d1,d2;
 for(d1=0;d1<=del;d1++)
for(d2=0;d2<=120;d2++);
}

void incrementd()
{

 ds1=ds1+1;
 if (ds1>9)
 {
 	ds1=0;
	ds2=ds2+1;

		if (ds2>9)
		{
		 	ds2=0;
			ds3=ds3+1;

				if (ds3>9)
				{
				 	ds3=0;
					ds4=ds4+1;

					if(ds4>9)
					{
					 ds1=0;
					 ds2=0;
					 ds3=0;
					 ds4=0;
					}
					else return;
				}
				else return;
		}
		else return;
 }
 else return;

}