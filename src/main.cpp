#define LAYOUT_NORWEGIAN

#include <Arduino.h>
#include <DigiKeyboard.h>

// A1: PIN2
// A0: PIN5

int slider1Value = 0;
int slider2Value = 0;

void setup() {
  // put your setup code here, to run once:
}

void loop() {
  slider1Value = map(analogRead(A1), 0, 1023, -127, 127);
  slider2Value = map(analogRead(A0), 0, 1023, -127, 127);

  DigiKeyboard.update();

  if (slider1Value > 0) {
    DigiKeyboard.sendKeyStroke((byte)KEY_A);
  } else {
    DigiKeyboard.sendKeyStroke((byte)KEY_D);
  }

  delay(1000);
}