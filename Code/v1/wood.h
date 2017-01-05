#ifndef HEADER_WOOD
#define HEADER_WOOD

// Variables

int woodCounter;

// String

char* initializeWood = "I'm starting a new list for your pieces of wood.";
char* woodInitialized = "The list is ready, and you're welcome to insert wood.";
char* newWoodDetectedString = "I have detected wood.";
char* insertWood[] = {
  "Please insert wood.",
  "I need more wood."
};
char* identitifyWood = "In piece of wood in particular has the ID#:";

struct wood{

  int woodID;
  float current_position;
  float length;
  int* metalArray;
  int finished;
  int containMetal;

};

void initWood() {

  talk(initializeWood);

  woodCounter = 0;

  talk(woodInitialized);

}

void newWood() {

  talk(newWoodDetectedString);

  woodCounter++;

  struct wood* newWood = calloc(1,sizeof(struct wood));

  newWood->woodID = woodCounter;

  talk(identitifyWood);

  char tempWoodID[2];

  sprintf(tempWoodID, "%d", newWood->woodID);

  talk(tempWoodID);


}

void addMetalToWood() {

}

#endif
