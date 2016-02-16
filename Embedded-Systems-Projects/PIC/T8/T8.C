#include<PIC.h>
#include<stdio.h>

#define sl1 RA1
#define sl2 RC0
#define sl3 RC1
#define sl4 RC2

unsigned char disp[25]={0xfc,0x60,0xda,0xf2,0x66,0xb6,0xbe,0xe0,0xfe,0xf6,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xee,0x3e,0x9c,0x7a,0x9e,0x8e};
char ds1='0',ds2='0',ds3='0',ds4='0';
int k;
int scan_no;

void delay(unsigned int);
void display();
void init();
void init_timer();
//void test_display();
void incrementd();
void disp_blank();
void scanner();
void adisp1();
void adisp2();
void adisp3();
void adisp4();

interrupt void isr_t0()
{
 init_timer();
 scanner();
}

void main()
{
    TRISB=0x00;
	TRISA=0x00;
	TRISC=0x00;

  init();
  GIE=1;
  PEIE=1;
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
 TMR1H=0xFC;
 TMR1L=0x18;
 T1CON=0x01;
 TMR1IE=1;
 TMR1IF=0;
}

void scanner()
{
 switch (scan_no)
    {
		case 0:
					sl1=0;
					sl2=1;
					sl3=1;
					sl4=1;
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
					sl1=1;
					sl2=0;
					sl3=1;
					sl4=1;
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
					sl1=1;
					sl2=1;
					sl3=0;
					sl4=1;
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
					sl1=1;
					sl2=1;
					sl3=1;
					sl4=0;
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
 PORTB=0x00;
}

void adisp1()
{
 k=ds1-'0';
 PORTB=disp[k];
}

void adisp2()
{
 k=ds2-'0';
 PORTB=disp[k];
}

void adisp3()
{
 k=ds3-'0';
 PORTB=disp[k];
}

void adisp4()
{
 k=ds4-'0';
 PORTB=disp[k];
}


void delay(unsigned int del)
{
int d1,d2;
 for(d1=0;d1<=del;d1++)
 	for(d2=0;d2<=120;d2++);
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