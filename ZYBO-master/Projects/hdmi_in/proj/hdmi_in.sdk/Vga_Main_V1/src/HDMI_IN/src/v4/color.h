#ifndef COLOR_H
#define COLOR_H

// Color Struct

typedef struct Color {
  char* name;
  int red;
  int blue;
  int green;
} Color;

#include "color.c"

// Color Function Prototypes

void colorPixel(long addr, Color* c);
void getColorValues(Color c);

#endif
