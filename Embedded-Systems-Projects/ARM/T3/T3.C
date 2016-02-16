#include<LPC214X.h>

void delay(unsigned int);

//unsigned int disp[25]={0x00fc0000,0x00600000,0x00da0000,0x00f20000,0x00660000,0x00b60000,0x00be0000,0x00e00000,0x00fe0000,0x00f60000};
unsigned char disp[25]={0xfc,0x60,0xda,0xf2,0x66,0xb6,0xbe,0xe0,0xfe,0xf6};

int main()
{
 int ds1=1,ds2=2,ds3=3,ds4=4;

 VPBDIV=0x00;
 PINSEL0=0x00000000;
 PINSEL1=0x00000000;
 IO0DIR=0x00ff0000;

 while(1)
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
 
}

void delay(unsigned int del)
{
 unsigned int i,j;
 for(i=0;i<=2*del;i++)
 for(j=0;j<=1200;j++);
}

