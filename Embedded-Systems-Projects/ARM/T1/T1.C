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
  IO0SET=0x00800000;
  delay(1000);
  rotate_right();
  //delay(1000);
  IO0CLR=0x00ff0000;
  //rotate_left();
  delay(1000);
 }
}

void delay(unsigned int del)
{
 unsigned int i,j;
 for(i=0;i<=2*del;i++)
 for(j=0;j<=1200;j++);
}

void rotate_right()
{
 unsigned int i,temp1=0x00800000,temp2=0x01000000;
 /*IO0SET=IO0SET>>1;
 IO0CLR=0x00800000;
 delay(1000);

 IO0SET=IO0SET>>1;
 IO0CLR=0x00400000;
 delay(1000);
  */
 for(i=0;i<=6;i++)
 {
  temp1=temp1>>1;
  IO0SET=temp1;
  
  temp2=temp2>>1;
  IO0CLR=temp2;
  delay(1000);
  
 }
}

