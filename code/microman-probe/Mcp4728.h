#pragma once

#include <Arduino.h>
#include <Wire.h>


//namespace Mcp4728 {
namespace Command {
enum Enum {
  GeneralCall = 0x00,
  Reset = 0x06,
  Wake = 0x09,
  Update = 0x08,
  MultiWrite = 0x40,
  SingleWrite = 0x58,
  SeqWrite = 0x50,
  GainWrite = 0xc0,
  VrefWrite = 0x80,
  PowerDownWrite = 0xa0,
};
}

enum Constants {
  BaseAddr = 0x60,
  DefaultVdd = 5000
};

// class DacChannel {

// }

//}


class ValueSet {

};


template <class WireInterface>
class Mcp4728 {

  public:
    Mcp4728(WireInterface&, uint8_t);

    void vdd(uint16_t);
    void begin();

    uint8_t reset();
    uint8_t wake();
    uint8_t update();

    uint8_t analogWrite(uint16_t, uint16_t, uint16_t, uint16_t);
    uint8_t analogWrite(uint8_t, uint16_t);
    uint8_t eepromWrite(uint16_t, uint16_t, uint16_t, uint16_t);
    uint8_t eepromWrite(uint8_t, uint16_t);

    uint8_t eepromWrite();
    uint8_t eepromReset();

    uint8_t setVref(uint8_t, uint8_t, uint8_t, uint8_t);
    uint8_t setVref(uint8_t, uint8_t);
    uint8_t setGain(uint8_t, uint8_t, uint8_t, uint8_t);
    uint8_t setGain(uint8_t, uint8_t);
    uint8_t setPowerDown(uint8_t, uint8_t, uint8_t, uint8_t);
    uint8_t setPowerDown(uint8_t, uint8_t);

    uint8_t getVref(uint8_t);
    uint8_t getGain(uint8_t);
    uint8_t getPowerDown(uint8_t);
    uint16_t getValue(uint8_t);
    uint8_t getVrefEp(uint8_t);
    uint8_t getGainEp(uint8_t);
    uint8_t getPowerDownEp(uint8_t);
    uint16_t getValueEp(uint8_t);
    uint16_t getVout(uint8_t);

    void voutWrite(uint8_t, uint16_t);
    void voutWrite(uint16_t, uint16_t, uint16_t, uint16_t);

  private:
    void _getStatus();

    uint8_t _fastWrite();
    uint8_t _multiWrite();
    uint8_t _singleWrite(uint8_t);
    uint8_t _seqWrite();
    uint8_t _writeVref();
    uint8_t _writeGain();
    uint8_t _writePowerDown();
    void _writeVout();

    uint8_t _simpleCommand(byte);

    uint8_t _devAddress;

    uint8_t _intVref[4];
    uint8_t _gain[4];
    uint8_t _powerDown[4];
    uint16_t _values[4];

    uint8_t _intVrefEp[4];
    uint8_t _gainEp[4];
    uint8_t _powerDownEp[4];
    uint16_t _valuesEp[4];

    uint16_t _vOut[4];

    uint16_t _vdd;

    WireInterface& _wire;
};



/**
   Constructor. Initialize buffers.
*/
template<class WireInterface>
Mcp4728<WireInterface>::Mcp4728(WireInterface& wireInterface, uint8_t deviceId) : _wire(wireInterface) {
  _devAddress = (BaseAddr | deviceId);
  _vdd = DefaultVdd;
  //_wire = w;
}


/*
  Begin I2C, get current values (input register and eeprom) of Mcp4728
*/
template<class WireInterface>
void Mcp4728<WireInterface>::begin() {
  _wire.begin();
  _getStatus();
}


/*
  General Call Reset of Mcp4728 - EEPROM value will loaded to input register. refer to DATASHEET 5.4.1
*/
template<class WireInterface>
uint8_t Mcp4728<WireInterface>::reset() {
  return _simpleCommand(Command::Reset);
}


/*
  General Call Wake-Up of Mcp4728 - Reset Power-Down bits (PD0,PD1 = 0,0). refer to DATASHEET 5.4.2
*/
template<class WireInterface>
uint8_t Mcp4728<WireInterface>::wake() {
  return _simpleCommand(Command::Wake);
}


/*
  General Call Software update of Mcp4728 - All DAC ouput update. refer to DATASHEET 5.4.3
*/
template<class WireInterface>
uint8_t Mcp4728<WireInterface>::update() {
  return _simpleCommand(Command::Update);
}


