#include<reg51f.h>
#include<i2c.h>
#include<DCMotor.h>
#include<UART_function.h>
#include<lcd.h>

int adcvolt,j,i;
unsigned char adc,adc1,adc2,adc3,adc4,adc5,temp1,adc6,adc7,adc8,temp2;
unsigned char asciitab[16]={"0123456789ABCDEF"};
unsigned char disp1[20]={"MOTOR FORWARD"};
unsigned char disp2[20]={"MOTOR REVERSE"};
unsigned char disp3[20]={"MOTOR LEFT"};
unsigned char disp4[20]={"MOTOR RIGHT"};

//float i=1.961;

void read_adc();
void display();
void calc();


void main()
{
  init_uart();
 clr_screen();
  
  while(1)
  {
  adc3='0';
  adc4='7';
  adc5='5';
  display();
  //read_adc();
  //calc();
  
  
  if(adc3>='0'&&adc4>'3'&&adc5>'0'&&adc4<'5')
   {
     nxt_line();
	 //uart_delay(100);
	 for(j=0;j<=13;j++)
	 {
	  tx(disp1[j]);	//motor forward
	 }
   }

   if(adc3>='0'&&adc4>'6'&&adc5>'0'&&adc4<'9')
   {
	 nxt_line();
     for(i=0;i<=13;i++)
	 {
	  	  tx(disp2[i]);	 //motor reverse
	 }
   }

   if(adc3>='0'&&adc4>'9'&&adc5>'0'&&adc3<'2')
   {
     nxt_line();
	 for(i=0;i<=11;i++)
	 {
	  tx(disp3[i]);	//motor right
	 }
   }

   if(adc3>'1'&&adc4>'0'&&adc5>'0')
   {
     nxt_line();
	 for(i=0;i<=10;i++)
	 {
	  tx(disp4[i]);	 //motor left
	 }
   }
   
  }
}



void read_adc()
{
 start_i2c();

 shout_i2c(0x90); //device address and write mode
 ack_i2c();

 shout_i2c(0x01); //control byte
 ack_i2c();

 start_i2c();

 shout_i2c(0x91); //device address and read mode
 ack_i2c();
 
 adc=shin_i2c();
 nack_i2c();
 
 stop_i2c();

}

void calc()
{
  adc3=adc/100;
 temp1=adc%100;
 adc4=temp1/10;
 adc5=temp1%10;

 adc3=asciitab[adc3];
 adc4=asciitab[adc4];
 adc5=asciitab[adc5];
 
}


void display()
{
 //clr_screen();
 home_screen();
 tx(adc3);
 //	uart_delay(100);
 tx(adc4);
 //	uart_delay(100);
 tx(adc5);
// 	uart_delay(100);

 
 }


