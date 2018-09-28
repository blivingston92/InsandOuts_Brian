//"Channel Surfing" by Brian Livingston
float r = random(0,255);
void setup(){
  size(200,200);
}
void draw(){
  fill(r);
  ellipse(mouseX, mouseY, 25, 25);
  
  for (int i = 0; i < 100; i++){
    float r = random(50);
    rect(40, i, 30 +r, i);
  }
  for (int i = 0; i < 75; i++){
  float r = random(60);
 ellipse(mouseX, i,i,50+r);}
}
void keyPressed(){
if (r == 0){
    r = 255; 
} else {
  r = 0;
}
}
