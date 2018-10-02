PImage Ken; 
int r=62;
int x = 0;
int y = 400;
void setup(){
Ken = loadImage("Ken.png");
size(800,600);
frameRate(4);
}

void draw(){
 background(150);
 textSize(48);
 fill(r + y, x, r,x + y);
 text("Bang", x + r, y + r);
 //image(Ken,0,0);
  copy(Ken,x,y,89,100,0,0,400,400);
  stroke(0);
  strokeWeight(2);
 println(mouseX,mouseY, width, height);
 noFill();
 rect(0,0,400,400);
if (keyPressed == true && x < 425){
  copy(Ken,x,y,89,100,0,0,400,400);
  x += 75;
}
 else{
   mousePressed = true;
   x = 0;
  
}
}
