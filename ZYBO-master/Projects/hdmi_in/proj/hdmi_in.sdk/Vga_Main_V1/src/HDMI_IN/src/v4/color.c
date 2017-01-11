#ifndef COLOR_C
#define COLOR_C

#include "meta.h"

// Colorplate

Color red = {"Red",255,0,0};
Color green = {"Green",0,255,0};
Color blue = {"Blue",0,0,255};
Color white = {"White",255,255,255};
Color black = {"Black",0,0,0};

// Color Functions

void colorPixel(long addr, Color* c) {
  displayFrame[addr] = c->red;
  displayFrame[addr+1] = c->green;
  displayFrame[addr+2] = c->blue;
}

void getColorValues(Color c) {

  printf("%s: R: %d, G: %d, B: %d.\n",c.name,c.red,c.green,c.blue);

}

#endif
