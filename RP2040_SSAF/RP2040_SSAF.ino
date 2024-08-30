uint8_t pins[] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11};

#define PIN_COUNT (sizeof(pins) / sizeof(pins[0]))


void setup() {
  Serial.begin(115200);
  for (uint8_t i = 0; i < PIN_COUNT; i++) {
    pinMode(i, INPUT_PULLUP);
  }
  Serial.println("hello!");
}

void loop() {
  for (uint8_t i = 0; i < PIN_COUNT; i++) {
    Serial.printf("%d=%d ", i + 1, digitalRead(i));
  }
  Serial.println();
  delay(50);
}
