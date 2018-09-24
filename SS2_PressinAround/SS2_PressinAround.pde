//"PressinAround" by Brian Livingston

void setup() {
size(600,600);
background(26);
frameRate(30);
int X = 200;
float Y = 400;
}
void draw(){
}
void mousePressed(){
stroke(4);
fill(X,61,200,125);
ellipse(mouseX,mouseY,61, Y+90);
}
void keyPressed(){
background(201);
}
