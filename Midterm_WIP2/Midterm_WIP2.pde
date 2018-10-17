int x = 0; // postiton for Rect
int x2 = 0; //position for ellipse
int go = 5;//speed for Rect
int go2 = 5;//speed for ellipse
int go3 = 1;
String state = "pregame";//state 1
float size = 24;


float y = width/2;


void setup(){
  size(500,500);
  ellipseMode(CORNER);
 
}

void draw(){
  println(mouseX,mouseY);

  if(state=="pregame"){
  background(75,100,75,202);
  textSize(size);
text("Click to start.", width/4, height/2);
if ((mouseX >= 126) && (mouseX<=284) && 
(mouseY >= 225) && (mouseY <=257)) {
    size = size = 35;
  }else{
    size = 24;
  }
}else if (state=="game"){
background(150,0,100,202);
rect(x,250,100,25); 
ellipse(x2,y,45,45);
x = x + go; //rect movement
x2 = x2 + go2; //ellipse movement
y = y + go3;

if((x2 > width-50) || (x2<0)){
  go2 = go2 * -1;
}
if((y<0) || y>height-50){
  go3 = go3 * -1;
}
if((x > width-100) || (x<0)){
  go = go * -1;
println(y); 

}
}else if (state=="game over") {
  background(255,0,0);
  text("want to play again", width/2, height/2);
if(keyPressed){
  if(key == 'j' || key == 'J'){
    y = y -3.5;
    y=constrain(y,0,height);
  }
}
}
}
  void mousePressed(){
    if(state=="pregame"){
      state="game";
    }
  }
