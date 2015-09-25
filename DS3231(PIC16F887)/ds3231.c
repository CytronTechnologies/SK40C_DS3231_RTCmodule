#include <htc.h>
#include "system.h"
#include "lcd.h"
#include "i2c.h"
#include "i2c_rtc.h"

// This configuration bits are for PIC16F877A using 20MHz Crystal or HS for OSC
#if defined (HITECH_V9_80)	//if Hi-Tech V9.80 compiler is being used
__CONFIG(HS &			// High Speed Crystal.
		 WDTDIS &		// Disable Watchdog Timer.
		 PWRTEN &		// Enable Power Up Timer.
		 BORDIS &		// Disable Brown Out Reset.
		 LVPDIS);		// Disable Low Voltage Programming.

#elif defined (HITECH_V9_82)		//else if Hi-Tech V9.82 compiler is being used
// If Hi-TECH C Compiler v9.82 is use, this configuration bit should be used
__CONFIG(FOSC_HS &			// High Speed Crystal.
		 WDTE_OFF &		// Disable Watchdog Timer.
		 PWRTE_ON &		// Enable Power Up Timer.
		 BOREN_OFF &		// Disable Brown Out Reset.
		 LVP_OFF);		// Disable Low Voltage Programming.
#endif	//end of pre-processor if condition

/*******************************************************************************
* Defination of label		                                                   *
*******************************************************************************/

/*******************************************************************************
* PRIVATE FUNCTION PROTOTYPES                                                  *
*******************************************************************************/
void init(void);
void delay_ms(unsigned int ui_value);
void RTC_WRITE(void);
/*******************************************************************************
* Global Variables                                                             *
*******************************************************************************/
char i,j,k,l;
unsigned char step=0;
unsigned char store=0;
unsigned char clksec=0;
unsigned char clkmin=0;
unsigned char clkhrs=0;
unsigned char day=0;
unsigned char date=0;
unsigned char month=0;
unsigned char year=0;

/*******************************************************************************
* MAIN FUNCTION                                                                *
*******************************************************************************/

void main (void)
{
	init();
	while(1) 	// create an infinite loop
	{
	if(SW1==0)	
	{
		RTC_WRITE();
	}


	else
	{		
			clksec=uc_i2c_rtc_get_seconds();					//read 1 byte seconds
			clkmin=	uc_i2c_rtc_get_minutes();					//read 1 byte min
			clkhrs=uc_i2c_rtc_get_hours();						//read 1 byte hrs
			day=uc_i2c_rtc_get_day();							//read 1 byte day
			date=uc_i2c_rtc_get_date();							//read 1 byte date
			month=uc_i2c_rtc_get_month();						//read 1 byte month
			year=uc_i2c_rtc_get_year();							//read 1 byte year
			
			lcd_goto(0x83);
			lcd_bcd(2,clkhrs);				//display hours
	
			lcd_putchar(':');
	
			lcd_goto(0x86);
			lcd_bcd(2,clkmin);				//display minutes
		
			lcd_putchar(':');
	
			lcd_goto(0x89);
			lcd_bcd(2,clksec);				//display second

			lcd_goto(0xc3);					// display date
			lcd_bcd(2,date);

			lcd_putchar(0x2F);

			lcd_goto(0xc6);					// display month
			lcd_bcd(2,month);

			lcd_putchar(0x2F);

			lcd_goto(0xc9);					// display year							
			lcd_bcd(2,year);
			
	}

	}		
	while(1) continue;	// infinite loop to prevent PIC from reset if there is no more program	
}	

//initialization
void init(void)
{
	TRISB = 0b00000011; //RB0 & RB1 as inputs, rest of pins of PORTB as outputs
	TRISD = 0b00000000;	//PORTD pins as outputs
	ANSEL = 0;	// SET PORTA as DIGITAL I/O for PIC16F887
	ANSELH = 0;	// SET PORTB as DIGITAL I/O for PIC16F887
	lcd_initialize();	//Initialize LCD 
	i2c_initialize();	//Initialize I2C
	i2c_rtc_initialize();//Initialize I2C for RTC (Real Time Clock)	
}

/*******************************************************************************
* PRIVATE FUNCTION: delay_ms
*
* PARAMETERS:
* ~ ui_value	- The period for the delay in miliseconds.
*
* RETURN:
* ~ void
*
* DESCRIPTIONS:
* Delay in miliseconds.
*
*******************************************************************************/
void delay_ms(unsigned int ui_value)
{
	while (ui_value-- > 0) {
		__delay_ms(1);		// macro from HI-TECH compiler which will generate 1ms delay base on value of _XTAL_FREQ in system.h
	}	
}

