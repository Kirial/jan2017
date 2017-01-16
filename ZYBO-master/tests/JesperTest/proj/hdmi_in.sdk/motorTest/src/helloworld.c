/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include "IOJD.h"
#include "Motorstyring.h"
#include "platform.h"
#include "sleep.h"
#include "xil_printf.h"
#include <stdio.h>
int kl = 0;
int cm = 0;
void runDemo();
int main() {
	printf("Hello World\n\r");
  init_platform();
  int i;
  printf("Hello World\n\r");
  cleanup_platform();

  if (setIO(OUTPUT_DIVICE) != XST_SUCCESS) {
    print("ERROR\n\r");
  }
  for (i = 0; i < pins; i++) {
    pinMode(i, OUTPUT);
  }

  // runDemo();
  /*
   while (1) {

   rollForward();
  }
*/


  for (cm = 0; i < 1; i++) {
    frem();
    //stop();
  }

  return 0;
}

void runDemo() {
  int i;
  if (setIO(OUTPUT_DIVICE) != XST_SUCCESS) {
    print("ERROR\n\r");
  }
  for (i = 0; i < pins; i++) {
    pinMode(i, OUTPUT);
  }
  sleep(2);

  for (i = 0; i < pins; i++) {
    digitalWrite(i, HIGH);
    sleep(1);
  }

  for (i = 0; i < pins; i++) {
    digitalWrite(i, LOW);
    sleep(1);
  }
}
