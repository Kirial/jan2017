#include <stdio.h>
#include <stdlib.h>

#include "application.h"
#include "display.h"
#include "wood.h"
#include "metaldetector.h"
#include "marker.h"
#include "conveyorbelt.h"

// X-axis is along the conveyor belt is actually a counter since beginning of time.
// Y-axis is up and down
// Z-axis is across the conveyor belt

char* beginInitializingProcesStr = "Beginning initializeing proces...";

int main() {

  // Initilize

  talk(greeting);

  talk(beginInitializingProcesStr);

  // Inputs

  // Outputs

  initMarker();

  // Application Utilities

  initWood();
  initMetalList();
  initApp();

  // Loop

  while(1) {
    runApp();
    newWood();
    newWood();
    exitApp();
  }

  return 0;

}
