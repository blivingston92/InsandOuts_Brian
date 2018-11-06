PImage[] title = new PImage[20];
PImage[] idle = new PImage[10]; 
PImage[] run = new PImage[8];
PImage[] jump = new PImage[6];

int size = 24;
int imagetitle = 0;
int imageidle = 0;
int imagerun = 0;
int imagejump = 0;

int t1 = 800;
int t2 = 900;
int t3 = 1000;
int t7 = 1400;
int t8 = 1500;
int t9 = 1600;

PFont g;

String state = "pregame";



void setup(){
size(800,800);
rectMode(CENTER);
g = loadFont("Macedonia3DFilled-Regular-48.vlw");
frameRate(10);
for(int i =0; i < title.length; i++){
title[i] = loadImage("sprite_BTRoN_Title" + i + ".png");
}
  for (int i = 0; i < idle.length; i++){
      idle[i] = loadImage("sprite_Stick_Idle" + i + ".png");
  }
 
  for (int i = 0; i < run.length; i++){
      run[i] = loadImage("sprite_Stick_Run" + i + ".png");
  }
      
  for (int i = 0; i < jump.length; i++){    
      jump[i] = loadImage("sprite_Stick_Jump" + i + ".png");
    }
}

void draw(){
  
  println(mouseX, mouseY);
  if(state =="pregame"){
    startScene();
  }
else if(state == "scene2"){
  sceneOne();
}
else if(state=="scene3"){
sceneTwo();
}
else if(state=="scene4"){
sceneThree();
}
else if(state=="scene5"){
sceneFour();
}
else if(state=="scene6"){
sceneFive();
}
else if(state=="scene7"){
sceneSix();
}
else if(state=="scene8"){
sceneSeven();
}
else if(state=="scene9"){
sceneEight();
}
else if(state =="scene10"){

gameScene();
bushes();
}
else if(state =="finalScene"){
  gOS();
}
else{
}
}
