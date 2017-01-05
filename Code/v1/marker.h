#ifndef HEADER_MARKER
#define HEADER_MARKER

#define DIST_METALDETECTOR_MARKER 57 // mm

int currentMarkerPosition;
int currentXpositionAtMarker;

void initMarker() {

  // Reset marker

}

void mark() {

  // Push the marker to the wood, Y-axiz.

  // Return to standby position

}

void markerToPosition(int position) {

  // Set marker in right Z position.

  // Wait for wood to be in right X position.

}

void resetMarkerPosition() {

  // markerToPosition = Original

}

int getMarkerPosition() {

  return currentMarkerPosition;

}

#endif
