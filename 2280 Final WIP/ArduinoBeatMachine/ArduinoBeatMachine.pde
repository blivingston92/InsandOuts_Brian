import ddf.minim.analysis.*;
import ddf.minim.*;

float r = random(0,255);
int ex1 = 268;
int ex2 = 252;

Minim minim;
AudioSample snare1;
AudioSample snare2;
AudioSample snare3;
AudioSample snareSD;
AudioSample hihat;
AudioSample sample1;
AudioSample sample2;
AudioSample sample3;
AudioSample sample4;
AudioSample BD;
AudioSample kick;
AudioSample snap;

void setup()
{
  size(600, 600, P3D);
  minim = new Minim(this);

  snare1 = minim.loadSample("Snare 1.mp3", 512);
  if ( snare1 == null ) println("Didn't get snare1!");
  snare2 = minim.loadSample("02 Snare.mp3", 512);
  if ( snare2 == null )println("Didn't get snare2!");
  snare3 = minim.loadSample("01 Snare.3.mp3", 512);
  if ( snare3 == null ) println("Didn't get snare3!");
  snareSD = minim.loadSample("SD.wav", 512);
  if ( snareSD == null )println("Didn't get snare4!");
  hihat = minim.loadSample("02 hihat 01.mp3", 512);
  if ( hihat == null )println("Didn't get hihat!");
  sample1 = minim.loadSample("PA Guitar Electric6 Fm.mp3", 400);
  if ( sample1 == null )println("Didn't get sample1!");
  sample2 = minim.loadSample("07 070 Ebmaj.mp3", 400);
  if ( sample2 == null )println("Didn't get sample2!");
  sample3 = minim.loadSample("18_DropLead.mp3", 400);
  if ( sample3 == null )println("Didn't get sample3!");
  sample4 = minim.loadSample("PA Melody Loop30 E.mp3", 400);
  if ( sample4 == null )println("Didn't get sample4!");
  BD = minim.loadSample("BD.mp3", 512);
  if ( BD == null )println("Didn't get BD!");
  kick = minim.loadSample("Kick 5.mp3", 512);
  if ( kick == null )println("Didn't get kick!");
  snap = minim.loadSample("KK Kit 06 Snap 1.mp3", 512);
  if ( snap == null )println("Didn't get snap!");
}

void draw()
{
  background(109,175,140,51);
  strokeWeight(2.75);
  stroke(r,0,0,31);
  println(mouseX,mouseY);
   //use the mix buffer to draw the waveforms.
  for (int i = 0; i < sample1.bufferSize() - 1; i++)
  {
 
    ellipse(142,183+sample1.mix.get(i+1)*150,50+sample1.mix.get(i+1)*250,50-sample1.mix.get(i+1)*150);
    ellipse(393,192,50+sample2.mix.get(i+1)*250,50+sample2.mix.get(i+1)*150);
    ellipse(150,350+sample3.mix.get(i+1)*150,50+sample3.mix.get(i+1)*150,50+sample3.mix.get(i+1)*150);
    ellipse(400,450-sample4.mix.get(i+1)*150,50+sample4.mix.get(i+1)*150,50+sample4.mix.get(i+1)*150);
    
  }
}

void keyPressed() 
{
  if ( key == 's' ){
  snare1.trigger();
  fill(255,0,0,31);
  ellipse(ex1,ex2,100,100);
  }
  
  if( key == 'x' ) {
  snare2.trigger();
  fill(125,161,222,31);
  ellipse(ex1,ex2,100,100);
  }
  
  if ( key == 'a' ){
  snare3.trigger();
  fill(175,234,203,31);
  ellipse(ex1,ex2,100,100);
  }
  
  if ( key == 'z' ){
  snareSD.trigger();
  fill(234,221,175,31);
  ellipse(ex1,ex2,100,100);
  }

  if ( key == 'j' ){
  hihat.trigger();
  fill(240,237,r,31);
  ellipse(ex1,ex2,100,100);
  }
  
  //Stop Sample 1 from playing during other sample triggers
  if ( key == 'u' ){ 
    sample1.trigger();
  }else{
 
  if ( key == 'i' ) 
  sample1.stop();
  if ( key == 'o' ) 
  sample1.stop();
  if ( key == 'p' ) 
  sample1.stop();
  }
  
  
  //Stop Sample 2 from playing during other sample triggers
  if ( key == 'i' ){
    sample2.trigger();
  }
  else{
  if ( key == 'u' ) 
  sample2.stop();
  if ( key == 'o' ) 
  sample2.stop();
  if ( key == 'p' ) 
  sample2.stop();
  }
  
  //Stop Sample 3 from playing during other sample triggers
  if ( key == 'o' ){
    sample3.trigger();
  }
  else{
  if ( key == 'i' ) 
  sample3.stop();
  if ( key == 'u' ) 
  sample3.stop();
  if ( key == 'p' ) 
  sample3.stop();  
}
  
 //Stop Sample 4 from playing during other sample triggers 
  if ( key == 'p' ){
    sample4.trigger();
  }
  else{
  if ( key == 'i' ) 
  sample4.stop();
  if ( key == 'o' ) 
  sample4.stop();
  if ( key == 'u' )
  sample4.stop();  
}
  
  
  if ( key == 'd' ) BD.trigger();
  if ( key == 'c' ) kick.trigger();
  if ( key == 'f' ) snap.trigger();
  
  
}
