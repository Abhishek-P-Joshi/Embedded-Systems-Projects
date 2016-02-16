#ifndef i2c__INCLUDED
#define i2c__INCLUDED

#include<intrins.h>
#include<lcd.h>

sbit	SCL = P1^6;
sbit	SDA = P1^7;


void start_i2c();
unsigned char shin_i2c();
void shout_i2c(unsigned char);
void stop_i2c();
void ack_i2c();
void nack_i2c();


void start_i2c()
  {
   SDA=1;
   SCL=1;

   if(SDA==0)
     {

	  cmd_wr(0x8f);
	  delay(5);

	  
	  data_wr('$');
	  delay(5);
     }


	 
   if(SCL==0)
     {
	  cmd_wr(0xcf);
	  delay(5);

	  data_wr('*');
	  delay(5);
     }
	  _nop_();
	  _nop_();
	  _nop_();
	  _nop_();
	 

  SDA=0;

	 _nop_();
 	 _nop_();
 	 _nop_();
	 _nop_();


  SCL=0;

}

void shout_i2c(unsigned char var1)
{
 unsigned char x=0x80,i,y=0x00;
  
  SCL=0;

	for(i=0;i<=7;i++)
 	{			  
  		y=var1 & x;
			
		if(y==0x80)
    		{
  				SDA=1;
     		}
   		else
     		{
      			SDA=0;
     		}
  
  var1=var1<<1;
   
  
   _nop_();	   
   _nop_();
   _nop_();
   _nop_();
   _nop_();

   SCL=1;

   _nop_();
   _nop_();
   _nop_();
   _nop_();

   SCL=0;
	}			    
}



unsigned char shin_i2c()
{
 unsigned char temp=0x80,rx_val=0x00,i;

  SCL=0;

   _nop_();
   _nop_();
   _nop_();
   _nop_();
   _nop_();

   SDA=1;


for(i=0;i<=7;i++)
 {
   SCL=1;

   _nop_();
   _nop_();
   _nop_();
   _nop_();
   _nop_();

  
  if(SDA==1)
    {

     
      rx_val=rx_val | temp;
  
     }								 	
	  SCL=0;
											   

	   _nop_();
      	   _nop_();
       	   _nop_();
            	   _nop_();
	   


	 temp=temp>>1;
   }
   return(rx_val);
} 


void stop_i2c()
 {
  SDA=0;
  SCL=1;

  _nop_();
  _nop_();
  _nop_();
  _nop_();
  _nop_();

  SDA=1;

  _nop_();
  _nop_();
  _nop_();
  _nop_();

  SCL=0;

 }
void ack_i2c()
{
 SDA=0;
 SCL=0;

 _nop_();
 _nop_();
 _nop_();
 _nop_();
 _nop_();

 SCL=1;

 _nop_();
 _nop_();
 _nop_();
 _nop_();

  SCL=0;
}
  
void nack_i2c()
 {
  SDA=1;
  
  SCL=1;
  
  _nop_();
  _nop_();
  _nop_();
  _nop_();
  
  
  SCL=0;
 }   


#endif