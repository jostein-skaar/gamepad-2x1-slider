#include <Arduino.h>
#include <DigiJoystick.h>


// A1: PIN2 
// A0: PIN5

int slider1Value = 0;
int slider2Value = 0;

void setup() {
  // put your setup code here, to run once:
}

void loop() {
  slider1Value = map(analogRead(A1), 0, 1023, 0, 255);
  slider2Value = map(analogRead(A0), 0, 1023, 0, 255);
  
  DigiJoystick.setX((byte)slider1Value);
  DigiJoystick.setY((byte)slider2Value);  
 
  DigiJoystick.delay(50);
}