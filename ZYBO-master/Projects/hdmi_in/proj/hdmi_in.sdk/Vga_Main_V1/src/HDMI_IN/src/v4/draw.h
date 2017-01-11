#ifndef DRAW_H
#define DRAW_H

#include "color.h"

#include "draw.c"

void draw_pixel(int startX, int startY, Color* c);
void draw_rectangle();
void draw_circle();

#endif
