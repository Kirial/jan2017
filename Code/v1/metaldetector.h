#ifndef HEADER_METALDETECTOR
#define HEADER_METALDETECTOR

#define MINIMUM_DISTANCE_BETWEEN_METALPARTS 10 // mm

struct MetalDetected* metalListTail;
struct MetalDetected* metalListHead;

int metalCounter = 0;

struct MetalDetected {

  int metalID;
  int metalXposition;
  int metalZposition;
  int* nextMetal;

};

void initMetalList() {

  metalCounter++;

}

void metalDetectorArmed() {

}

void metalDetectorDisarmed() {

}

void newMetalDetected(int newMetalXposition, int newMetalZposition) {

  struct MetalDetected* newMetal = calloc(1, sizeof(struct MetalDetected));

  newMetal->metalID = metalCounter;
  newMetal->metalXposition = newMetalXposition;
  newMetal->metalZposition = newMetalZposition;

  metalCounter++;

}

#endif
