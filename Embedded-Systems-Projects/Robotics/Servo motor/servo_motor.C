#include<reg51f.h>


sbit SVM1=P1^6;

int i;

void delay(unsigned int);
void t1();
void t2();
void t3();

void main()
{
SVM1=0;
 //while(1)
 {
  for(i=0;i<=200;i++)
  {
   t1();
  }
  delay(500);

  for(i=0;i<=200;i++)
  {
   t2();
  }
  delay(500);

  for(i=0;i<=200;i++)
  {
   t3();
  }
  delay(500);

  for(i=0;i<=200;i++)
  {
   t2();
  }
  delay(500);

 }
}

void t1()
{
 TMOD=0x01;
   TH0=0xfC;
   TL0=0x66;
   TR0=1;
  while(TF0!=1);
  SVM1=~SVM1;
  TF0=0;
  TR0=0;
}

void t3()
{
 TMOD=0x01;
   TH0=0xf8;
   TL0=0xCD;
   TR0=1;
  while(TF0!=1);
  SVM1=~SVM1;
  TF0=0;
  TR0=0;
}

void t2()
{
 TMOD=0x01;
   TH0=0xFA;
   TL0=0x9A;
   TR0=1;
  while(TF0!=1);
  SVM1=~SVM1;
  TF0=0;
  TR0=0;
}

void delay(unsigned int x)
{
 int i,j;
 for(i=0;i<=x;i++)
 for(j=0;j<=120;j++);

}




