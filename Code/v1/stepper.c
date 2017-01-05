#include <stdio.h>

int STEPMOTOR_REG_A = 2;
int STEPMOTOR_REG_B = 3;
int STEPMOTOR_REG_C = 4;

int main() {

  int *stepRegAPtr;
  int *stepRegBPtr;
  int *stepRegCPtr;

  stepRegAPtr = &STEPMOTOR_REG_A;
  stepRegBPtr = &STEPMOTOR_REG_B;
  stepRegCPtr = &STEPMOTOR_REG_C;

  *stepRegAPtr = 0;
  *stepRegBPtr = 0;
  *stepRegCPtr = 0;

  printf("Hello, World!\n");

  for(int i = 0; i < 10; i++) {

    *stepRegAPtr = 1;

    printf("%i,%i,%i\n",STEPMOTOR_REG_A,STEPMOTOR_REG_B,STEPMOTOR_REG_C);

    *stepRegAPtr = 0;

    *stepRegBPtr = 1;

    printf("%i,%i,%i\n",STEPMOTOR_REG_A,STEPMOTOR_REG_B,STEPMOTOR_REG_C);

    *stepRegBPtr = 0;

    *stepRegCPtr = 1;

    printf("%i,%i,%i\n",STEPMOTOR_REG_A,STEPMOTOR_REG_B,STEPMOTOR_REG_C);

    *stepRegCPtr = 0;

  }

}
