void startScene(){
  background(255);
  frameRate(10);
  image(title[imagetitle],300, 200, 200, 200);
  imagetitle = (imagetitle + 1) % title.length;
  textSize(size);
  textFont(g,size); //changes font
  fill(0,200,150);
  
  text("Press 'S' for story", 325,350);
text("Press 'H' to play game", 315, 375);

  if ((mouseX >= 319) && (mouseX<=478) && (mouseY >= 319) && (mouseY <=355)){ // makes words swell when moused over
    size = 35;
  }else{
    size = 24;
    }
}
