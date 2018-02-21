void dac_print_status(Mcp4728<TwoWire>& dac) {
  Serial.println(F("NAME     Vref  Gain  PowerDown  Value"));
  for (uint8_t channel = 0; channel <= 3; channel++) {
    Serial.print(F("DAC"));
    Serial.print(channel, DEC);
    Serial.print(F("   "));
    Serial.print(F("    "));
    Serial.print(dac.getVref(channel), BIN);
    Serial.print(F("     "));
    Serial.print(dac.getGain(channel), BIN);
    Serial.print(F("       "));
    Serial.print(dac.getPowerDown(channel), BIN);
    Serial.print(F("       "));
    Serial.println(dac.getValue(channel), DEC);

    Serial.print(F("EEPROM"));
    Serial.print(channel, DEC);
    Serial.print(F("    "));
    Serial.print(dac.getVrefEp(channel), BIN);
    Serial.print(F("     "));
    Serial.print(dac.getGainEp(channel), BIN);
    Serial.print(F("       "));
    Serial.print(dac.getPowerDownEp(channel), BIN);
    Serial.print(F("       "));
    Serial.println(dac.getValueEp(channel), DEC);
  }
  Serial.println(F(" "));
}
