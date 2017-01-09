#ifndef COLOR_H
#define COLOR_H

#include "color.c"

struct color {
  int red;
  int green;
  int blue;
};

struct color red = {255,0,0};
struct color green = {0,255,0};
struct color blue = {0,0,255};
struct color white = {255,255,255};
struct color black = {0,0,0};

void colorFramePixel(int *frame, long addr, struct color *color);

#endif
