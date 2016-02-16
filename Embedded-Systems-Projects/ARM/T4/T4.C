#include<LPC214X.h>

void delay(unsigned int);
void display(void);
void incrementd(void);

//unsigned int disp[25]={0x00fc0000,0x00600000,0x00da0000,0x00f20000,0x00660000,0x00b60000,0x00be0000,0x00e00000,0x00fe0000,0x00f60000};
unsigned char disp[25]={0xfc,0x60,0xda,0xf2,0x66,0xb6,0xbe,0xe0,0xfe,0xf6};
char ds1=0,ds2=0,ds3=0,ds4=0;
int main()
{
  int j; 

 VPBDIV=0x00;
 PINSEL0=0x00000000;
 PINSEL1=0x00000000;
 IO0DIR=0x00ff0000;

 
  while(1)
  {
   for(j=0;j<=20;j++)
	display();
	incrementd();

	}
	}

void display()
 {
  IO1DIR=0x00010000;
  IO0SET=disp[ds1]<<16;
  delay(5);
  IO0CLR=disp[ds1]<<16;

  IO1DIR=0x00020000;
  IO0SET=disp[ds2]<<16;
  delay(5);
  IO0CLR=disp[ds2]<<16;

  IO1DIR=0x00040000;
  IO0SET=disp[ds3]<<16;
  delay(5);
  IO0CLR=disp[ds3]<<16;

  IO1DIR=0x00080000;
  IO0SET=disp[ds4]<<16;
  delay(5);
  IO0CLR=disp[ds4]<<16;
  
  }


void delay(unsigned int del)
{
 unsigned int i,j;
 for(i=0;i<=2*del;i++)
 for(j=0;j<=1200;j++);
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

