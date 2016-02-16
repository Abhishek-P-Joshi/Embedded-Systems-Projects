#ifndef lcd__INCLUDED
#define lcd__INCLUDED

unsigned char p0_stat,temp,cmd_data;

sbit vled=P0^0;
sbit rs=P0^1;
sbit rw=P0^2;
sbit e=P0^3;

void cmd_wr(unsigned char);
void toggle();
void data_map(unsigned char);
void data_wr(unsigned char);
void delay(unsigned int);

void init_lcd()
{
	cmd_data=0x03;
	cmd_wr(cmd_data);
	delay(1);

	cmd_data=0x03;
	cmd_wr(cmd_data);
	delay(1);

	cmd_data=0x03;
	cmd_wr(cmd_data);
	delay(1);

	cmd_data=0x20;
	cmd_wr(cmd_data);
	delay(1);

	cmd_data=0x28;
	cmd_wr(cmd_data);
	delay(1);

	cmd_data=0x06;
	cmd_wr(cmd_data);
	delay(1);

	cmd_data=0x01;
	cmd_wr(cmd_data);
	delay(1);

	vled=0;
}

void cmd_wr(unsigned char var_cmd)
{
	rs=0;
	rw=0;
	
	data_map(var_cmd);
	toggle();

	var_cmd=var_cmd<<4;

	data_map(var_cmd);
	toggle();
}


void toggle()
{
	e=1;
	_nop_();
	_nop_();
	_nop_();
	_nop_();
	_nop_();
	e=0;
}

void data_map(unsigned char var_data)
{
	temp=var_data & 0xf0;
	p0_stat=P0 & 0x0f;
	P0=p0_stat | temp;
}

void data_wr(unsigned char var_disp)
{
	rs=1;
	rw=0;
	
	data_map(var_disp);
	toggle();

	var_disp=var_disp<<4;

	data_map(var_disp);
	toggle();
}

void delay(unsigned int d)
{
	unsigned int d1,d2;

	for(d1=0;d1<d;d1++)
	{
		for(d2=0;d2<120;d2++);
	}
}

#endif