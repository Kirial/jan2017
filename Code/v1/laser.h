#ifndef HEADER_LASER
#define HEADER_LASER

#define TOP_LASER 1
#define LEFT_LASER 2
#define RIGHT_LASER 3 // Memory location
#define NUMBER_OF_LASERS 3
#define CALIBRATION_BLOCK 40 // 40x40x40 mm

int topLaserOffset;
int leftLaserOffset;
int rightLaserOffset;

struct laser* lasers[NUMBER_OF_LASERS];

struct laser {
  int laserID;
  int reg;
  char* position;
  int offset;
  int distance;
};

// Functions

void initLasers();
void calibrateLasers();
int checkLaser(struct laser* laser);
int readLaser(struct laser* laser);

//

char* initLaserStr[] = {
  "Initializing Lasers.\n",
  "Identifying and positioning lasers.\n",
  "Testing lasers.\n",
  "Pew pew pew!\n",
  "Jedi has been neutralized.\n",
  "Initialization complete, lasers ready!\n"
};

char* calibrateLasersStr[] = {
  "Beginning kalibration.\n",
  "Waiting for Kalibration Block...\n",
  "Calibration block detected!\n",
  "Calibrating...\n",
  "Calibration complete!\n",
};

char* readingLaserStr = "Reading laser...\n";
char* distanceLaserStr = "Laser Distance: ";


void initLasers() {
  // Initialize lasers

  console(initLaserStr[0]);

  struct laser* topLaser = calloc(1,sizeof(struct laser));
  struct laser* leftLaser = calloc(1,sizeof(struct laser));
  struct laser* rightLaser = calloc(1,sizeof(struct laser));

  console(initLaserStr[1]); // Identification and positioning

  topLaser->laserID = 1;
  leftLaser->laserID = 2;
  rightLaser->laserID = 3;

  topLaser->position = "TOP";
  leftLaser->position = "LEFT";
  rightLaser->position = "RIGHT";

  topLaser->reg = TOP_LASER;
  leftLaser->reg = LEFT_LASER;
  rightLaser->reg = RIGHT_LASER;

  lasers[0] = topLaser;
  lasers[1] = leftLaser;
  lasers[2] = rightLaser;

  console(initLaserStr[2]);

  calibrateLasers();

  console(initLaserStr[3]);

  console(initLaserStr[4]);

  console(initLaserStr[5]);

}

void calibrateLasers() { // Calibration

  int topCheck;

  console(calibrateLasersStr[0]);
  // Read top laserID.
  topCheck = readLaser(lasers[0]);

  console(calibrateLasersStr[1]);
  // Wait for new reading.
  while(topCheck == readLaser(lasers[0])) {
    console(calibrateLasersStr[1]);
  }

  console(calibrateLasersStr[2]); // Block detected

  console(calibrateLasersStr[3]);
  // Calculate offsets based on the 40x40x40 calibration block.

  lasers[0]->offset = readLaser(lasers[0]) + CALIBRATION_BLOCK;
  lasers[1]->offset = readLaser(lasers[1]) + CALIBRATION_BLOCK;
  lasers[2]->offset = readLaser(lasers[2]) + CALIBRATION_BLOCK;

  console(calibrateLasersStr[4]);
  // Calibration complete.

}

int checkLaser(struct laser* laser) { // Check if a laser is reading something.

  if(readLaser(laser) != laser->offset) return TRUE;

  else return FALSE;

}

int readLaser(struct laser* laser) { // read a laser

  int reading = 0;

  console(readingLaserStr);

  reading = reading - laser->offset;

  console(distanceLaserStr); console_int(reading); console("\n");

  return reading;

}

#endif
