

unsigned char p0_stat,temp;

#define vled RB0
#define rs RB1
#define rw RB2
#define e RB3

void cmd_wr(unsigned char);
void toggle();
void data_map(unsigned char);
void data_wr(unsigned char);



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
	;
	;
	;
	;
	;
	e=0;
}

void data_map(unsigned char var_data)
{
	temp=var_data & 0xf0;
	p0_stat=PORTB & 0x0f;
	PORTB=p0_stat | temp;
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


