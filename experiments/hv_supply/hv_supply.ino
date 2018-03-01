#include "system.h"

boolean lastSequenceWasPositive = false;

void setup() {
  Serial.begin(115200);
  system_init();

  pinMode(pin_led_a, OUTPUT);
  pinMode(pin_led_b, OUTPUT);

  pinMode(13, OUTPUT);


}

void loop() {
  if (Serial.available() > 0) {

    byte readCharacter = Serial.read();

    while (Serial.available() > 0) {
      Serial.read();
    }

    if (readCharacter == 'a') {
      triggerThePower();
    }
  }

}


void triggerThePower() {
  if (lastSequenceWasPositive) {
    voltageOutput(-23.0);
    delay(1000);
    noVoltageOutput();
  } else {
    voltageOutput(42.0);
    delay(1000);
    noVoltageOutput();
  }

  lastSequenceWasPositive = !lastSequenceWasPositive;
}


void voltageOutput(float voltage) {
  digitalWrite(pin_piezos_en, HIGH);   // enable piezos
  float dac_v = voltage * (900.0 / 60.0) * 1.3;   // 0 - 1.3 volts at DAC output

  int a0 = 0;
  int a1 = 0;

  if (dac_v > 0) {
    digitalWrite(pin_led_a, HIGH);
    digitalWrite(pin_led_b, LOW);
  } else {
    digitalWrite(pin_led_a, LOW);
    digitalWrite(pin_led_b, HIGH);
  }

  int a2 = max(0.0, dac_v);   // positive out
  int a3 = max(0.0, -dac_v);  // inverted out

  dac.analogWrite(a0, a1, a2, a3);

}

void noVoltageOutput() {
  digitalWrite(pin_led_a, LOW);
  digitalWrite(pin_led_b, LOW);

  digitalWrite(pin_piezos_en, LOW);   // enable piezos
}

