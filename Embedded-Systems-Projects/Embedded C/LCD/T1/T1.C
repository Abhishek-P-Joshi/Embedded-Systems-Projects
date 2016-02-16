#include<stdio.h>
#include<reg51.h>


sbit vled=P0^0;
sbit RS=P0^1;
sbit RW=P0^2;
sbit e=P0^3;

void init_lcd();
void cmd_wr(unsigned char);
void data_wr(unsigned char);
void data_map(unsigned char);
void lcd_delay();
void enable();



void main()
{
init_lcd();

	while(1)
 	{
 		
 		
		cmd_wr(0x84);
 		lcd_delay();

		data_wr('A');
		lcd_delay();

		data_wr('B');
		lcd_delay();

		data_wr('H');
		lcd_delay();

		data_wr('I');
		lcd_delay();

		data_wr('S');
		lcd_delay();

		data_wr('H');
		lcd_delay();

		data_wr('E');
		lcd_delay();

		data_wr('K');
		lcd_delay();

		cmd_wr(0xc5);
		lcd_delay();

		data_wr('J');
		lcd_delay();

		data_wr('O');
		lcd_delay();

		data_wr('S');
		lcd_delay();

		data_wr('H');
		lcd_delay();

		data_wr('I');
		lcd_delay();

	}

}

void cmd_wr(unsigned char a)
{
 
 RS=0;
 RW=0;

 P0= ((a & 0xf0) | (P0 & 0x0f));
 enable();

 P0= (((a<<4) & 0xf0) | (P0 & 0x0f));
 enable();
}


void data_wr(unsigned char a)
{
 
 RS=1;
 RW=0;

 P0= ((a & 0xf0) | (P0 & 0x0f));
 enable();

 P0= (((a<<4) & 0xf0) | (P0 & 0x0f));
 enable();
}

void lcd_delay()
{
 int i,j;
 for(i=0;i<=5;i++)
 for(j=0;j<=120;j++);
}

void init_lcd()
{
 lcd_delay();
 lcd_delay();
 lcd_delay();

 cmd_wr(0x03);
 lcd_delay();

 cmd_wr(0x03);
 lcd_delay();

 cmd_wr(0x03);
 lcd_delay();

 cmd_wr(0x20);
 lcd_delay();

 cmd_wr(0x28);
 lcd_delay();

 cmd_wr(0x06);
 lcd_delay();

 cmd_wr(0x01);
 lcd_delay();

 vled=0;
}

void enable()
{
 e=1;
 ;
 ;
 ;
 ;
 ;
 e=0;
}



