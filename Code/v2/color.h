#ifndef COLOR_H
#define COLOR_H

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

#endif
