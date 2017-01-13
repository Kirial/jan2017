#ifndef DISPLAY_C
#define DISPLAY_C

#include "meta.h"

void console(char* string) {
  printf("%s", string);
}

void display_init(int* frame, long width, long height, long stride) {
  displayFrame = frame;
  displayWidth = width;
  displayHeight = height;
  displayStride = stride;
}

#endif
