#include<Reg51f.h>
#include<stdio.h>

sbit sl1=P2^0;
sbit sl2=P2^1;
sbit sl3=P2^2;
sbit sl4=P2^3;
sbit krl1=P2^4;
sbit krl2=P2^5;
sbit krl3=P2^6;
sbit krl4=P2^7;
sbit buzz=P1^5;

sbit e=P0^3;
sbit rw=P0^2;
sbit rs=P0^1;
sbit vled=P0^0;


unsigned char cnt[10]={'S','T','O','P','W','A','T','C','H'};
unsigned char disp[25]={0xfc,0x60,0xda,0xf2,0x66,0xb6,0xbe,0xe0,0xfe,0xf6,0xff,0xff,0xff,0xff,0xff,0xff,0xff,0xee,0x3e,0x9c,0x7a,0x9e,0x8e};
unsigned char ascii_tab[25]={'0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F'};
unsigned char ds1='0',ds2='0',ds3='0',ds4='0', cmd_data,disp_data;
int k,c,a,s1_over,cnt_1sl,cnt_1sh,i;
int scan_no,krcount,key_code,key_ready,nkp,tb,start_buzzer,dcount,start_sw;

void delay(unsigned int);
void display();
void init();
void init_timer();
void incrementd();
void scanner();
void buzzer();
void k1();
void key_release();
void init_keypad();
void init_display();
void disp_sw();
void process_a();
void process_b();
void process_c();
void keyprocess();
void get_key();
void delay_1sec();
void init_delay_1sec();
void uart_disp();
void init_uart();
void uart_delay(unsigned int);
void tx(unsigned char);
void home_screen();
void clr_screen();


void isr_t0() interrupt 1 using 1
{
 init_timer();
 delay_1sec();
 //buzzer();
 scanner();
 
 if(s1_over==1)
 	{
	 incrementd();
	 s1_over=0;
	}
}

void main()
{
  init_uart();
  start_sw=0;
  init();
  EA=1;

  /*cmd_wr(0xc0);
  for(i=0;i<9;i++)
  {
   data_wr(cnt[i]);
  }	*/
  
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
 TMOD|=0x01;
 TL0=0x66;
 TH0=0x0FC;
 TR0=1;
 ET0=1;
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
 krl1=1;
 krl2=1;
 krl3=1;
 krl4=1;
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
					sl1=0;
					sl2=1;
					sl3=1;
					sl4=1;
					//adisp1();
					c=krl1;
					k1();
					scan_no=1;
					break;
		
		case 1:
					c=krl2;
					k1();
					scan_no=2;
					break;

		case 2:
					c=krl3;
					k1();
					scan_no=3;
					break;

		case 3:
					//disp_blank();
					c=krl4;
					k1();
					scan_no=4;
					break;

		case 4:
					sl1=1;
					sl2=0;
					sl3=1;
					sl4=1;
					//adisp2();
					c=krl1;
					k1();
					scan_no=5;
					break;
		
		case 5:
					c=krl2;
					k1();
					scan_no=6;
					break;

		case 6:
					c=krl3;
					k1();
					scan_no=7;
					break;

		case 7:
					//disp_blank();
					c=krl4;
					k1();
					scan_no=8;
					break;
		
		case 8:
					sl1=1;
					sl2=1;
					sl3=0;
					sl4=1;
					//adisp3();
					c=krl1;
					k1();
					scan_no=9;
					break;
		
		case 9:
					c=krl2;
					k1();
					scan_no=10;
					break;

		case 10:
					c=krl3;
					k1();
					scan_no=11;
					break;

		case 11:
					//disp_blank();
					c=krl4;
					k1();
					scan_no=12;
					break;			
	
		case 12:
					sl1=1;
					sl2=1;
					sl3=1;
					sl4=0;
					//adisp4();
					c=krl1;
					k1();
					scan_no=13;
					break;
		
		case 13:
					c=krl2;
					k1();
					scan_no=14;
					break;

		case 14:
					c=krl3;
					k1();
					scan_no=15;
					break;

		case 15:
					c=krl4;
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
 for(d1=0;d1<=del;d1++)
 	for(d2=0;d2<=120;d2++);
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

void buzzer()
{
 if(start_buzzer==1)
 buzz=~buzz;
}

void get_key()
{
 while(key_ready!=1)
 uart_disp();
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


void uart_disp()
{
 
 home_screen();
 tx(ds4);
 tx(ds3);
 tx(ds2);
 tx(ds1);
 
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

void uart_delay(unsigned int del)
{
 int j,i;
 for(i=0;i<=del;i++)
  for(j=0;j<=120;j++);

}

