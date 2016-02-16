#include<reg51f.h>
#include<i2c.h>


unsigned char secs,mins,hours,sec1,sec2,hours1,hours2,mins1,mins2;
unsigned char days,weekdays,months,year,days1,days2,mon1,mon2,year1,year2;
unsigned char wk4[3]={"WED"},wk1[3]={"SUN"},wk2[3]={"MON"},wk3[3]={"TUE"},wk5[3]={"THU"},wk6[3]={"FRI"},wk7[3]={"SAT"};
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

 shout_i2c(0x50); //seconds
 ack_i2c();

 shout_i2c(0x59); //mins
 ack_i2c();

 shout_i2c(0x23); //hours
 ack_i2c();

 shout_i2c(0x31); //days
 ack_i2c();

 shout_i2c(0x03); //weekdays
 ack_i2c();

 shout_i2c(0x12); //months
 ack_i2c();

 shout_i2c(0x15); //year
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
 ack_i2c();
 hours=hours&0x3f;

 days=shin_i2c();
 ack_i2c();
 days=days&0x3f;

 weekdays=shin_i2c();
 ack_i2c();
 weekdays=weekdays&0x07;

 months=shin_i2c();
 ack_i2c();
 months=months&0x1f;

 year=shin_i2c();
 nack_i2c();
 
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
  
  days1=days&0xf0;
  days1=days1>>4;
  days2=days&0x0f;

  mon1=months&0xf0;
  mon1=mon1>>4;
  mon2=months&0x0f;

  year1=year&0xf0;
  year1=year1>>4;
  year2=year&0x0f;

    
  data_wr(hours1+'0');
  delay(2);

  data_wr(hours2+'0');
  delay(2);

  data_wr(':');
  delay(2);

  data_wr(mins1+'0');
  delay(2);

  data_wr(mins2+'0');
  delay(2);		  	 

  data_wr(':');
  delay(2);

  data_wr(sec1+'0');
  delay(2);

  data_wr(sec2+'0');
  delay(2);

  cmd_wr(0xC0);

  data_wr(days1+'0');
  delay(2);

  data_wr(days2+'0');
  delay(2);

  data_wr('/');
  delay(2);

  data_wr(mon1+'0');
  delay(2);

  data_wr(mon2+'0');
  delay(2);

  data_wr('/');
  delay(2);

  data_wr(year1+'0');
  delay(2);

  data_wr(year2+'0');
  delay(2);

  cmd_wr(0x8D);
  
  if(weekdays==0x00)
  	{
	 	for(i=0;i<=2;i++)
      	{
       	data_wr(wk1[i]);
       	delay(2);
      	}	
	 }
  if(weekdays==0x01)
	 	{
		  for(i=0;i<=2;i++)
      		{
       			data_wr(wk2[i]);
       			delay(2);
      		}	
		 }
 if(weekdays==0x02)
		 {
			  for(i=0;i<=2;i++)
    		  {
       			data_wr(wk3[i]);
       			delay(2);
      		  }	
		 }
	 
if(weekdays==0x03)
{
		   for(i=0;i<=2;i++)
      {
       data_wr(wk4[i]);
       delay(2);
      }	

}

if(weekdays==0x04)
	 	  {
		   for(i=0;i<=2;i++)
      {

       data_wr(wk5[i]);
       delay(2);
      }	
		  }

if(weekdays==0x05)
	 	  {
		   for(i=0;i<=2;i++)
      {
       data_wr(wk6[i]);
       delay(2);
      }	
		   }

if(weekdays==0x06)
	 	{
		 for(i=0;i<=2;i++)
      {
       data_wr(wk7[i]);
       delay(2);
      }	
		}

}





