#include<reg51f.h>

sbit EN1 = P1^0;
sbit DCM1 = P1^1;
sbit DCM2 = P1^2;
sbit DCM3 = P1^3;
sbit DCM4 = P1^4;
sbit EN2 = P1^5;

void delay(unsigned int);

void main()
{
  EN1=1;
  EN2=1;

 while(1)
 {
  DCM1=1;
  DCM2=0;

  DCM3=1;
  DCM4=0;

 delay(5000);

  DCM1=0;
  DCM2=1;

  DCM3=0;
  DCM4=1;

 delay(5000);

 }
}

void delay(unsigned int a)
{
 int i,j;

 for(i=0;i<=a;i++)
 for(j=0;j<=120;j++);
}


