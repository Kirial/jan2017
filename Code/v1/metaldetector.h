#ifndef HEADER_METALDETECTOR
#define HEADER_METALDETECTOR

// Constants

#define MINIMUM_DISTANCE_BETWEEN_METALPARTS 10 // mm

// Variables

struct MetalDetected* metalListTail;
struct MetalDetected* metalListHead;

int metalCounter = 0;

// Strings

char* metalDetectedAlarmStr = "!!! Alarm: Metal Detected!\n";

// Functions

struct MetalDetected {

  int metalID;
  int metalXposition;
  int metalZposition;
  struct wood* thisMetalBelongsTo;
  int* nextMetal;

};

void initMetalList() {

  metalCounter++;

}

void metalDetectorArmed() {

}

void metalDetectorDisarmed() {

}

void newMetalDetected(int newMetalXposition, int newMetalZposition, struct wood* thisWood) {

  console(metalDetectedAlarmStr);

  struct MetalDetected* newMetal = calloc(1, sizeof(struct MetalDetected));

  newMetal->metalID = metalCounter;
  newMetal->metalXposition = newMetalXposition;
  newMetal->metalZposition = newMetalZposition;
  newMetal->thisMetalBelongsTo = thisWood;

  metalCounter++;

}

#endif
