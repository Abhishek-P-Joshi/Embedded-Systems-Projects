#include<reg51f.h>
			  
sbit en1=P1^0;
sbit dcm1_1=P1^1;
sbit dcm1_2=P1^2;
sbit dcm2_1=P1^3;
sbit dcm2_2=P1^4;
sbit en2=P1^5;

void forward();
void reverse();


void forward()
{
	en1 = 1;
	en2 = 1;
	dcm1_1 = 1;
	dcm1_2 = 0;
	dcm2_1 = 0;
	dcm2_2 = 1;
}

void reverse()
{
	en1 = 1;
	en2 = 1;
	dcm1_1 = 0;
	dcm1_2 = 1;
	dcm2_1 = 1;
	dcm2_2 = 0;
}