/*
  Write input register values to each channel using fastwrite method.
  Values : 0-4095
*/
template<class WireInterface>
uint8_t Mcp4728<WireInterface>::analogWrite(uint16_t value1, uint16_t value2, uint16_t value3, uint16_t value4) {
  _values[0] = value1;
  _values[1] = value2;
  _values[2] = value3;
  _values[3] = value4;
  return _fastWrite();
}


/*
  Write input resister value to specified channel using fastwrite method.
  Channel : 0-3, Values : 0-4095
*/
template<class WireInterface>
uint8_t Mcp4728<WireInterface>::analogWrite(uint8_t channel, uint16_t value) {
  _values[channel] = value;
  return _fastWrite();
}


/*
  Write a value to specified channel using singlewrite method.
  This will update both input register and EEPROM value
  Channel : 0-3, Values : 0-4095
*/
template<class WireInterface>
uint8_t Mcp4728<WireInterface>::eepromWrite(uint8_t channel, uint16_t value)
{
  _values[channel] = value;
  _valuesEp[channel] = value;
  return _singleWrite(channel);
}


/*
  Write values to each channel using SequencialWrite method.
  This will update both input register and EEPROM value
  Channel : 0-3, Values : 0-4095
*/
template<class WireInterface>
uint8_t Mcp4728<WireInterface>::eepromWrite(uint16_t value1, uint16_t value2, uint16_t value3, uint16_t value4)
{
  _valuesEp[0] = _values[0] = value1;
  _valuesEp[1] = _values[1] = value2;
  _valuesEp[2] = _values[2] = value3;
  _valuesEp[3] = _values[3] = value4;
  return _seqWrite();
}


/*
  Write all input resistor values to EEPROM using SequencialWrite method.
  This will update both input register and EEPROM value
  This will also write current Vref, PowerDown, Gain settings to EEPROM
*/
template<class WireInterface>
uint8_t Mcp4728<WireInterface>::eepromWrite()
{
  return _seqWrite();
}


/*
  Reset EEPROM and input register to factory default. Refer datasheet TABLE 4-2
  Input value = 0, Voltage Reference = 1 (internal), Gain = 0, PowerDown = 0
*/
template<class WireInterface>
uint8_t Mcp4728<WireInterface>::eepromReset()
{
  _values[0] = _values[1] = _values[2] = _values[3] = 0;
  _intVref[0] = _intVref[0] = _intVref[0] = _intVref[0] = 1;
  _gain[0] = _gain[1] = _gain[2] = _gain[3] = 0;
  _powerDown[0] = _powerDown[0] = _powerDown[0] = _powerDown[0] = 0;
  return _seqWrite();
}


/*
  Write Voltage reference settings to input regiters
    Vref setting = 1 (internal), Gain = 0 (x1)   ==> Vref = 2.048V
    Vref setting = 1 (internal), Gain = 1 (x2)   ==> Vref = 4.096V
    Vref setting = 0 (external), Gain = ignored  ==> Vref = VDD
*/
template<class WireInterface>
uint8_t Mcp4728<WireInterface>::setVref(uint8_t value1, uint8_t value2, uint8_t value3, uint8_t value4) {
  _intVref[0] = value1;
  _intVref[1] = value2;
  _intVref[2] = value3;
  _intVref[3] = value4;
  return _writeVref();
}


/*
  Write Voltage reference setting to a input regiter
*/
template<class WireInterface>
uint8_t Mcp4728<WireInterface>::setVref(uint8_t channel, uint8_t value) {
  _intVref[channel] = value;
  return _writeVref();
}


/*
  Write Gain settings to input regiters
    Vref setting = 1 (internal), Gain = 0 (x1)   ==> Vref = 2.048V
    Vref setting = 1 (internal), Gain = 1 (x2)   ==> Vref = 4.096V
    Vref setting = 0 (external), Gain = ignored  ==> Vref = VDD
*/
template<class WireInterface>
uint8_t Mcp4728<WireInterface>::setGain(uint8_t value1, uint8_t value2, uint8_t value3, uint8_t value4) {
  _gain[0] = value1;
  _gain[1] = value2;
  _gain[2] = value3;
  _gain[3] = value4;
  return _writeGain();
}


/*
  Write Gain setting to a input regiter
*/
template<class WireInterface>
uint8_t Mcp4728<WireInterface>::setGain(uint8_t channel, uint8_t value) {
  _gain[channel] = value;
  return _writeGain();
}


/*
  Write Power-Down settings to input regiters
    0 = Normal , 1-3 = shut down most channel circuit, no voltage out and saving some power.
    1 = 1K ohms to GND, 2 = 100K ohms to GND, 3 = 500K ohms to GND
*/
template<class WireInterface>
uint8_t Mcp4728<WireInterface>::setPowerDown(uint8_t value1, uint8_t value2, uint8_t value3, uint8_t value4) {
  _powerDown[0] = value1;
  _powerDown[1] = value2;
  _powerDown[2] = value3;
  _powerDown[3] = value4;
  return _writePowerDown();
}


