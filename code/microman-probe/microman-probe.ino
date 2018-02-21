#include "system.h"

const uint8_t pin_probe = pin_aux_a;

void setup() {
  Serial.begin(115200);
  system_init();

  pinMode(pin_probe, INPUT);
}

float pot_filtered = 0.0;

void loop() {
  pot_filtered = 0.99 * pot_filtered + 0.01 * analogRead(pin_pot_a);   // low pass filter pot value

  int frequency = map(pot_filtered, 0, 1024, 300, 350);
  int period_us = 1000000L / frequency;

  pinMode(pin_probe, OUTPUT);

  for (uint8_t i = 0; i < 5; i++) {
    digitalWrite(pin_probe, HIGH);
    delayMicroseconds(period_us / 2);
    digitalWrite(pin_probe, LOW);
    delayMicroseconds(period_us / 2);
  }

  pinMode(pin_probe, INPUT);
  digitalWrite(pin_probe, LOW);


  // TODO: measure
  
  delayMicroseconds(10);

  delay(20);
}
