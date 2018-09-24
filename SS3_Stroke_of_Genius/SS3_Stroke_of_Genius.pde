//"Stroke_of_Genius" by Brian Livingston

float r = 150; 
float g = 150;
float b = 255;
float c = 50;
void setup(){
 size(700,700);
 
}
void draw(){
 background(r, g, b);
 
 if(mouseX < 150) {
  fill(r,g,b);
  strokeWeight(c);
  rect(width/3, height/2, 100, 100);
 }
 
 else if(mouseY > height/2) {
  fill(0,0, b, 75);
 ellipse(350,350,200,200);
}
 else {
 fill(r, g, 0);
 triangle(350,350,23,15,17,24);
 
  fill(0, 0, b);
 triangle(350,350,677,685,682,676);
 
}
}
void mousePressed(){
 r = random (0, 200);
 g = random (0, 200);
 b = random (0, 200);
 c = random (0, 16);
} 
void keyPressed(){
background(255,0,0,50);
}
 
