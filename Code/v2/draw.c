#ifndef DRAW_C
#define DRAW_C

// Variables

int *displayFrame;
long displayWidth, displayHeight, displayStride;

// Functions

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
  //draw(displayFrame,displayWidth,displayHeight,displayStride,color);
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

#endif
