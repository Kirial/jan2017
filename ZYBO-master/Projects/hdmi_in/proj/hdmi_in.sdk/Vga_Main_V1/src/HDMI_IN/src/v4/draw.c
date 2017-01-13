#ifndef DRAW_C
#define DRAW_C

#include "meta.h"

void draw_pixel(int startX, int startY, Color* c) {

  long pixelAddr;

  pixelAddr = (displayStride * startY) + (startX * 3);

  colorPixel(pixelAddr, c);

}

void draw_rectangle();

void draw_circle();

#endif
