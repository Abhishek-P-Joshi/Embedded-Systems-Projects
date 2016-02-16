#include<stdio.h>
#include<Reg51f.h>

void init_uart();
void clr_screen();
void home_screen();
void uart_delay(unsigned int);
void tx(unsigned char);
unsigned char rx();

unsigned char tx_data;

void main()
{
 init_uart();

 while(1)
 {
  tx_data=rx();
  uart_delay(1);

  tx(tx_data);
  uart_delay(1);
 }

}

void init_uart()
{
 TMOD|=0x20;
 TH1=0xFD;
 TR1=1;
 SCON=0x53;
}

void clr_screen()
{
 tx(0x1b);
 uart_delay(1);
 tx('[');
 uart_delay(1);
 tx('2');
 uart_delay(1);
 tx('J');
 uart_delay(1);
}

void home_screen()
{
 tx(0x1b);
 uart_delay(1);
 tx('[');
 uart_delay(1);
 tx('H');
 uart_delay(1);
}

void tx(unsigned char tx_data)
{
 while(TI!=1);
 SBUF=tx_data;
 TI=0;
}

unsigned char rx()
{
 while(RI!=1);
 tx_data=SBUF;
 RI=0;
 return(tx_data);
}


void uart_delay(unsigned int del)
{
 int j,i;
 for(i=0;i<=del;i++)
  for(j=0;j<=120;j++);

}
