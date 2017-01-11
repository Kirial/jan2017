#ifndef DISPLAY_H
#define DISPLAY_H

// Variables

int* displayFrame;
long displayWidth;
long displayHeight;
long displayStride;

// C

#include "display.c"

// Function Prototypes

void console(char* string);
void display_init(int* frame, long width, long height, long stride);
void display_setBackground(Color c);


#endif
