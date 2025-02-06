#include <EEPROM.h>
#include <SoftwareSerial.h>
#include <SPI.h>
#include <MFRC522.h>


#define SS_PIN 10
#define RST_PIN 9
#define A_pin 2
#define B_pin 3
#define C_pin 8

SoftwareSerial mySerial(4, 5); // RX, TX
MFRC522 rfid(SS_PIN, RST_PIN); 
MFRC522::MIFARE_Key key; 

byte nuid[4];
char msg;
byte ID_no = 0;
byte oil; 
byte money;
//---------------------------------------------
byte ID_01[] = {0x61,0xCE,0x85,0xAB};
byte ID_02[] = {0x55,0xBE,0x75,0x63};
byte ID_03[] = {0x2A,0x47,0x16,0xCB};
byte ID_04[] = {0x2D,0xDB,0x46,0xD5};
byte ID_05[] = {0xFD,0x2A,0x2E,0x2B};

char number_01[] = "01764180287";
char number_02[] = "01764180287";
char number_03[] = "01764180287";
char number_04[] = "01764180287";
char number_05[] = "01764180287";

char authority[] = "01764180287";
//---------------------------------------------

char text[] = "Your balance is refilled by 20TK. ";

byte money_01 = 0, money_02 = 0, money_03 = 0;
byte money_04 = 0, money_05 = 0;

void setup() {
  Serial.begin(115200);
  SPI.begin(); // Init SPI bus
  rfid.PCD_Init(); // Init MFRC522
  
  mySerial.begin(9600);
  pinMode(A_pin, INPUT);
  pinMode(B_pin, INPUT);
  pinMode(C_pin, INPUT);
  money_01 = EEPROM.read(0);
  money_02 = EEPROM.read(1);
  money_03 = EEPROM.read(2);
  money_04 = EEPROM.read(3);
  money_05 = EEPROM.read(4);
  if(money_01 == 255) EEPROM.write(0,0);
  if(money_02 == 255) EEPROM.write(1,0);
  if(money_03 == 255) EEPROM.write(2,0);
  if(money_04 == 255) EEPROM.write(3,0);
  if(money_05 == 255) EEPROM.write(4,0);
}

void loop() {
  while (!mySerial.available())scan_key();
  msg = mySerial.read();
  show_bill();
  if(msg == 'R') recharge();
  if(msg == 'U') update_m();
  if(msg == 'h') send_SMS("HIGH");
  if(msg == 'l') send_SMS("LOW");
  scan_key();
}

void scan_key(){
  if(digitalRead(A_pin) == HIGH) {
    mySerial.println("S"); 
    card_found();
  }
  
  if(digitalRead(B_pin) == HIGH){
    mySerial.println("P");
    delay(1000);
  }
  
  if(digitalRead(C_pin) == HIGH){
    mySerial.println("H"); 
    card_found();
  }
}

void card_found(){
    while(!rfid.PICC_IsNewCardPresent());
    while(!rfid.PICC_ReadCardSerial()); 
    
  mySerial.print("ID");
  for (byte i = 0; i < 4; i++) {
    nuid[i] = rfid.uid.uidByte[i];
  }

  if(nuid[0] == ID_01[0] && nuid[3] == ID_01[3]){mySerial.print("01");}
  else if(nuid[0] == ID_02[0] && nuid[3] == ID_02[3]){mySerial.print("02");}
  else if(nuid[0] == ID_03[0] && nuid[3] == ID_03[3]){mySerial.print("03");}
  else if(nuid[0] == ID_04[0] && nuid[3] == ID_04[3]){mySerial.print("04");}
  else if(nuid[0] == ID_05[0] && nuid[3] == ID_05[3]){mySerial.print("05");}
  else{mySerial.print("00");}  
}

void show_bill(){
  if(msg == '1'){
    money_01 = EEPROM.read(0);
    mySerial.print("M");
    mySerial.println(money_01, DEC);
  }
  if(msg == '2'){
    money_02 = EEPROM.read(1);
    mySerial.print("M");
    mySerial.println(money_02, DEC);
  }
  if(msg == '3'){
    money_03 = EEPROM.read(2);
    mySerial.print("M");
    mySerial.println(money_03, DEC);
  }
  if(msg == '4'){
    money_04 = EEPROM.read(3);
    mySerial.print("M");
    mySerial.println(money_04, DEC);
  }
  if(msg == '5'){
    money_05 = EEPROM.read(4);
    mySerial.print("M");
    mySerial.println(money_05, DEC);
  }
}

