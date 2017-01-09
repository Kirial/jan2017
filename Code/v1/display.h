#ifndef HEADER_DISPLAY
#define HEADER_DISPLAY

// Console

void console(char* string);
void console_int(int var);
void console_float(float var);
void console_bool(int boolean);

// Display

int *displayFrame;
long displayWidth, displayHeight, displayStride;

char* initDisplayStr = "Initializing display. \nTesting some colors.\n";
char* initDisplayDoneStr = "Display ready.\n";

void display_init(int *frame, long width, long height, long stride);

// Visual Drawing Functions

void draw(int *frame, long width, long height, long stride, struct color *color);
void draw_background(struct color *color);
void draw_pixel(int startX, int startY, struct color *color);
void draw_rectangle(int startX, int startY, int width, int height, int stroke, struct color *color);
void draw_circle(int startX, int startY, int width, int height, int stroke, struct color *color);


// Visual Bitmap Functions

void bitmap(int startX, int startY, int *bitmap, struct color *color);

// Visual Text Functions

void text_setCursor(int startX, int startY);
void text_setSize();
void text_newline();
void text_enterCharacter(char c);
int text_getCharacterBitmap(char c);

// Console

void console(char* string) { // In case we need to write to another console
  printf("%s",string);
}

void console_int(int var) {
  char tempVar[16];
  sprintf(tempVar,"%i",var);
  console(tempVar);
}

void console_float(float var) {
  char tempVar[16];
  sprintf(tempVar,"%f",var);
  console(tempVar);
}

void console_bool(int boolean) {
  if(boolean) {
    console("TRUE");
  } else {
    console("FALSE");
  }
}

// xil_printf("\x1B[H"); //Set cursor to top left of terminal
// xil_printf("\x1B[2J"); //Clear terminal

// Display

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

// Draw

void draw(int *frame, long width, long height, long stride, struct color* color) {

  long iPixelAddr;
  int x, y;

  for(x = 0; x < width; x++) {

    iPixelAddr = x;

    for(y = 0; y < height; y++) {

      frame[iPixelAddr] = color->red;
      frame[iPixelAddr+1] = color->green;
      frame[iPixelAddr+2] = color->blue;

      iPixelAddr += stride;

    }
  }
}

void draw_background(struct color *color) {
  draw(displayFrame,displayWidth,displayHeight,displayStride,color);
}

void draw_pixel(int startX, int startY, struct color *color) {
  long iPixelAddr;

  long y;

  iPixelAddr = startX;

  for(y = 0; y < startY; y++) {
    if(y == startY) {
      displayFrame[iPixelAddr] = color->red;
      displayFrame[iPixelAddr+1] = color->green;
      displayFrame[iPixelAddr+2] = color->blue;
    }
    iPixelAddr += displayStride;
  }
}
void draw_rectangle(int startX, int startY, int width, int height, int stroke, struct color *color) {

}
void draw_circle(int startX, int startY, int width, int height, int stroke, struct color *color) {

}

// Bitmap

// Text

#endif
