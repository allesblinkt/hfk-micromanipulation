#include "system.h"

float pot_filtered = 0.0;

void setup() {
  Serial.begin(115200);
  system_init();
}

void loop() {
  digitalWrite(pin_piezos_en, HIGH);   // enable piezos

  float t = (millis() % 3000) / 3000.0;
  float sin_val = sin(t  * TWO_PI) * 1.5 - 0.5;
  float val = constrain(sin_val, -1.0, 1.0);

  pot_filtered = 0.99 * pot_filtered + 0.01 * analogRead(pin_pot_a);   // low pass filter pot value

  float dac_v = pot_filtered * 1.3;   // 0 - 1.3 volts at DAC output

  int a2 = max(0.0, val * dac_v);   // positive out
  int a3 = max(0.0, -val * dac_v);  // inverted out

  int a1 = max(0.0, val * dac_v);   // positive out
  int a0 = max(0.0, -val * dac_v);  // inverted out

  dac.analogWrite(a0, a1, a2, a3);

  if (digitalRead(pin_sw_a)) {   // control brightness of A with pot
    analogWrite(pin_led_a, analogRead(pin_pot_a) / 4);
  }

  if (digitalRead(pin_sw_b)) {   // control brightness of A with pot
    analogWrite(pin_led_b, analogRead(pin_pot_b) / 4);
  }

  if (millis() % 1000 > 500) {   // blink status
    digitalWrite(pin_led_status, HIGH);
  } else {
    digitalWrite(pin_led_status, LOW);

  }
}
