// DEMO FOR SENDING SERIAL DATA FROM ARDUINO TO PROCESSING
//READS DIGITAL SENSOR AND WRITES VALUE TO SERIAL PORT 



const int BUTTON = 4; //button hooked up to digital pin 3
int val1 = 0;
int val2 = 0;
int val3 = 0;
int val4 = 0;
int val5 = 0;
int val6 = 0;
int val7 = 0;

void setup() {
  pinMode (BUTTON, INPUT);
  Serial.begin(9600); // Start serial communication at 9600 baud
}

void loop() {
  val1 = digitalRead(BUTTON); //read button and assign to variable called val
  if (val1 == 1){
    Serial.write('s');
    //Serial.println('s');
  }

//  if (val2 == 1){
//    Serial.write
//  }
//  if (val3 == 1){
//    Serial.write
//  }
//  if (val4 == 1){
//    Serial.write
//  }
//  if (val5 == 1){
//    Serial.write
//  }
//  if (val6 == 1){
//    Serial.write
//  }
//  if (val7 == 1){
//    Serial.write
//  }
//  
//  delay(100); // Wait 100 milliseconds
//
//  /////////Uncomment Serial.print() OR Serial.write() and not both!//////////////
//  
//  //Serial. println(val); //to send human-readable data to Arduino monitor
//  Serial.write(val1);  //to send binary data to Processing
}