void recharge(){
    mySerial.print("I");
    while (!mySerial.available());
    msg = mySerial.read();
      if(msg == '1'){
        money_01 = EEPROM.read(0);
        money_01 += 20;
        if(money_01 > 255) money_01 = 250; 
        EEPROM.write(0, money_01);
        money = money_01;
        send_SMS_recharge(0);
      }
      if(msg == '2'){
        money_02 = EEPROM.read(1);
        money_02 += 20;
        if(money_02 > 255) money_02 = 250; 
        EEPROM.write(1, money_02);
        money = money_02;
        send_SMS_recharge(1);
      }
      if(msg == '3'){
        money_03 = EEPROM.read(2);
        money_03 += 20;
        if(money_03 > 255) money_03 = 250; 
        EEPROM.write(2, money_03);
        money = money_03;
        send_SMS_recharge(2);
      }
      if(msg == '4'){
        money_04 = EEPROM.read(3);
        money_04 += 20;
        if(money_04 > 255) money_04 = 250; 
        EEPROM.write(3, money_04);
        money = money_04;
        send_SMS_recharge(3);
      }
      if(msg == '5'){
        money_05 = EEPROM.read(4);
        money_05 += 20;
        if(money_05 > 255) money_05 = 250; 
        EEPROM.write(4, money_05);
        money = money_05;
        send_SMS_recharge(4);
      }
    mySerial.print("K");
}

void update_m(){
  mySerial.print("B");
  while (!mySerial.available());
  msg = mySerial.read();
  while (!mySerial.available());
  byte oil_0 = mySerial.read();
  while (!mySerial.available());
  byte oil_1 = mySerial.read();
  oil_0 -= 48; oil_1 -= 48;
  oil = (oil_0 * 10) + oil_1;
  money = (oil_0 * 100) + (oil_1 * 10);
     if(msg == '1'){
        money_01 = EEPROM.read(0);
        money_01 -= money;
        EEPROM.write(0, money_01);
        money = money_01;
        send_SMS_oil(0);
      }
      if(msg == '2'){
        money_02 = EEPROM.read(1);
        money_02 -= money;
        EEPROM.write(1, money_02);
        money = money_02;
        send_SMS_oil(1);
      }
      if(msg == '3'){
        money_03 = EEPROM.read(2);
        money_03 -= money;
        EEPROM.write(2, money_03);
        money = money_03;
        send_SMS_oil(2);
      }
      if(msg == '4'){
        money_04 = EEPROM.read(3);
        money_04 -= money;
        EEPROM.write(3, money_04);
        money = money_04;
        send_SMS_oil(3);
      }
      if(msg == '5'){
        money_05 = EEPROM.read(4);
        money_05 -= money;
        EEPROM.write(4, money_05);
        money = money_05;
        send_SMS_oil(3);
      } 
}

void send_SMS_oil(byte num){
  Serial.print("AT+CMGF=1\r\n");
  delay(200);
  Serial.print("AT+CMGS=\"");
  delay(200);
  if(num == 0) Serial.print(number_01);
  if(num == 1) Serial.print(number_02);
  if(num == 2) Serial.print(number_03);
  if(num == 3) Serial.print(number_04);
  if(num == 4) Serial.print(number_05);
  Serial.print("\"\r\n");
  delay(200);
  Serial.print("You refilled your fuel tank by ");
  Serial.print(oil, DEC);
  Serial.print(" Litre oil. Current Balance is: ");
  Serial.print(money, DEC);
  Serial.print("TK.");
  Serial.write(0x1A); 
  Serial.print("\r\n");
  delay(3000);
}

void send_SMS_recharge(byte num){
  Serial.print("AT+CMGF=1\r\n");
  delay(200);
  Serial.print("AT+CMGS=\"");
  delay(200);
  if(num == 0) Serial.print(number_01);
  if(num == 1) Serial.print(number_02);
  if(num == 2) Serial.print(number_03);
  if(num == 3) Serial.print(number_04);
  if(num == 4) Serial.print(number_05);
  Serial.print("\"\r\n");
  delay(200);
  Serial.print(text);
  Serial.print("Current Balance is: ");
  Serial.print(money, DEC);
  Serial.print("TK.");
  Serial.write(0x1A); 
  Serial.print("\r\n");
  delay(3000);
}

void send_SMS(char *txt){
  Serial.print("AT+CMGF=1\r\n");
  delay(200);
  Serial.print("AT+CMGS=\"");
  delay(200);
  Serial.print(authority);
  Serial.print("\"\r\n");
  delay(200);
  Serial.print("Fuel Level: ");
  Serial.print(txt);
  Serial.write(0x1A); 
  Serial.print("\r\n");
  delay(3000);
  msg = 0;
}


