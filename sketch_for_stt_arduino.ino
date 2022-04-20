int servo1 = 5;
int servo2 = 6;

void setup() {
  
  
  // start serial port at 9600 bps:
  Serial.begin(9600);
  pinMode(servo1, OUTPUT);
  pinMode(servo2, OUTPUT);
  // initialize digital pin LED_BUILTIN as an output.
  //pinMode(LED_BUILTIN, OUTPUT);
  while (!Serial) {
    ; // wait for serial port to connect.
  }

}

void loop() {
  char buffer[16];
  // if we get a command, turn the LED on or off:
  if (Serial.available() > 0) {
    int size = Serial.readBytesUntil('\n', buffer, 12);
    Serial.print(buffer[0]);
    if (buffer[0] == 'Y') {
      Serial.print('1');
      digitalWrite(servo1, HIGH);
      digitalWrite(servo2, HIGH);
    }
    if (buffer[0] == 'N') {
      digitalWrite(servo1, LOW);
      digitalWrite(servo2, LOW);
    }
     if (buffer[0] == 'L') {
      digitalWrite(servo1,LOW);
      digitalWrite(servo2, HIGH);
    }
      if (buffer[0] == 'R') {
      digitalWrite(servo1, HIGH);
      digitalWrite(servo2, LOW);
    }
  }
}