/*
  Write Power-Down setting to a input regiter
*/
template<class WireInterface>
uint8_t Mcp4728<WireInterface>::setPowerDown(uint8_t channel, uint8_t value) {
  _powerDown[channel] = value;
  return _writePowerDown();
}


/*
  Return Voltage Rerference setting
*/
template<class WireInterface>
uint8_t Mcp4728<WireInterface>::getVref(uint8_t channel) {
  return _intVref[channel];
}


/*
  Return Gain setting
*/
template<class WireInterface>
uint8_t Mcp4728<WireInterface>::getGain(uint8_t channel) {
  return _gain[channel];
}


/*
  Return PowerDown setting
*/
template<class WireInterface>
uint8_t Mcp4728<WireInterface>::getPowerDown(uint8_t channel) {
  return _powerDown[channel];
}


/*
  Return Input Regiter value
*/
template<class WireInterface>
uint16_t Mcp4728<WireInterface>::getValue(uint8_t channel) {
  return _values[channel];
}


/*
  Return EEPROM Voltage Rerference setting
*/
template<class WireInterface>
uint8_t Mcp4728<WireInterface>::getVrefEp(uint8_t channel) {
  return _intVrefEp[channel];
}


/*
  Return EEPROM Gain setting
*/
template<class WireInterface>
uint8_t Mcp4728<WireInterface>::getGainEp(uint8_t channel) {
  return _gainEp[channel];
}


/*
  Return EEPROM PowerDown setting
*/
template<class WireInterface>
uint8_t Mcp4728<WireInterface>::getPowerDownEp(uint8_t channel) {
  return _powerDownEp[channel];
}


/*
  Return EEPROM value
*/
template<class WireInterface>
uint16_t Mcp4728<WireInterface>::getValueEp(uint8_t channel) {
  return _valuesEp[channel];
}


/*
  Set VDD for Vout calculation
*/
template<class WireInterface>
void Mcp4728<WireInterface>::vdd(uint16_t currentVdd) {
  _vdd = currentVdd;
}


/*
  Return Vout
*/
template<class WireInterface>
uint16_t Mcp4728<WireInterface>::getVout(uint8_t channel) {
  uint32_t vref;
  if (_intVref[channel] == 1) {
    vref = 2048;
  } else {
    vref = _vdd;
  }

  uint32_t vOut = (vref * _values[channel] * (_gain[channel] + 1)) / 4096;
  if (vOut > _vdd) {
    vOut = _vdd;
  }
  return vOut;
}


/*
  write to input register of DAC. Value(mV) (V < VDD)
*/
template<class WireInterface>
void Mcp4728<WireInterface>::voutWrite(uint8_t channel, uint16_t vout) {
  _vOut[channel] = vout;
  _writeVout();
}


/*
  write to input registers of DACs. Value(mV) (V < VDD)
*/
template<class WireInterface>
void Mcp4728<WireInterface>::voutWrite(uint16_t value1, uint16_t value2, uint16_t value3, uint16_t value4) {
  _vOut[0] = value1;
  _vOut[1] = value2;
  _vOut[2] = value3;
  _vOut[3] = value4;
  _writeVout();
}


/* _____PRIVATE FUNCTIONS_____________________________________________________ */

/*
  Get current values (input register and eeprom) of Mcp4728
*/
template<class WireInterface>
void Mcp4728<WireInterface>::_getStatus() {
  _wire.requestFrom(int(_devAddress), 24);

  while (_wire.available()) {
    int deviceID = _wire.read();
    int hiByte = _wire.read();
    int loByte = _wire.read();

    int isEEPROM = (deviceID & 0x08) >> 3;
    int channel = (deviceID & 0x30) >> 4;

    if (isEEPROM == 1) {
      _intVrefEp[channel] = (hiByte & 0x80) >> 7;
      _gainEp[channel] = (hiByte & 0x10) >> 4;
      _powerDownEp[channel] = (hiByte & 0x60) >> 5;
      _valuesEp[channel] = word((hiByte & 0x0f), loByte);
    }
    else {
      _intVref[channel] = (hiByte & 0x80) >> 7;
      _gain[channel] = (hiByte & 0x10) >> 4;
      _powerDown[channel] = (hiByte & 0x60) >> 5;
      _values[channel] = word((hiByte & 0x0f), loByte);
    }
  }
}


