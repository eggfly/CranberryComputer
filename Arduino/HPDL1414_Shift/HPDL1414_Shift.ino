#include <HPDL1414.h>

const byte dataPins[7] = {2, 3, 4, 5, 6, 7, 8}; // Segment data pins: D0 - D6
const byte addrPins[2] = {9, 10}; // Segment address pins
const byte wrenPins[] = {11}; // Write Enable pins (left to right)

HPDL1414 hpdl(dataPins, addrPins, wrenPins, sizeof(wrenPins));

void setup() {
  hpdl.begin();
  hpdl.clear();
}

void loop() {
  char displayBuffer[4] = {0x20, 0x20, 0x20, 0x20}; // Initialize all display positions to space character
  uint8_t pos = 3;
  while (true) {
    displayCurrentBuffer(displayBuffer);
    delayMicroseconds(10);
    displayBuffer[3]++;
    bool mark = false;
    for (int8_t pos = 3; pos >= 0; pos--) {
      if (mark) {
        displayBuffer[pos]++;
        mark = false;
      }
      if (displayBuffer[pos] > 0x5F) {
        displayBuffer[pos] = 0x20;
        mark = true;
      }
    }
  }
}

void displayCurrentBuffer(char buffer[4]) {
  for (uint8_t i = 0; i < 4; i++) {
    hpdl.setCursor(i);
    hpdl.print(buffer[i]); // Print the character from the buffer to the respective position
  }
}
