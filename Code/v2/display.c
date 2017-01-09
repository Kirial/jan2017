#ifndef DISPLAY_C
#define DISPLAY_C

// Strings

char* initDisplayStr = "Initializing display. \nTesting some colors.\n";
char* initDisplayDoneStr = "Display ready.\n";

// Functions

void display_init(int *frame, long width, long height, long stride) {

  console(initDisplayStr);

  *displayFrame = *frame;
  displayWidth = width;
  displayHeight = height;
  displayStride = stride;

  draw_background(&black);
  draw_background(&red);
  draw_background(&green);
  draw_background(&blue);
  draw_background(&white);

  draw_pixel(200,200,&black);
  draw_pixel(300,300,&black);
  draw_pixel(400,400,&black);

  console(initDisplayDoneStr);
}

#endif
