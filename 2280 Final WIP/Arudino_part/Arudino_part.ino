// DEMO FOR SENDING SERIAL DATA FROM ARDUINO TO PROCESSING
//READS DIGITAL SENSOR AND WRITES VALUE TO SERIAL PORT 




unsigned long aMilli;
unsigned long tMilli;
const unsigned long wave = 1000;


const int BUTTON1 = 3; //button hooked up to digital pin 3

const int BUTTON2 = 4;

const int BUTTON3 = 5;

const int BUTTON4 = 6;

const int BUTTON5 = 7;

const int BUTTON6 = 8;

const int BUTTON7 = 9;

int pStore = 0;
int cStore = 0;



int val1 = 0;

int val2 = 0;

int val3 = 0;

int val4 = 0;

int val5 = 0;

int val6 = 0;

int val7 = 0;



void setup() {

  pinMode (BUTTON1, INPUT);

  pinMode (BUTTON2, INPUT);

  pinMode (BUTTON3, INPUT);

  pinMode (BUTTON4, INPUT);

  pinMode (BUTTON5, INPUT);

  pinMode (BUTTON6, INPUT);

  pinMode (BUTTON7, INPUT);

  Serial.begin(9600); // Start serial communication at 9600 baud
  aMilli = millis();
}



void loop() {

  val1 = digitalRead(BUTTON1); //read button and assign to variable called val

  val2 = digitalRead(BUTTON2);

  val3 = digitalRead(BUTTON3);

  val4 = digitalRead(BUTTON4);

  val5 = digitalRead(BUTTON5);

  val6 = digitalRead(BUTTON6);

  val7 = digitalRead(BUTTON7);

//    val1 = cStore;
//    if (pStore != cStore){ //if button is pressed store value
//      if(cStore == 1)
//      {
//      //Serial.write(1);
//      cStore = 0;
//      }
//    //Serial.println(cStore);
//
//  }

 if (val1 == 1){

    Serial.write(1);

//    Serial.println(2);

  }


  if (val2 == 1){

    Serial.write(2);

//    Serial.println(2);

  }

  if (val3 == 1){

    Serial.write(3);

//    Serial.println(3);

  }

  if (val4 == 1){

    Serial.write(4);

//    Serial.println(4);

  }

  if (val5 == 1){

    Serial.write(5);

//    Serial.println(5);

  }

  if (val6 == 1){

    Serial.write(6);

//    Serial.println(6);

  }

  if (val7 == 1){

    Serial.write(7);

//    Serial.println(7);

  }
  delay(20); // Wait 100 milliseconds
//
//  /////////Uncomment Serial.print() OR Serial.write() and not both!//////////////
//  
//  //Serial. println(val); //to send human-readable data to Arduino monitor
//  Serial.write(val1);  //to send binary data to Processing
}
