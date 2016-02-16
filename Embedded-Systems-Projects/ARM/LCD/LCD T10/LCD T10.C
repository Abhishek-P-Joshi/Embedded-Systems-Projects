#include<LPC214X.h>
#include<stdio.h>
#include "armlcd.h"

unsigned char sw[9]={'S','T','O','P','W','A','T','C','H'};
unsigned char disp[25]={0xfc,0x60,0xda,0xf2,0x66,0xb6,0xbe,0xe0,0xfe,0xf6,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xee,0x3e,0x9c,0x7a,0x9e,0x8e};
unsigned char ascii_tab[25]={'0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F'};
int ds1='0',ds2='0',ds3='0',ds4='0';
int p;
int k,c,a,s1_over,cnt_1sl,cnt_1sh;
int scan_no,krcount,key_code,key_ready,nkp,tb,start_buzzer,dcount,start_sw;

void delay(unsigned int);
void display(void);
void init(void);
void init_timer(void);
//void test_display();
void incrementd(void);
void scanner(void);
void buzzer(void);
void k1(void);
void key_release(void);
void init_keypad(void);
void init_display(void);
void disp_sw(void);
void process_a(void);
void process_b(void);
void process_c(void);
void keyprocess(void);
void get_key(void);
void delay_1sec(void);
void init_delay_1sec(void);
void lcd_disp(void);

__irq void isr_t0()
{
 T0IR = 0x01;
 init_timer();
 delay_1sec();
 //buzzer();
 scanner();

 if(s1_over==1)
 	{
	 incrementd();
	 s1_over=0;
	}
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
	 
  start_sw=0;
  init_lcd();
  init();

  cmd_wr(0xC0);
  for(p=0;p<=8;p++)
  {
   data_wr(sw[p]);
  }
  
  while(1)
  {
  	get_key();
	keyprocess();	
  }  
}

void init()
{
 //init_display();
 init_keypad();
 init_timer();
 init_delay_1sec();
} 

void init_timer()
{
 T0CTCR=0x00;
 T0TC=0x00000000;
 T0MR0=0x00003b2f;
 T0MCR=0x0007;
 T0TCR=0x01;
}

void init_display()
{
 ds1='9'+1;
 ds2='9'+1;
 ds3='9'+1;
 ds4='9'+1;
}

void init_keypad()
{
 IO1DIR = 0x00f00000;
 IO1SET = 0x00f00000;
 start_sw=0;
 scan_no=0;
 dcount=33;
 krcount=32;
 key_ready=0;
 nkp=0;
 start_buzzer=0;
}

void init_delay_1sec()
{
 cnt_1sl=0x0e8;
 cnt_1sh=0x04;
 s1_over=1;
}

void delay_1sec()
{
 if(s1_over!=1)
 {
  cnt_1sl--;
  if(cnt_1sl==0)
  {
   cnt_1sh--;
   if(cnt_1sh!=0)
   cnt_1sl=0x0ff;
   else
   {
	cnt_1sl=0x0e8;
	cnt_1sh=0x04;
	s1_over=1;
   }
  }
 }

}

void scanner()
{
 switch (scan_no)
    {
		case 0:
					IO1DIR=0x00010000;
					//adisp1();
					c=IO1PIN & 0x00100000;
					k1();
					scan_no=1;
					break;
		
		case 1:
					c=IO1PIN & 0x00200000;
					k1();
					scan_no=2;
					break;

		case 2:
					c=IO1PIN & 0x00400000;
					k1();
					scan_no=3;
					break;

		case 3:
					//disp_blank();
					c=IO1PIN & 0x00800000;
					k1();
					scan_no=4;
					break;

		case 4:
					IO1DIR=0x00020000;
					//adisp2();
				    c=IO1PIN & 0x00100000;
					k1();
					scan_no=5;
					break;
		
		case 5:
					c=IO1PIN & 0x00200000;
					k1();
					scan_no=6;
					break;

		case 6:
					c=IO1PIN & 0x00400000;
					k1();
					scan_no=7;
					break;

		case 7:
					//disp_blank();
					c=IO1PIN & 0x00800000;
					k1();
					scan_no=8;
					break;
		
		case 8:
					IO1DIR=0x00040000;
					//adisp3();
					c=IO1PIN & 0x00100000;
					k1();
					scan_no=9;
					break;
		
		case 9:
					c=IO1PIN & 0x00200000;
					k1();
					scan_no=10;
					break;

		case 10:
					c=IO1PIN & 0x00400000;
					k1();
					scan_no=11;
					break;

		case 11:
					//disp_blank();
					c=IO1PIN & 0x00800000;
					k1();
					scan_no=12;
					break;			
	
		case 12:
					IO1DIR=0x00080000;
					//adisp4();
					c=IO1PIN & 0x00100000;
					k1();
					scan_no=13;
					break;
		
		case 13:
					c=IO1PIN & 0x00200000;
					k1();
					scan_no=14;
					break;

		case 14:
					c=IO1PIN & 0x00400000;
					k1();
					scan_no=15;
					break;

		case 15:
					c=IO1PIN & 0x00800000;
					k1();
					//disp_blank();
					scan_no=0;
					break;
	}
}

void k1()
{
 if(key_ready==1)
 	{
	 	if(c==0)
		{
		 krcount=32;
		}
		else
		{
		 krcount=krcount-1;
		 	
			if(krcount==0)
			{
			 nkp=1;
			 start_buzzer=0;
			 krcount=32;
			}
		}
	  }
else if(dcount==33)
	{
	 	if(c==0)
		{
		 dcount=dcount-1;
		 key_code=scan_no;
		}
		//else return;
	}

else 
 {
 dcount=dcount-1;
	 if(dcount==0)
		{
		 if(c==0)
		 	{
			 key_ready=1;
			 start_buzzer=1;
			 dcount=33;
			}
		 else dcount=33;
		}
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
 if(start_sw==1)
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
}

void key_release()
{
 while(nkp!=1);
 key_ready=0;
 nkp=0;
}

/*void buzzer()
{
 if(start_buzzer==1)
 buzz=~buzz;
} */

void get_key()
{
 while(key_ready!=1)
 lcd_disp();
 a=key_code;
 key_code=ascii_tab[a];
}

void keyprocess()
{
 switch(key_code)
 	{
	 case 'A':
	 			process_a();
				break;

	 case 'B' :
	 			process_b();
				break;
	 case 'C' :
	 			process_c();
				break;
	}
	key_release();
}

void process_a()
{
 start_sw=1;
}

void process_b()
{
 start_sw=0;
}

void process_c()
{
 start_sw=0;
 ds1='0';
 ds2='0';
 ds3='0';
 ds4='0';
}

void disp_sw()
{
 ds1='9'+1;
 ds2='9'+1;
 ds3='0';
 ds4='5';
}

void lcd_disp()
{
 cmd_wr(0x80);
 data_wr(ds4);
 data_wr(ds3);
 data_wr(ds2);
 data_wr(ds1);

}
