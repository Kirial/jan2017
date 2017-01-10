#ifndef META_C
#define META_C

#include "display.h"
#include "stdio.h"

/*
void console(char* string) {
  printf("%s",string);
  //xil_print("%s",string);
}
*/

void setup(int *frame, long width, long height, long stride) {

  display_init(frame, width, height,stride);

}

void loop() {

}

#endif
