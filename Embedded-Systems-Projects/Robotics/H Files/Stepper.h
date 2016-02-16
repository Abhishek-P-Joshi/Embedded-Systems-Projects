#include<reg51f.h>

void full_step();
void half_step();
void delay(unsigned int);

sbit stm1 = P3^4;
sbit stm2 = P3^5;
sbit stm3 = P3^6;
sbit stm4 = P3^7;

void full_step()
{
	stm1 = 1;
	stm2 = 0;
	stm3 = 0;
	stm4 = 0; 
	delay(20);

	stm1 = 0;
	stm2 = 1;
	stm3 = 0;
	stm4 = 0; 
	delay(20);

	stm1 = 0;
	stm2 = 0;
	stm3 = 1;
	stm4 = 0; 
	delay(20);

	stm1 = 0;
	stm2 = 0;
	stm3 = 0;
	stm4 = 1; 
	delay(20);
}

void half_step()
{
	stm1 = 1;
	stm2 = 0;
	stm3 = 0;
	stm4 = 0; 
	delay(20);

	stm1 = 1;
	stm2 = 1;
	stm3 = 0;
	stm4 = 0; 
	delay(20);

	stm1 = 0;
	stm2 = 1;
	stm3 = 0;
	stm4 = 0; 
	delay(20);

	stm1 = 0;
	stm2 = 1;
	stm3 = 1;
	stm4 = 0; 
	delay(20);

	stm1 = 0;
	stm2 = 0;
	stm3 = 1;
	stm4 = 0; 
	delay(20);

	stm1 = 0;
	stm2 = 0;
	stm3 = 1;
	stm4 = 1; 
	delay(20);

	stm1 = 0;
	stm2 = 0;
	stm3 = 0;
	stm4 = 1; 
	delay(20);

	stm1 = 1;
	stm2 = 0;
	stm3 = 0;
	stm4 = 1; 
	delay(20);
}

void delay(unsigned int del)
{
	unsigned int d1, d2;
	for(d1=0; d1<del; d1++)
	{
		for(d2=0; d2<120; d2++);
	}
}