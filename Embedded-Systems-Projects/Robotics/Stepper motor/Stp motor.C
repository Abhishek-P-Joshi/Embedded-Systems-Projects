#include<reg51f.h>

sbit stm1=P3^4;
sbit stm2=P3^5;
sbit stm3=P3^6;
sbit stm4=P3^7;


void delay(unsigned int);

void main()
{
 while(1)
 {
 stm1=1;
 stm2=0;
 stm3=0;
 stm4=0;
 delay(20);

 stm1=0;
 stm2=1;
 stm3=0;
 stm4=0;
 delay(20);

 stm1=0;
 stm2=0;
 stm3=1;
 stm4=0;
 delay(20);

 stm1=0;
 stm2=0;
 stm3=0;
 stm4=1;
 delay(20);
 
 }

}

void delay(unsigned int a)
{
 int i,j;

 for(i=0;i<=a;i++)
 for(j=0;j<=120;j++);
}


