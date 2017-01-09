#ifndef HEADER_WOOD
#define HEADER_WOOD

// Variables

int woodCounter;
struct wood* currentWood;
struct wood* woodList[10];
int woodListHead;
int woodListTail;

// String

char* initializeWood = "I'm starting a new list for your pieces of wood.\n";
char* woodInitialized = "The list is ready, and you're welcome to insert wood.\n\n";
char* newWoodDetectedStr = "I have detected wood.\n\n";
char* newWoodFinishedStr = "I have detected the end of the wood.\n\n";
char* insertWood[] = {
  "Please insert wood.",
  "I need more wood."
};

char* identitifyWoodBeginStr =            "Identifying Wood.       \n";
char* identitifyWoodIDStr =               "ID#:                      ";
char* identitifyWoodCurrentPositionStr =  "Current X:                ";
char* identitifyWoodTotalLengthStr =      "Total Length:             ";
char* identitifyWoodCurrentLengthStr =    "Current Length:           ";
char* identitifyWoodContainsMetalStr =    "Metals detected in wood:  ";
char* identitifyWoodMetalsDetectedAtStr = "Metals detected at:       ";
char* identitifyWoodFinishedStr =         "Wood finished processing: ";

// Struct wood

struct wood{

  int woodID;
  float beginPosition;
  float currentPosition;
  float endPosition;
  float length;

  int* metalArray;
  int* dimensionsArray;

  int metalsDetected;
  int finished;
  int containMetal;

};

void initWoodSystem() {

  console(initializeWood);

  woodCounter = 0;
  woodListHead = 0;

  console(woodInitialized);

}

void woodInfo(struct wood* thisWood) {

  console(identitifyWoodBeginStr);

  // ID

  console(identitifyWoodIDStr);
  console_int(thisWood->woodID); console("\n");

  // Current X positition compared to the conveyor belt.

  console(identitifyWoodCurrentPositionStr);
  console_int(thisWood->currentPosition); console("\n");

  // Current or total length

  float tempWoodLenFloat;

  if(thisWood->finished) {
    console(identitifyWoodTotalLengthStr);
    tempWoodLenFloat = thisWood->endPosition - thisWood->beginPosition;
  } else {
    console(identitifyWoodCurrentLengthStr);
    tempWoodLenFloat = thisWood->currentPosition - thisWood->beginPosition;
  }

  console_float(tempWoodLenFloat); console("\n");

  // Metal Detection

  console(identitifyWoodContainsMetalStr);
  console_bool(thisWood->containMetal);

  if(thisWood->containMetal) {

    console(" This piece of wood is wounded!\n");

    // Get lists of metals.

  } else {

    console(" This piece of wood is clean.\n");

  }

  // Wood finished Processing

  console(identitifyWoodFinishedStr);

  if(thisWood->finished) {

    console("Yes.\n");

  } else {

    console("No, still being processed.\n");

  }

  console("\n\n");

}

void newWood() {

  console(newWoodDetectedStr);

  woodCounter++;

  struct wood* newWood = calloc(1,sizeof(struct wood));

  woodList[woodListHead] = newWood;

  currentWood = newWood;

  // Set initial variables

  currentWood->woodID = woodCounter;
  currentWood->currentPosition = conveyorbeltX;
  currentWood->beginPosition = conveyorbeltX;
  currentWood->finished = FALSE;
  currentWood->containMetal = FALSE;

  woodInfo(currentWood);

  woodListHead++; if(woodListHead>10) woodListHead = 0;

  if(woodList[woodListHead] != NULL) free(woodList[woodListHead]);

  if(woodListHead == woodListTail) {
    woodListTail++; if(woodListTail>10) woodListTail = 0;
  }

}

void finishWood() {

  console(newWoodFinishedStr);

  currentWood->finished = TRUE;
  currentWood->endPosition = conveyorbeltX;
  currentWood->length = currentWood->endPosition - currentWood->beginPosition;

  woodInfo(currentWood);

  currentWood = NULL;

}

void addMetalToWood() {

}

void updateWood(int mm) {

  int woodListIndex = woodListHead;

  for(int i = 0; i < abs(woodListHead-woodListTail); i++) {
    woodList[woodListIndex]->currentPosition = woodList[woodListIndex]->currentPosition + mm;
  }

}

#endif
