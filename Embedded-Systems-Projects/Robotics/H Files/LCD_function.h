void init_lcd();
void cmd_wr(unsigned char);
void data_wr(unsigned char);
void enable();

sbit vled=P0^0;
sbit rs=P0^1;
sbit rw=P0^2;
sbit e=P0^3;

void init_lcd()
{
	 delay(1);
	 delay(1);
	 delay(1);

	 cmd_wr(0x03);
	 delay(2);

	 cmd_wr(0x03);
	 delay(2);

	 cmd_wr(0x03);
	 delay(2);

	 cmd_wr(0x20);
	 delay(2);

	 cmd_wr(0x28);
	 delay(2);

	 cmd_wr(0x06);
	 delay(2);

	 cmd_wr(0x01);
	 delay(2);

	 vled = 0;
}

void cmd_wr(unsigned char cmd_data)
{
	rs = 0;
	rw = 0;
	P0 = (cmd_data & 0xf0)|(P0 & 0x0f);
	enable();
	P0 = ((cmd_data<<4) & 0xf0) | (P0 & 0x0f);
	enable();
}

void data_wr(unsigned char disp_data)
{
	rs = 1;
	rw = 0;
	P0 = (disp_data & 0xf0)|(P0 & 0x0f);
	enable();
	P0 = ((disp_data<<4) & 0xf0) | (P0 & 0x0f);
	enable();
}

void enable()
{
	e = 1;
	;
	;
	;
	;
	;
	e =	0;
}