/*
  FastWrite input register values - All DAC ouput update. refer to DATASHEET 5.6.1
  DAC Input and PowerDown bits update.
  No EEPROM update
*/
template<class WireInterface>
uint8_t Mcp4728<WireInterface>::_fastWrite() {
  _wire.beginTransmission(_devAddress);

  for (uint8_t channel = 0; channel < 4; channel++) {
    _wire.write(highByte(_values[channel]));
    _wire.write(lowByte(_values[channel]));
  }

  return _wire.endTransmission();
}


/*
  MultiWrite input register values - All DAC ouput update. refer to DATASHEET 5.6.2
  DAC Input, Gain, Vref and PowerDown bits update
  No EEPROM update
*/
template<class WireInterface>
uint8_t Mcp4728<WireInterface>::_multiWrite() {
  _wire.beginTransmission(_devAddress);
  for (uint8_t channel = 0; channel < 4; channel++) {
    _wire.write(Command::MultiWrite | (channel << 1));
    _wire.write(_intVref[channel] << 7 | _powerDown[channel] << 5 | _gain[channel] << 4 | highByte(_values[channel]));
    _wire.write(lowByte(_values[channel]));
  }
  return _wire.endTransmission();
}


/*
  SingleWrite input register and EEPROM - a DAC ouput update. refer to DATASHEET 5.6.4
  DAC Input, Gain, Vref and PowerDown bits update
  EEPROM update
*/
template<class WireInterface>
uint8_t Mcp4728<WireInterface>::_singleWrite(uint8_t channel) {
  _wire.beginTransmission(_devAddress);
  _wire.write(Command::SingleWrite | (channel << 1));
  _wire.write(_intVref[channel] << 7 | _powerDown[channel] << 5 | _gain[channel] << 4 | highByte(_values[channel]));
  _wire.write(lowByte(_values[channel]));
  return _wire.endTransmission();
}


/*
  SequencialWrite input registers and EEPROM - ALL DAC ouput update. refer to DATASHEET 5.6.3
  DAC Input, Gain, Vref and PowerDown bits update
  EEPROM update
*/
template<class WireInterface>
uint8_t Mcp4728<WireInterface>::_seqWrite() {
  _wire.beginTransmission(_devAddress);
  _wire.write(Command::SeqWrite);
  for (uint8_t channel = 0; channel < 4; channel++) {
    _wire.write(_intVref[channel] << 7 | _powerDown[channel] << 5 | _gain[channel] << 4 | highByte(_values[channel]));
    _wire.write(lowByte(_values[channel]));
  }
  return _wire.endTransmission();
}


/*
  Write Voltage reference setting to input registers. refer to DATASHEET 5.6.5
  No EEPROM update
*/
template<class WireInterface>
uint8_t Mcp4728<WireInterface>::_writeVref() {
  _wire.beginTransmission(_devAddress);
  _wire.write(Command::VrefWrite | _intVref[0] << 3 | _intVref[1] << 2 | _intVref[2] << 1 | _intVref[3]);
  return _wire.endTransmission();
}


/*
  Write Gain setting to input registers. refer to DATASHEET 5.6.7
  No EEPROM update
*/
template<class WireInterface>
uint8_t Mcp4728<WireInterface>::_writeGain() {
  _wire.beginTransmission(_devAddress);
  _wire.write(Command::GainWrite | _gain[0] << 3 | _gain[1] << 2 | _gain[2] << 1 | _gain[3]);
  return _wire.endTransmission();
}


/*
  Write PowerDown setting to input registers. refer to DATASHEET 5.6.6
  No EEPROM update
*/
template<class WireInterface>
uint8_t Mcp4728<WireInterface>::_writePowerDown() {
  _wire.beginTransmission(_devAddress);
  _wire.write(Command::PowerDownWrite | _powerDown[0] << 2 | _powerDown[1]);
  _wire.write(_powerDown[2] << 6 | _powerDown[3] << 4);
  return _wire.endTransmission();
}


/*
  Calculate Voltage out based on current setting of Vref and gain
  No EEPROM update
*/
template<class WireInterface>
void Mcp4728<WireInterface>::_writeVout() {
  for (uint8_t channel = 0; channel < 4; channel++) {
    if (_intVref[channel] == 1) {
      _values[channel] = _vOut[channel] / (_gain[channel] + 1) * 2;
    }
    else {
      _values[channel] = (long(_vOut[channel]) * 4096) / _vdd ;
    }
  }
  _fastWrite();
}


/*
  Common function for simple general commands
*/
template<class WireInterface>
uint8_t Mcp4728<WireInterface>::_simpleCommand(byte simpleCommand) {
  _wire.beginTransmission(Command::GeneralCall);
  _wire.write(simpleCommand);
  return _wire.endTransmission();
}

