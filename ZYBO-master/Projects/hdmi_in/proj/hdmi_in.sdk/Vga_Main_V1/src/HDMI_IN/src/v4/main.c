// main.c

#include <stdio.h>

#include "meta.h"

int main() {

  console("Hello, World!\n");

  printf("Red: %d,%d,%d\n", red.red, red.green, red.blue);

  getColorValues(red);

}
