/*
 * IOJD.c
 *
 *  Created on: 13/01/2017
 *      Author: taras
 */



#include "IOJD.h"
#include <stdio.h>

unsigned int JD_DIR = 0;
unsigned int JD_Stat = 0;
unsigned int pins = 8;
int setIO(){
	int Status;
	Status = XGpio_Initialize(&Gpio, GPIO_EXAMPLE_DEVICE_ID);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}
	return XST_SUCCESS;
}

void pinMode(int pin, int mode){

	if(pin > pins || pin < 0 || mode < 0 || mode > 1){
		return;
	}

	JD_DIR = JD_DIR | (0 << (mode <<pin));
	XGpio_SetDataDirection(&Gpio, IO_CHANNEL, JD_DIR);
}

void digitalWrite(int pin, int status){
	if(pin > pins || pin < 0 || status < 0 || status > 1){
		return;
	}

	JD_Stat = JD_Stat | (0 << (status <<pin));
	XGpio_DiscreteWrite(&Gpio, IO_CHANNEL, JD_Stat);

}


void analogWrite(int pin, int time){

	printf("to be made");
}
