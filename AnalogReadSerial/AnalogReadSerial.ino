#include <LiquidCrystal.h>

LiquidCrystal lcd(8,9,4,5,6,7);

#include <Adafruit_Sensor.h>
#include <DHT.h>
#include <DHT_U.h>
#define buzzerPin 31
int notaSayisi = 8;
int C = 262;
int D = 294;
int E = 330;
int F = 349;
int G = 392;
int A = 440;
int B = 494;
int C_ = 523;
int notalar[] = {C, D, E, F, G, A, B, C_};

#define DHTPIN 35     // what digital pin we're connected to
#define DHTTYPE DHT11   // DHT 11
DHT dht1(DHTPIN, DHTTYPE);

/*****************************/
void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  lcd.begin(16,2);
}
void nemVeisi(){
   // Wait a few seconds between measurements.
  delay(300);

  // Reading temperature or humidity takes about 250 milliseconds!
  // Sensor readings may also be up to 2 seconds 'old' (its a very slow sensor)
 // float h = dht1.readHumidity();
  // Read temperature as Celsius (the default)
  float t = dht1.readTemperature();
  // Read temperature as Fahrenheit (isFahrenheit = true)
 // float f = dht1.readTemperature(true);

  // Check if any reads failed and exit early (to try again).
 if (isnan(t)) {
 Serial.print("okunamadi ");
   Serial.print("|");
  return;
}

  // Compute heat index in Fahrenheit (the default)
 // float hif = dht1.computeHeatIndex(f, h);
  // Compute heat index in Celsius (isFahreheit = false)
//  float hic = dht1.computeHeatIndex(t, h, false);

  //Serial.print("NEM: ");
  //Serial.print(h);
  //Serial.print(" %\t");
  //Serial.print("Sicaklik: ");
  Serial.print(t);
  Serial.print("|");
 // Serial.print(" *C ");
  //Serial.print(f);
  //Serial.print(" *F\t");
 // Serial.print("Hissedilen Sicaklik: ");
 // Serial.print(hic);
 // Serial.print(" *C ");
//  Serial.print(hif);
//  Serial.println(" *F");
 // lcd.print("NEM: ");
//   lcd.print(h);
  // lcd.print("Sicaklik: ");
  lcd.print("sicaklik:");
   lcd.print(t);
// lcd.print("Hissedilen Sicaklik:");
  // lcd.print(f);
}
void gazSensoru(){
    int sensorDegeri = analogRead(A8);
 // Serial.print("Sensor Degeri :");
  Serial.print(sensorDegeri);
  Serial.println("");
  delay(250);
  if(sensorDegeri>400){
    tone(buzzerPin, notalar[1,2,3,5]);
    digitalWrite(buzzerPin,HIGH);
  }
    else{
      noTone(buzzerPin);
    }
      lcd.setCursor(0,1);
      lcd.print("gazSeviyesi:");
      lcd.print(sensorDegeri);
    
 
}
void buzzer(){
int notaSayisi = 8;
int C = 262;
int D = 294;
int E = 330;
int F = 349;
int G = 392;
int A = 440;
int B = 494;
int C_ = 523;
int notalar[] = {C, D, E, F, G, A, B, C_};
digitalWrite(buzzerPin,HIGH);
}

void loop() {
  // put your main code here, to run repeatedly:
  nemVeisi();
  gazSensoru();
  lcd.home();
  
}

