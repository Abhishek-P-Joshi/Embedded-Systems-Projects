#include<reg51f.h>
#include<i2c.h>

int adcvolt;
unsigned char adc,adc1,adc2,adc3,adc4,adc5,temp1,adc6,adc7,adc8,temp2;
unsigned char asciitab[16]={"0123456789ABCDEF"};
float i=1.961;

void read_adc();
void display();


void main()
{
 init_lcd();

 while(1)
 {
  read_adc();
  display();
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

void display()
{
 cmd_wr(0x80);
 delay(2);
 adc1=adc&0xf0;
 adc1=adc1>>4;
 adc2=adc&0x0f;

 adc3=adc/100;
 temp1=adc%100;
 adc4=temp1/10;
 adc5=temp1%10;

 data_wr(asciitab[adc1]);
 delay(2);

 data_wr(asciitab[adc2]);
 delay(2);

 cmd_wr(0xC0);
 delay(2);

 data_wr(asciitab[adc3]);
 delay(2);

 data_wr(asciitab[adc4]);
 delay(2);

 data_wr(asciitab[adc5]);
 delay(2);

 adcvolt=adc*i;
 adc6=adcvolt/100;
 temp2=adcvolt%100;
 adc7=temp2/10;
 adc8=temp2%10;
 
 cmd_wr(0x8B);
 delay(2);

 data_wr(asciitab[adc6]);
 delay(2);

 data_wr('.');
 delay(2);

 data_wr(asciitab[adc7]);
 delay(2);

 data_wr(asciitab[adc8]);
 delay(2);

 data_wr('V');
 delay(2);
 
}








