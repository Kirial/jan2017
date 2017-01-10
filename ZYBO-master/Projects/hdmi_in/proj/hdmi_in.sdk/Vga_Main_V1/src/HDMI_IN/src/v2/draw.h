#ifndef DRAW_H
#define DRAW_H

#include "draw.c"

void draw(int *frame, long width, long height, long stride, struct color *color);
void draw_background(struct color *color);
void draw_pixel(int startX, int startY, struct color *color);
void draw_rectangle(int startX, int startY, int width, int height, int stroke, struct color *color);

#endif
