#ifndef HEADER_APPLICATION
#define HEADER_APPLICATION

// Variables

int appMode;

// starting

char* loadingAppStr = "Loading...\n";
char* readyAppStr = "Ready!\n";
char* liveAppStr = "Live.\n";
char* exitAppStr = "Goodbye, we need a good run! Good fortune. Gods speed. And I hope you well in all of your future endavors.\n";

// Initialize

void initApp() {

  appMode = 0;

}

// Talk

void talk(char* string) { // In case we need to write to another console
  printf("%s",string);
}

// Run Functions

void runAppLoading() {
  talk(loadingAppStr);
  talk(readyAppStr);
  appMode = 1;
}

void runAppLive() {
  talk(liveAppStr);
}

void runAppExit() {
  talk(exitAppStr);
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
