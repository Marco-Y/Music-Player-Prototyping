//NEVER COPY OR IT WILL BREAK PROGRAM
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
Minim minim; //creates object to access all functions
AudioPlayer song1; //creates a playlist
//
void setup() {
  minim = new Minim(this); //load from data directory, loadFile should also load from project folder, like loadImage
  song1 = minim.loadFile("Xylophone Tip Toe Scale Up.mp3"); //able to pass absolute path, file name and extension, url
  //song1.play(); //Parameter is milli-seconds from start of audio file to start playing
  song1.loop(); //Parameter is number of repeats
}//End setup
//
void draw() {
}//End draw
//
void keyPressed() {
  //First Play Button
  if ( key=='p' || key=='P' ) song1.play(); //Parameter is milli-seconds from start of audio file to start playing
  //
  int loopNum3  = 2; //Local Variable plays once and loops twice
  if ( key=='l' || key=='L' ) song1.loop(loopNum3); //Parameter is number of repeats
}//End keyPressed
//
void mousePressed() {
}//End mousePressed
//
//END MAIN PROGRAM
