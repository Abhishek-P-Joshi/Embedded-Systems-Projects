#include<reg51f.h>


sbit EN1 = P1^0;
sbit DCM1 = P1^1;
sbit DCM2 = P1^2;
sbit DCM3 = P1^3;
sbit DCM4 = P1^4;
sbit EN2 = P1^5;

void init_uart();
void disp_motor();
unsigned char rx();
void tx(unsigned char);
void delay(unsigned int);
void process_A();
void process_B();
void process_C();

unsigned char receive,ch;

void main()
{

 init_uart();

 disp_motor();

 while(1)
 {
 receive=rx();
 tx(receive);
 

 if(receive=='a'||receive=='A')
 process_A();
 else if(receive=='b'||receive=='B')
 process_B();
  else if(receive=='c'||receive=='C')
 process_C();
 }
 }

 void process_A()
 {
  EN1=1;
  DCM1=1;
  DCM2=0;
 }
 void process_B()
 {
  EN1=1;
  DCM1=0;
  DCM2=1;
 }

 void process_C()
 {
  EN1=0;
 }

 void init_uart()
 {
   TMOD=0x20;
   TH1=0xfd;
   TR1=1;
   SCON=0x53;
 }

 unsigned char rx()
 {
  while(RI==0);
  ch=SBUF;
  RI=0;
  return(ch);
 }

 void tx(unsigned char x)
 {
 while(TI==0);
 SBUF=x;
 TI=0;
 }

 void disp_motor()
 {
  unsigned char disp[8]="DC MOTOR";
  unsigned char disp1[13]="A - ANTICLOCK";
  unsigned char disp2[10]="B - CLOCK";
  unsigned char disp3[10]="C - STOP";
  int i;
  for(i=0;i<=7;i++)
  {
  tx(disp[i]);
  delay(2);
  }

  for(i=0;i<=13;i++)
  {
  tx(disp1[i]);
  delay(2);
  }

  for(i=0;i<=9;i++)
  {
  tx(disp2[i]);
  delay(2);
  }

  for(i=0;i<=8;i++)
  {
  tx(disp3[i]);
  delay(2);
  }
 }

void delay(unsigned int x)
{
 int i,j;
 for(i=0;i<=x;i++)
 for(j=0;j<=120;j++);

}

	  