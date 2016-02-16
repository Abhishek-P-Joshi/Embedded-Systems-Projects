#include<stdio.h>
#include<Reg51f.h>

sbit e=P0^3;
sbit rw=P0^2;
sbit rs=P0^1;
sbit vled=P0^0;

void init_uart();
void uart_delay(unsigned int);
void tx(unsigned char);
unsigned char rx();
void clr_screen();
void home_screen();
void init_lcd();
void lcd_delay(unsigned int);
void cmd_wr(unsigned char);
void data_wr(unsigned char);
void data_mapping(unsigned char);
void toggle(); 


int i,j;
unsigned char s[5],cmd_data,tx_data;

void main()
{
 init_uart();
 init_lcd();

 while(1)
 {
 for(i=0;i<=4;i++)
 {
  s[i]=rx();
  //data_wr(s[i]);
  uart_delay(1);
 }
  cmd_wr(0x80);
  for(i=0;i<=4;i++)
  {
   data_wr(s[i]);
   lcd_delay(1);
  }	
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

void init_lcd()
{
	lcd_delay (3);
	lcd_delay (3);
	lcd_delay (3);

	cmd_data=0x03;
	cmd_wr(cmd_data);
	lcd_delay(3);
	
	cmd_data=0x03;
	cmd_wr(cmd_data);
	lcd_delay(3);
	
	cmd_data=0x03;
	cmd_wr(cmd_data);
	lcd_delay(3);
	
	cmd_data=0x20;
	cmd_wr(cmd_data);
	lcd_delay(3);
		
	cmd_data=0x28;
	cmd_wr(cmd_data);
	lcd_delay(3);

	cmd_data=0x06;
	cmd_wr(cmd_data);
	lcd_delay(3);

	cmd_data=0x01;
	cmd_wr(cmd_data);
	lcd_delay(3);

	vled=0;
}


void cmd_wr(unsigned char var_data)
{
	rs=rw=0;
	data_mapping(var_data);
	toggle();
	var_data=var_data<<4;
	data_mapping(var_data);
	toggle();
}


void data_wr(unsigned char var_data)
{	
	rs=1;
	rw=0;
	data_mapping(var_data);
	toggle();
	var_data=var_data<<4;
	data_mapping(var_data);
	toggle();
}


void data_mapping(unsigned char var_data1)
{
	P0=(var_data1&0xf0)|(P0&0x0f);
}

void toggle()
{
e=1;
;
;
;
;
;
e=0;
}

void lcd_delay(unsigned int x)
{
unsigned int i,j;

for (i=0;i<=2*x;i++)
	{
	for (j=0;j<=120;j++);
	}
}
