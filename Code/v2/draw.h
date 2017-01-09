#ifndef DRAW_H
#define DRAW_H

#include "draw.c"

void draw(int *frame, long width, long height, long stride, struct color *color);
void draw_background(struct color *color);
void draw_pixel(int startX, int startY, struct color *color);

#endif
