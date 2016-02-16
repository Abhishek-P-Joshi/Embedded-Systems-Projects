#include<LPC214X.h>

unsigned int cmd_data;

void init_lcd(void);
void data_wr(unsigned int);
void cmd_wr(unsigned int);
void toggle(void);
void lcd_delay(unsigned int);


int main()
{
    VPBDIV = 0x00;
	PINSEL0 = 0X00000000;
	PINSEL1=0x00000000;
    IO0DIR=0x00ff0000;

	init_lcd();

	cmd_wr(0x80);
	data_wr('H');
	data_wr('I');
	while(1);

}



void init_lcd()
{
	lcd_delay (3);
	lcd_delay (3);
	lcd_delay (3);

	cmd_data=0x03;
	cmd_wr(cmd_data);

	
	cmd_data=0x03;
	cmd_wr(cmd_data);
	
	
	cmd_data=0x03;
	cmd_wr(cmd_data);
	//lcd_delay(3);
	
	cmd_data=0x20;
	cmd_wr(cmd_data);
	//lcd_delay(3);
		
	cmd_data=0x28;
	cmd_wr(cmd_data);
//	lcd_delay(3);

	cmd_data=0x06;
	cmd_wr(cmd_data);
//	lcd_delay(3);

	cmd_data=0x01;
	cmd_wr(cmd_data);
//	lcd_delay(3);

	IO0CLR=0x00ff0000; //vled=0;
}


void cmd_wr(unsigned int var_data)
{

	IO0CLR=0x00ff0000;

	IO0SET =((var_data & 0xf0)<<16) | (IO0PIN & 0x000f0000);
	toggle();

	IO0CLR = 0X00FF0000;
	var_data=var_data<<4;
	IO0SET =((var_data & 0xf0)<<16) | (IO0PIN & 0x000f0000);
	toggle();
	lcd_delay(3);
}


void data_wr(unsigned int var_data)
{

	IO0CLR=0x00ff0000;
	IO0SET=0x00020000;

	IO0SET =((var_data & 0xf0)<<16) | (IO0PIN & 0x000f0000);
	toggle();
	
	IO0CLR=0x00ff0000;
	IO0SET=0x00020000;
	
	var_data=var_data<<4;
	IO0SET =((var_data & 0xf0)<<16) | (IO0PIN & 0x000f0000);
	toggle();
	lcd_delay(3);
}


void toggle()
{

IO0SET=0x00080000;
lcd_delay(1);
IO0CLR=0x00080000;
}

void lcd_delay(unsigned int x)
{
unsigned int i,j;

for (i=0;i<=2*x;i++)
	{
	for (j=0;j<=1200;j++);
	}
}
