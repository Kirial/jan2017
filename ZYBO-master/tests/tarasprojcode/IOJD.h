#include "xil_types.h"
#include "xgpio.h"

#define GPIO_EXAMPLE_DEVICE_ID  XPAR_GPIO_0_DEVICE_ID
#define IO_CHANNEL 1

#define OUTPUT 0
#define INPUT 1

#define LOW 0
#define HIGH 1

XGpio Gpio;

unsigned int JD_DIR;
unsigned int JD_Stat;
unsigned int pins;

int setIO();
void pinMode(int pin, int mode);
void digitalWrite(int pin, int status);
void analogWrite(int pin, int time);
