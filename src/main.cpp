#include <SPI.h>
#include <Wire.h>

void setup() {
  Serial.begin(115200);
  pinMode(PC13,OUTPUT);
    
}
void loop() {
  Serial.println("on");
  digitalWrite(PC13,HIGH);
  delay(300);
  Serial.println("off");
  digitalWrite(PC13,LOW);
  delay(300);
  
}