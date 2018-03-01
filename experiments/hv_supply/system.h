#pragma once

#include "Mcp4728.h"
#include <Wire.h>

const uint8_t pin_pot_a = A6;
const uint8_t pin_pot_b = A7;
const uint8_t pin_sw_a = 3;
const uint8_t pin_sw_b = 2;
const uint8_t pin_led_a = 6;
const uint8_t pin_led_b = 5;
const uint8_t pin_led_status = 13;

const uint8_t pin_aux_a = A0;
const uint8_t pin_aux_b = 9;
const uint8_t pin_aux_c = 10;

const uint8_t pin_rx = 0;
const uint8_t pin_tx = 1;

const uint8_t pin_steppers_en = 4;

const uint8_t pin_stepper_a_dir = 7;
const uint8_t pin_stepper_a_step = 8;

const uint8_t pin_stepper_b_dir = 11;
const uint8_t pin_stepper_b_step = 12;

const uint8_t pin_piezos_gain0 = A1;
const uint8_t pin_piezos_gain1 = A2;
const uint8_t pin_piezos_en = A3;

const uint8_t pin_sda = A4;
const uint8_t pin_scl = A5;

Mcp4728<TwoWire> dac = Mcp4728<TwoWire>(Wire, 0);  // DAC for channels 0-3 (1-4)

void pins_init() {
  pinMode(pin_led_a, OUTPUT);
  pinMode(pin_led_b, OUTPUT);
  pinMode(pin_led_status, OUTPUT);

  pinMode(pin_sw_a, INPUT_PULLUP);
  pinMode(pin_sw_b, INPUT_PULLUP);

  pinMode(pin_piezos_gain0, OUTPUT);
  pinMode(pin_piezos_gain1, OUTPUT);
  pinMode(pin_piezos_en, OUTPUT);

  digitalWrite(pin_piezos_gain0, HIGH);
  digitalWrite(pin_piezos_gain1, HIGH);
  digitalWrite(pin_piezos_en, LOW);
}


void dac_init() {
  dac.begin();
  // dac_print_status(dac);

  for (uint8_t i = 0 ; i < 4; i++) {
    dac.setGain(i, 0);  // x1
    dac.setVref(i, 1);  // internal voltage reference
    dac.analogWrite(i, 0);
  }
}


void system_init() {
  Wire.begin();
  Wire.setClock(1000000);   // fast I2C

  pins_init();
  dac_init();
}
