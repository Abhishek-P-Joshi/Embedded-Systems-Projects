#include<reg51f.h>
#include<i2c.h>


unsigned char secs,mins,hours,sec1,sec2,hours1,hours2,mins1,mins2;
int i;

void wr_rtc();
void read_rtc();
void display();


void main()
{
 init_lcd();
 wr_rtc();
 
 while(1)
 {
  read_rtc();
  display();
 }
}

void wr_rtc()
{
 start_i2c();

 shout_i2c(0xA2); //device address and write mode
 ack_i2c();

 shout_i2c(0x00); //control status 1 address
 ack_i2c();

 shout_i2c(0x00); //control status 1 data
 ack_i2c();

 shout_i2c(0x00); //control status 2 data
 ack_i2c();

 shout_i2c(0x55); //seconds
 ack_i2c();

 shout_i2c(0x59); //mins
 ack_i2c();

 shout_i2c(0x12); //hours
 ack_i2c();

 stop_i2c();

}

void read_rtc()
{
 start_i2c();

 shout_i2c(0xA2); //device address and write mode
 ack_i2c();

 shout_i2c(0x02); //sec reg address
 ack_i2c();

 //shout_i2c(0x00); //control status 1 data
 //ack_i2c();

 //shout_i2c(0x00); //control status 2 data
 //ack_i2c();

 start_i2c();

 shout_i2c(0xA3); //device address and read mode
 ack_i2c();
 
 secs=shin_i2c();
 ack_i2c();
 secs=secs&0x7f;
 
 mins=shin_i2c();
 ack_i2c();
 mins=mins&0x7f;

 hours=shin_i2c();
 nack_i2c();
 hours=hours&0x3f;
 
 stop_i2c();

}

void display()
{
 cmd_wr(0x80);
 delay(2);
 
  hours1=hours&0xf0;
  hours1=hours1>>4;
  hours2=hours&0x0f;

  mins1=mins&0xf0;
  mins1=mins1>>4;
  mins2=mins&0x0f;

  sec1=secs&0xf0;
  sec1=sec1>>4;
  sec2=secs&0x0f;
  

  data_wr(hours1+'0');
  delay(2);

  data_wr(hours2+'0');
  delay(2);

  data_wr(':');
  delay(2);

  data_wr(mins1+'0');
  delay(2);

  data_wr(mins2+'0');
  delay(2);		  	  --------------------------------------------------------

  data_wr(':');
  delay(2);

  data_wr(sec1+'0');
  delay(2);

  data_wr(sec2+'0');
  delay(2);

}





