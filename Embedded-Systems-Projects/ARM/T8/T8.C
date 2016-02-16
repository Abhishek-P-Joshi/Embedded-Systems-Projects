#include<LPC214X.h>
#include<stdio.h>

unsigned char disp[25]={0xfc,0x60,0xda,0xf2,0x66,0xb6,0xbe,0xe0,0xfe,0xf6,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xee,0x3e,0x9c,0x7a,0x9e,0x8e};
char ds1='0',ds2='0',ds3='0',ds4='0';
int k;
int scan_no;

void delay(unsigned int);
void display(void);
void init(void);
void init_timer(void);
//void test_display();
void incrementd(void);
void disp_blank(void);
void scanner(void);
void adisp1(void);
void adisp2(void);
void adisp3(void);
void adisp4(void);

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

  init();
 
  //test_display();
  while(1)
  {
  	delay(1000);
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
					adisp1();
					scan_no=1;
					break;
		
		case 1:
					scan_no=2;
					break;

		case 2:
					scan_no=3;
					break;

		case 3:
					disp_blank();
					scan_no=4;
					break;

		case 4:
					IO1DIR=0x00020000;
					adisp2();
					scan_no=5;
					break;
		
		case 5:
					scan_no=6;
					break;

		case 6:
					scan_no=7;
					break;

		case 7:
					disp_blank();
					scan_no=8;
					break;
		
		case 8:
					IO1DIR=0x00040000;
					adisp3();
					scan_no=9;
					break;
		
		case 9:
					scan_no=10;
					break;

		case 10:
					scan_no=11;
					break;

		case 11:
					disp_blank();
					scan_no=12;
					break;			
	
		case 12:
					IO1DIR=0x00080000;
					adisp4();
					scan_no=13;
					break;
		
		case 13:
					scan_no=14;
					break;

		case 14:
					scan_no=15;
					break;

		case 15:
					disp_blank();
					scan_no=0;
					break;
	}
}

void disp_blank()
{
 IO0PIN=0x00000000;
}

void adisp1()
{
 IO0SET=disp[ds1-'0']<<16;
  delay(5);
  IO0CLR=disp[ds1-'0']<<16;;
}

void adisp2()
{

 IO0SET=disp[ds2-'0']<<16;
  delay(5);
  IO0CLR=disp[ds2-'0']<<16;
}

void adisp3()
{

 IO0SET=disp[ds3-'0']<<16;
  delay(5);
  IO0CLR=disp[ds3-'0']<<16;
}

void adisp4()
{
 
 IO0SET=disp[ds4-'0']<<16;
  delay(5);
  IO0CLR=disp[ds4-'0']<<16;
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

