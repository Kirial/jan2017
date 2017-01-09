#ifndef HEADER_CONVEYORBELT
#define HEADER_CONVEYORBELT

#define LASER_POSITION 0 // mm (origin)
#define METALDETECTOR_POSITION 27 // mm
#define MARKER_POSITION 107 // mm

// Variables

int conveyorbeltX; // Conveyor belt moved?

int laserX;
int metalDetectorX;
int markerX;

// Strings

char* initializeConveyorbeltStr = "Initializing assets for conveyorbelt.\n";
char* initializingDoneConveyorbeltStr = "Conveyorbelt initialized. Ready for load.\n";

// Functions

void initConveyorbelt() {

  console(initializeConveyorbeltStr);

  conveyorbeltX = 0;
  laserX = conveyorbeltX;
  metalDetectorX = conveyorbeltX - METALDETECTOR_POSITION;
  markerX = conveyorbeltX - MARKER_POSITION;

  console(initializingDoneConveyorbeltStr);

}

void moveConveyorbeltForward(int mm) { // Virtual Movement

  conveyorbeltX = conveyorbeltX + mm;
  laserX = laserX + mm;
  metalDetectorX = metalDetectorX + mm;
  markerX = markerX + mm;

}

void startConveyorbelt() {

}

void pauseConveyorbelt(int seconds) { // Seconds

}

void stopConveyorbelt() {

}

int getConveyorbeltXint() {

  return conveyorbeltX;

}

#endif
