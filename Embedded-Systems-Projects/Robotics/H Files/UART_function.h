#include<reg51f.h>

void init_uart();
void tx(unsigned char);
void rx();
void delay(unsigned int);
void home_screen();
void clr_screen();

unsigned char rx_data, tx_data;

void init_uart()
{
	SCON =	0x52;
	TMOD |= 0x20;
	TH1 = 0XFD;
	TR1 = 1;
}

void tx(unsigned char tx_data)
{
	while(!TI);
	SBUF = tx_data;
	TI = 0;
}


void rx()
{
	while(!RI);
	rx_data = SBUF;
	RI = 0;
}


void delay(unsigned int del)
{
	unsigned int d1, d2;
	for(d1=0; d1<del; d1++)
	{
		for(d2=0; d2<120; d2++);
	}
}

void home_screen()
{
	tx(0x1b);
	delay(100);
	tx('[');
	delay(100);
	tx('H');
	delay(100);
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