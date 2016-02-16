#include<reg51f.h>
#include<i2c.h>

unsigned char name[10]={'H','E','L','L','O'};
unsigned char name1[10],rd_d='5';
int i;

void wr_eeprom();
void read_eeprom();
void display();


void main()
{
 init_lcd();
 wr_eeprom();
 
 while(1)
 {
  read_eeprom();
  display();
 }
}

void wr_eeprom()
{
 start_i2c();

 shout_i2c(0xA0); //device address and write mode
 ack_i2c();

 shout_i2c(0x00); //start address high
 ack_i2c();

 shout_i2c(0x00); //start address low
 ack_i2c();

 for(i=0;i<=4;i++)
 {
  shout_i2c(name[i]);
  ack_i2c();
 }

 stop_i2c();

}

void read_eeprom()
{
 start_i2c();

 shout_i2c(0xA0); //device address and write mode
 ack_i2c();

 shout_i2c(0x00); //start address high
 ack_i2c();

 shout_i2c(0x00); //start address low
 ack_i2c();

 start_i2c();

 shout_i2c(0xA1); //device address and read mode
 ack_i2c();
 
 for(i=0;i<=4;i++)
 {
 name1[i]=shin_i2c();
  ack_i2c();
 }

  nack_i2c();
 
 stop_i2c();

}

void display()
{
 cmd_wr(0x80);
 delay(2);
 for(i=0;i<=4;i++)
 {
  data_wr(name1[i]);
  delay(2);
 }

}





