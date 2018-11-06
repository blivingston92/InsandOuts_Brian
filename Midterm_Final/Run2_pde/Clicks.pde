void mousePressed(){
  if(state =="scene2"){
        state = "scene3";  
     }
  else if(state =="scene3"){
        state ="scene4";
  }
  else if(state =="scene4"){
        state ="scene5";
  }
   else if(state =="scene5"){
        state ="scene6";
  }
  else if(state =="scene6"){
        state ="scene7";
  }
   else if(state =="scene7"){
        state ="scene8";
  }
  else if(state =="scene8"){
        state ="scene9";
  }
   else if(state =="scene9"){
        state ="scene10";
  }
  else if(state=="finalScene"){
  state = "pregame";
}
}

void keyPressed(){
  if(state == "pregame"){
 if(keyCode == 's' || keyCode == 'S'){
    state="scene2";
  }
  else if(keyCode =='h' || keyCode == 'H'){
  state="scene10";
  }
  }
frameRate(10);
      if (keyPressed){
        if(keyCode == RIGHT){
        image(run[imagerun], 300, 450,200,200);
        imagerun = (imagerun+1) % run.length;
      }
   
      else if(keyCode == UP){
        image(jump[imagejump], 300, 450,200,200);
        imagejump = (imagejump+1) % jump.length;
      }
      
       else{
         if (keyCode == DOWN){
         image(idle[imageidle], 300, 450,200,200);
         imageidle = (imageidle + 1) % idle.length;
         }
  }
    }
    
}
