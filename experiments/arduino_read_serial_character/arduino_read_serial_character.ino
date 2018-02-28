void setup() {
  Serial.begin(115200);
  pinMode(13, OUTPUT);
}

void loop() {
  if (Serial.available() > 0) {

    byte readCharacter = Serial.read();

    while (Serial.available() > 0) {
      Serial.read();
    }

    if (readCharacter == 'a') {

      digitalWrite(13, HIGH);
      delay(2000);
      digitalWrite(13, LOW);
    }
  }
}
