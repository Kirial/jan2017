#include "xil_types.h"
#include "xgpio.h"

#define OUTPUT_DIVICE  XPAR_AXI_GPIO_1_DEVICE_ID
#define IO_CHANNEL 1

#define OUTPUT 0
#define INPUT 1

#define LOW 0
#define HIGH 1

u8 JDDIR;
u8 JDStat;
unsigned int pins;

XGpio Gpio;

int setIO();
void pinMode(int pin, int mode);
void digitalWrite(int pin, int status);
void analogWrite(int pin, int time);
