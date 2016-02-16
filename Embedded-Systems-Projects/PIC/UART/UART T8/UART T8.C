#include<PIC.h>
#include<stdio.h>


#define sl1 RA1
#define sl2 RC0
#define sl3 RC1
#define sl4 RC2
/*
sbit e=P0^3;
sbit rw=P0^2;
sbit rs=P0^1;
sbit vled=P0^0;*/

unsigned char cnt[10]={'C','O','U','N','T','E','R'};
unsigned char disp[25]={0xfc,0x60,0xda,0xf2,0x66,0xb6,0xbe,0xe0,0xfe,0xf6,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xee,0x3e,0x9c,0x7a,0x9e,0x8e};
unsigned char ds1='0',ds2='0',ds3='0',ds4='0',cmd_data;
int k,i;
int scan_no;

void delay(unsigned int);
void display();
void init();
void init_timer();
void incrementd();
void scanner();
void uart_disp();
void init_uart();
void uart_delay(unsigned int);
void tx(unsigned char);
void clr_screen();
void home_screen();
 


interrupt void isr_t0()
{
 init_timer();
 scanner();
}

void main()
{
  TRISB=0x00;
	TRISA=0x00;
	TRISC=0xC0;
  init_uart();
  //clr_screen();
  init();
  GIE=1;
  PEIE=1;
  //test_display();
  
  /*cmd_wr(0xC0);
  for(i=0;i<=6;i++)
  {
   data_wr(cnt[i]);
  }	*/
   while(1)
   {
    uart_disp();
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
					sl1=1;
					sl2=0;
					sl3=1;
					sl4=1;
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
					sl1=1;
					sl2=1;
					sl3=0;
					sl4=1;
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
					sl1=1;
					sl2=1;
					sl3=1;
					sl4=0;
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

void uart_disp()
{
 home_screen();
 tx(ds4);
 uart_delay(1);
 tx(ds3);
 uart_delay(1);
 tx(ds2);
 uart_delay(1);
 tx(ds1);
 uart_delay(1);
}

void init_uart()
{
 TXSTA=0x24;
 SPBRG=25;
 SPEN=1;
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
 while(TXIF!=1);
 TXREG=tx_data;
 TXIF=0;
}

void uart_delay(unsigned int del)
{
 int j,i;
 for(i=0;i<=del;i++)
  for(j=0;j<=120;j++);

}

