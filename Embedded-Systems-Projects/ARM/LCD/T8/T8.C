#include<LPC214X.h>
#include<stdio.h>
#include "armlcd.h"
/*
#define sl1 RA1
#define sl2 RC0
#define sl3 RC1
#define sl4 RC2

#define e RB3
#define rw RB2
#define rs RB1
#define vled RB0
*/
unsigned char cnt[10]={'C','O','U','N','T','E','R'};
unsigned char disp[25]={0xfc,0x60,0xda,0xf2,0x66,0xb6,0xbe,0xe0,0xfe,0xf6,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xee,0x3e,0x9c,0x7a,0x9e,0x8e};
unsigned int ds1='0',ds2='0',ds3='0',ds4='0',cmd_data;
int k,i;
int scan_no;

void delay(unsigned int);
void display(void);
void init(void);
void init_timer(void);
//void test_display();
void incrementd(void);
//void disp_blank(void);
void scanner(void);
void lcd_disp(void);
void init_lcd(void);
void lcd_delay(unsigned int);
void cmd_wr(unsigned int);
void data_wr(unsigned int);
void data_mapping(unsigned char);
void toggle(void);


__irq void isr_t0()
{
    T0IR = 0x01;
	init_timer();
	scanner();
	VICVectAddr = 0x00000000;
}


int main()
{
    VPBDIV=0x00;
 PINSEL0=0x00000000;
 PINSEL1=0x00000000;
 IO0DIR=0x00ff0000;

    VICIntSelect	=	0x00000000;
	VICIntEnable	=	0x00000010;
	VICVectCntl0	=	0x00000024;
	VICVectAddr0	=	(unsigned long) isr_t0;
  
  init_lcd();
  init();

  cmd_wr(0xC0);
  for(i=0;i<=6;i++)
  {
   data_wr(cnt[i]);
  }
 

  while(1)
  {
  	lcd_disp();
	delay(5000);
	incrementd();
  }  
  
}

void init()
{
 scan_no=0;
 init_timer();
} 

void init_timer()
{
 T0CTCR=0x00;
 T0TC=0x00000000;
 T0MR0=0x00003b2f;
 T0MCR=0x0007;
 T0TCR=0x01;
}

void scanner()
{
 switch (scan_no)
    {
		case 0:
					IO1DIR=0x00010000;
					//adisp1();
					scan_no=1;
					break;
		
		case 1:
					scan_no=2;
					break;

		case 2:
					scan_no=3;
					break;

		case 3:
					//disp_blank();
					scan_no=4;
					break;

		case 4:
					IO1DIR=0x00020000;
					//adisp2();
					scan_no=5;
					break;
		
		case 5:
					scan_no=6;
					break;

		case 6:
					scan_no=7;
					break;

		case 7:
					//disp_blank();
					scan_no=8;
					break;
		
		case 8:
					IO1DIR=0x00040000;
					//adisp3();
					scan_no=9;
					break;
		
		case 9:
					scan_no=10;
					break;

		case 10:
					scan_no=11;
					break;

		case 11:
					//disp_blank();
					scan_no=12;
					break;			
	
		case 12:
					IO1DIR=0x00080000;
					//adisp4();
					scan_no=13;
					break;
		
		case 13:
					scan_no=14;
					break;

		case 14:
					scan_no=15;
					break;

		case 15:
					//disp_blank();
					scan_no=0;
					break;
	}
}


void delay(unsigned int del)
{
int d1,d2;
 for(d1=0;d1<=2*del;d1++)
 	for(d2=0;d2<=1200;d2++);
}

	  

void incrementd()
{

 ds1=ds1+1;
 if (ds1>'9')
 {
 	ds1='0';
	ds2=ds2+1;

		if (ds2>'9')
		{
		 	ds2='0';
			ds3=ds3+1;

				if (ds3>'9')
				{
				 	ds3='0';
					ds4=ds4+1;

					if(ds4>'9')
					{
					 ds1='0';
					 ds2='0';
					 ds3='0';
					 ds4='0';
					}
					
				}
				
		}
		
 }
 
}

void lcd_disp()
{
 cmd_wr(0x80);
 data_wr(ds4);
 data_wr(ds3);
 data_wr(ds2);
 data_wr(ds1);
}

/*
void init_lcd()
{
	lcd_delay (3);
	lcd_delay (3);
	lcd_delay (3);

	cmd_data=0x03;
	cmd_wr(cmd_data);

	
	cmd_data=0x03;
	cmd_wr(cmd_data);
	
	
	cmd_data=0x03;
	cmd_wr(cmd_data);
	//lcd_delay(3);
	
	cmd_data=0x20;
	cmd_wr(cmd_data);
	//lcd_delay(3);
		
	cmd_data=0x28;
	cmd_wr(cmd_data);
//	lcd_delay(3);

	cmd_data=0x06;
	cmd_wr(cmd_data);
//	lcd_delay(3);

	cmd_data=0x01;
	cmd_wr(cmd_data);
//	lcd_delay(3);

	IO0CLR=0x00ff0000; //vled=0;
}


void cmd_wr(unsigned int var_data)
{

	IO0CLR=0x00ff0000;

	IO0SET =((var_data & 0xf0)<<16) | (IO0PIN & 0x000f0000);
	toggle();

	IO0CLR = 0X00FF0000;
	var_data=var_data<<4;
	IO0SET =((var_data & 0xf0)<<16) | (IO0PIN & 0x000f0000);
	toggle();
	lcd_delay(3);
}


void data_wr(unsigned int var_data)
{

	IO0CLR=0x00ff0000;
	IO0SET=0x00020000;

	IO0SET =((var_data & 0xf0)<<16) | (IO0PIN & 0x000f0000);
	toggle();

	var_data=var_data<<4;
	IO0SET =((var_data & 0xf0)<<16) | (IO0PIN & 0x000f0000);
	toggle();
	lcd_delay(3);
}


void toggle()
{

IO0SET=0x00080000;
lcd_delay(1);
IO0CLR=0x00080000;
}

void lcd_delay(unsigned int x)
{
unsigned int i,j;

for (i=0;i<=2*x;i++)
	{
	for (j=0;j<=1200;j++);
	}
}
*/

