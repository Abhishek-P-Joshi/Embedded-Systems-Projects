#include<LPC214X.h>

void delay(unsigned int);
void rotate_right(void);

int main()
{
 VPBDIV=0x00;
 PINSEL0=0x00000000;
 PINSEL1=0x00000000;
 IO0DIR=0x00ff0000;

 while(1)
 {
  IO1DIR=0x00010000;
  IO0SET=0x00FC0000;
  delay(5);
  IO0CLR=0x00FC0000;

  IO1DIR=0x00020000;
  IO0SET=0x00600000;
  delay(5);
  IO0CLR=0x00600000;

  IO1DIR=0x00040000;
  IO0SET=0x00DA0000;
  delay(5);
  IO0CLR=0x00DA0000;

  IO1DIR=0x00080000;
  IO0SET=0x00F20000;
  delay(5);
  IO0CLR=0x00F20000;
  
  }
  
}


void delay(unsigned int del)
{
 unsigned int i,j;
 for(i=0;i<=2*del;i++)
 for(j=0;j<=1200;j++);
}



