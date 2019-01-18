/*Wrestler announcement  Adlib Generator

Author:  Brian Livingston
Editors: Brian Livingston 
         Michael Paul

*/

PImage ring1; 
PImage ring2; 
PImage ring3; 
int x = 300;
// intro, reputation and name arrays
String [] intro = {"Coming to the\nstage", "Hailing from\nOUTER darkness", "Entering the ring", "The GREAT\nfrom\nTrenton state"};
String [] rep = {"The UNMERCIFUL", "The DESTROYER\n of worlds", "The CRUSHER\nof continants", "The MARSHAL\nof mayhem"};
String [] name = {"LEE","TOD","BART","RALPH","PERSIVUL","MIKE","MARK",
                  "PAUL","KATE","ERIC","CATHY", "RON", "RYAN", "JACK", "PHEEBE"};

String state;
String howTo1 = ("Your a ring announcer, (aspiring)." +
     " You finally found a venue that will let you get some chops at your dream job." +
     " You will be introducing people who havn't made a name for themselves...literally." +
     " If you can make them sound great your on your way." +
     " You will be able to tell if you have done well because" +
     " you will be asked to announce them as if they are" +
     " the best the business has to offer." );
String howTo2 = ("If the crowd laughs then your introduction was so amazing that the persons" +
     " given name will sound ridiculous." +
     " When the crowd laughs you get a point." +
     " If you get 10 points you win the round." +
     " There are three rounds and you are competing against" +
     " other anouncers." );
String howTo3 = ("Say the two prompts from the prompt screens and then finally the name." +
     " Wait for laughter and if you get some you get a point." +
     " The most points out of 10 wins the round." +
     " The most rounds won out of three wins the opportunity" +
     " to work as a real anouncer." +
     " May the best announcer win.");

int o = 0;//opacity
int f = 4;//fade
int r = 20;//red
int g = 20;//green
int b = 100;//blue
int t = 100;//transparency
int size = 20;//used for size of text
int jump = 25;

//searches and selects randomly from arrays
int i; //= (int(random(4)));
int re; //= (int(random(4)));
int n; //= (int(random(11)));
int p = 0;

void setup(){
  ring1 = loadImage("ring 1.jpg");
  ring2 = loadImage("ring 2.jpg");
  ring3 = loadImage("ring 3.png");
  size(600,600);
  background(r,g,b,t);//background color
  state = "Splash";
  rectMode(CENTER);
  ellipse(mouseX, mouseY,40,40);
}

void draw(){
  println(mouseX,mouseY);
  background(255);
  if(state == "Splash"){
    splashScreen();
  }else if(state == "How1"){
    howToPlay1();
  }else if(state == "How2"){
    howToPlay2();
  }else if(state == "How3"){
    howToPlay3();
  }else if(state == "Begin"){
    beginScreen();
  }else if(state == "Generate1"){
    generate1();
  }else if(state == "Generate2"){
    generate2();
  }else if(state == "Generate3"){
    generate3();
    pointKeep();
  }else if(state == "Reset"){
    reset(); 
  }
    
  }
  
  
  void beginScreen(){
    fill(255);
    rect(300,300,300,225);
    textAlign(CENTER);
    textSize(25);
    strokeWeight(14);
    fill(o);
    text("Tap to begin", 300,300);
    o = o + f;
    if((o >255) || (o < 0)){
      f =-f;
    }
    i = (int(random(4)));
    re = (int(random(4)));
    n = (int(random(14)));
    
    if((mouseX > 223) && (mouseX < 374) && 
    (mouseY > 280) && 
    (mouseY < 300) && 
    (mousePressed == true)){
    state = "Generate1";
    }
      
    
  }
  
  void splashScreen(){
    background(255);
    textSize(25);
    fill(0);
    textAlign(CENTER);
    text("The Anouncer", 300,50);
    text("Created by\nBrian Livingston",300,100);
    text("Edited by\nBrian Livingston\nMichael Paul", 300, 230);
    text("Special thanks\nto\nAhmed Clark\nJamar Sanderson\nNnamdi Ezeuro", 300, 430);
  }
  
  void howToPlay1(){
    background(255);
    textSize(size);
    text(howTo1,300,400,300,600);
    fill(0);
  }
  
  void howToPlay2(){
    background(255);
    textSize(size);
    text(howTo2,300,400,300,600);
    fill(0);
}
  
  void howToPlay3(){
    background(255);
    textSize(size);
    text(howTo3,300,400,300,600);
    fill(0);
  }
  
  void generate1(){
  imageMode(CENTER);
  image(ring1,300,300,590,590);
    //background(255);
  textSize(size+40);
  textAlign(CENTER);
  text(intro[i]+",", x, 275);
  fill(200,200,0,255);
  }
  
  void generate2(){
  imageMode(CENTER);
  image(ring2,300,300,590,590);
  //background(255);
  textSize(size+40);
  textAlign(CENTER);
  text(rep[re]+",", x, 280);
  fill(200,200,0,255);
  }
  
  void generate3(){
  fill(255);
  image(ring3,300,300,590,590);
  //background(255);
  textSize(size+100);
  textAlign(CENTER);
  text(name[n]+"!", x, 385);
  textSize(jump);
  text("Next Fighter",x,516);
  if((mouseX > 227) && (mouseX < 376) && 
    (mouseY > 498) && 
    (mouseY < 521) && 
    (mousePressed == true)){
    state = "Begin";
    //rect(215,317, 112,70);
    }
    else if((mouseX > 227) && (mouseX < 376) && 
    (mouseY > 498) && 
    (mouseY < 521)){
    jump = 40;
    }else
    jump = 25;{
      
  }
  }
  
  void reset(){
    background(255);
    //background(r,g,b,t);
    textSize(size+40);
    text("Again?",x,300);
    fill(o);
    strokeWeight(6);
    o =o+f;
    if(o > 255 || o < 0){
      f=-f;
    }
    if((mouseX > 216) && (mouseX < 389) && 
    (mouseY > 255) && 
    (mouseY < 310) && 
    (mousePressed == true)){
      state = "Begin";
    }
  
  }
   
  void mousePressed(){
    if(state == "Splash"){
      state = "How1";
    }else if(state == "How1"){
      state = "How2";
    }else if(state == "How2"){
      state = "How3";
    }else if(state == "How3"){
      state = "Begin";
    //}else if(state == "Begin"){
     // state = "Generate1";
    }else if(state == "Generate1"){
      state = "Generate2";
    }else if(state == "Generate2"){
      state = "Generate3";
    //}else if(state == "Generate3"){
      //state = "Reset";
      }
  }
  
  void pointKeep(){
   strokeWeight(3);
   rect(490,50,120,70);
   fill(0);
   textSize(25);
   text("Score" + " " + p, 490, 40);
   text("+", 448, 70);
   text("-", 529, 70);
 }
  
  void mouseClicked(){
  if((mouseX > 438) && (mouseX < 455) && 
    (mouseY > 53) && 
    (mouseY < 68)) 
    {
    p++;
    }if(p > 10){
    p = 10; 
  }
 
  else if((mouseX > 523) && (mouseX < 535) && 
    (mouseY > 53) && 
    (mouseY < 68)) 
    {
    p--;
    }if(p < 0){
    p = 0;  
    }
  }
  
  
  
  
