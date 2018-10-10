int x = 0;
int go = 5;
int z = 0;
int y = width/2;
int go2 = 5;
int l = 2;
float y2 = random(0,1);
int x2 = 100;

void setup(){
  size(500,500);
}

void draw(){
background(150,0,150,25);
rect(x,250,100,25); 
ellipse(x,y,45,45);
x = x + go;

if((x > width-100) || (x<0)){
  go = go * -1;

}

if(keyPressed == true){
  y = y + go;
}else{
  y++;
}
}