void RTC_WRITE(void)
{
// SET HOUR ===========================================================
	
	while(SW1==0);						//wait for SW1 to be released
	
	while(SW1 == 1)			//as long as SW1 is not press
		{		

				if(SW2==0)								//if switch 1 is pressed
				{	
				delay_ms(50);
				while(SW2==0);				//wait switch1 to depress
				delay_ms(50);
				if(clkhrs<=22)clkhrs++;
				else clkhrs=0;
				}

				else
				{
				lcd_goto(0x83);			//maintain current hour value on LCD and make it blinking
				lcd_bcd(2,clkhrs);	
				delay_ms(100);
				lcd_goto(0x83);
				lcd_putchar(' ');
				lcd_goto(0x84);
				lcd_putchar(' ');
				//delay_ms(300);
				delay_ms(150);
				}
		}
		lcd_goto(0x83);								//overwrite changed hour value on LCD
		lcd_bcd(2,clkhrs);	
		while(SW1==0);						//wait switch 1 to be depressed
		delay_ms(50);


// SET MINUTES ===========================================================
	while(SW1 == 1)						//as long as SW1 is not press
		{		

				if(SW2==0)								//if switch 1 is pressed
				{	
				delay_ms(50);
				while(SW2==0);				//wait switch1 to depress
				//delay_ms(50);
				if(clkmin<=58)clkmin++;
				else clkmin=0;
				}

			
				else
				{
				lcd_goto(0x86);			//maintain current min value on LCD and make it blinking
				lcd_bcd(2,clkmin);	
				delay_ms(100);
				lcd_goto(0x86);
				lcd_putchar(' ');
				lcd_goto(0x87);
				lcd_putchar(' ');
				//delay_ms(300);
				delay_ms(150);
				}

		}

		lcd_goto(0x86);								//overwrite changed hour value on LCD
		lcd_bcd(2,clkmin);	
		while(SW1==0);						//wait switch 1 to be depressed
		delay_ms(50);


// SET SECOND ===========================================================
	while(SW1 == 1)							//as long as SW1 is not press
		{		

				if(SW2==0)					//if switch 1 is pressed
				{	
				delay_ms(50);
				while(SW2==0);				//wait switch1 to depress
				//delay_ms(50);
				if(clksec<=58)clksec++;
				else clksec=0;
				}

				else
				{
				lcd_goto(0x89);			//maintain current sec value on LCD and make it blinking
				lcd_bcd(2,clksec);	
				delay_ms(100);
				lcd_goto(0x89);
				lcd_putchar(' ');
				lcd_goto(0x8A);
				lcd_putchar(' ');
				//delay_ms(300);
				delay_ms(150);
				}
		}

		lcd_goto(0x89);								//overwrite changed hour value on LCD
		lcd_bcd(2,clksec);	
		while(SW1==0);						//wait switch 1 to be depressed
		delay_ms(50);

	

// SET DATE ===========================================================
while(SW1 == 1)							//as long as SW1 is not press
		{		

				if(SW2==0)					//if switch 1 is pressed
				{	
				delay_ms(50);
				while(SW2==0);				//wait switch1 to depress
				//delay_ms(50);
				if(date<=30)date++;
				else date=0;
				}

				else
				{
				lcd_goto(0xc3);			//maintain current sec value on LCD and make it blinking
				lcd_bcd(2,date);	
				delay_ms(100);
				lcd_goto(0xc3);
				lcd_putchar(' ');
				lcd_goto(0xc4);
				lcd_putchar(' ');
				//delay_ms(300);
				delay_ms(150);
				}
		}

		lcd_goto(0xc3);								//overwrite changed hour value on LCD
		lcd_bcd(2,date);	
		while(SW1==0);						//wait switch 1 to be depressed
		delay_ms(50);

// SET MONTH ===========================================================
while(SW1 == 1)							//as long as SW1 is not press
		{		

				if(SW2==0)					//if switch 1 is pressed
				{	
				delay_ms(50);
				while(SW2==0);				//wait switch1 to depress
				//delay_ms(50);
				if(month<=11)month++;
				else month=1;
				}

				else
				{
				lcd_goto(0xc6);			//maintain current sec value on LCD and make it blinking
				lcd_bcd(2,month);	
				delay_ms(100);
				lcd_goto(0xc6);
				lcd_putchar(' ');
				lcd_goto(0xc7);
				lcd_putchar(' ');
				//delay_ms(300);
				delay_ms(150);
				}
		}

		lcd_goto(0xc6);								//overwrite changed hour value on LCD
		lcd_bcd(2,month);	
		while(SW1==0);						//wait switch 1 to be depressed
		delay_ms(50);




// SET YEAR ===========================================================
while(SW1 == 1)							//as long as SW1 is not press
		{		

				if(SW2==0)					//if switch 1 is pressed
				{	
				delay_ms(50);
				while(SW2==0);				//wait switch1 to depress
				//delay_ms(50);
				if(year<=20)year++;
				else year=0;
				}

				else
				{
				lcd_goto(0xc9);			//maintain current sec value on LCD and make it blinking
				lcd_bcd(2,year);	
				delay_ms(100);
				lcd_goto(0xc9);
				lcd_putchar(' ');
				lcd_goto(0xca);
				lcd_putchar(' ');
				//delay_ms(300);
				delay_ms(150);
				}
		}

		lcd_goto(0xc9);								//overwrite changed hour value on LCD
		lcd_bcd(2,year);	
		while(SW1==0);						//wait switch 1 to be depressed
		delay_ms(50);

	i2c_rtc_set_day(day);						//send changed day
	i2c_rtc_set_seconds(clksec);				//send changed second
	i2c_rtc_set_minutes(clkmin);				//send changed minute
	i2c_rtc_set_hours(clkhrs);					//send changed hour
	i2c_rtc_set_date(date);						//send changed date
	i2c_rtc_set_month(month);					//send changed month					
	i2c_rtc_set_year(year);						//send changed year

}