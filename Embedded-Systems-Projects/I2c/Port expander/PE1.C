#include<reg51f.h>
#include<i2c.h>

int i;
unsigned char result,temp1,name;

void wr_PE(unsigned char);
unsigned char read_PE();
//void display();


void main()
{
 init_lcd();
 //wr_PE();
 
 while(1)
 {
  wr_PE(0x00);
  result=read_PE();
  P0=result;
 }
}

void wr_PE(unsigned char temp1)
{
 start_i2c();

 shout_i2c(0x40); //device address and write mode
 ack_i2c();

 shout_i2c(temp1); //data
 ack_i2c();


 stop_i2c();

}

unsigned char read_PE()
{
 start_i2c();

 shout_i2c(0x41); //device address and read mode
 ack_i2c();

 /*shout_i2c(0x00); //start address high
 ack_i2c();

 shout_i2c(0x00); //start address low
 ack_i2c();

 start_i2c();

 shout_i2c(0xA1); //device address and read mode
 ack_i2c(); */
 
 name=shin_i2c();
 nack_i2c();
  
 stop_i2c();
 return (name);
}

/*void display()
{
 cmd_wr(0x80);
 delay(2);
 for(i=0;i<=4;i++)
 {
  data_wr(name1[i]);
  delay(2);
 }

}*/





