#ifndef HEADER_APPLICATION
#define HEADER_APPLICATION

// Variables

int appMode;

// starting

char* loadingAppStr = "Loading application...\n\n";
char* readyAppStr = "Application ready!\n\n";
char* liveAppStr = "Application live and awaiting your orders.\n";
char* exitAppStr = "Goodbye, we had a good run! Good fortune. Gods speed. And I hope you well in all of your future endavors.\n";

// Main Setup

// Main Loop

// Initialize

void initApp() {

  appMode = 0;

}

// Run Functions

void runAppLoading() {

  console(loadingAppStr);

  console(readyAppStr);

  appMode = 1;
}

void runAppLive() {
  console(liveAppStr);
}

void runAppExit() {
  console(exitAppStr);
  exit(0);
}

// Run / Loop

void runApp() { // Umbrella Function

  switch (appMode) {
    case 0: // Loading
      runAppLoading();
      break;
    case 1: // Live View
      runAppLive();
      break;
    case 2: // Exit
      runAppExit();
      break;
    default:
      appMode = 1;
      break;
  }
}

// Exit / Quit

void exitApp() {
  appMode = 2;
}

//

#endif
