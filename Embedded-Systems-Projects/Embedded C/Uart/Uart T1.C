#include<stdio.h>
#include<Reg51f.h>

void init_uart();
void clr_screen();
void home_screen();
void tx(unsigned char);
void delay(unsigned int);


void main()
{
 init_uart();
 clr_screen();
 while(1)
 {
  home_screen();
  tx('H');
  delay(2);

  tx('E');
  delay(2);
 }		   
}

void init_uart()
{
 TMOD=0x20;
 TH1=0xFD;
 TR1=1;
 SCON=0x53;
}

void clr_screen()
{
 tx(0x1b);
 delay(1);
 tx('[');
 delay(1);
 tx('2');
 delay(1);
 tx('J');
 delay(1);
}

void home_screen()
{
 tx(0x1b);
 delay(1);
 tx('[');
 delay(1);
 tx('H');
 delay(1);
}

void tx(unsigned char tx_data)
{
 while(TI!=1);
 SBUF=tx_data;
 TI=0;
}

void delay(unsigned int del)
{
 int j,i;
 for(i=0;i<=del;i++)
  for(j=0;j<=120;j++);

}


