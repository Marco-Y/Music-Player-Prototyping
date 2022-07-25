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
}//End setup
//
void draw() {
  if (song1.isLooping() && song1.loopCount()!=-1) println("There are", song1.loopCount(), "loops left.");
  if (song1.isLooping() && song1.loopCount()==-1) println("Looping Infinity");
  if (song1.isPlaying() && !song1.isLooping()) println("Play Once");
}//End draw
//
void keyPressed() {
  //First Play Button
  if ( key=='p' || key=='P' ) song1.play(); //Parameter is milli-seconds from start of audio file to start playing
  //
  //Alternate Play Button, as a finite loop() && infinite loop()
  //Only press a number for the code below
  println(key);
  if ( key=='1' ) {//Loop Function
    //Note: "9" is assumed to be massive, simulates infinity
    if (key=='1') println("Looping Once");
    String keystr= String.valueOf(key);
    println("Number of Repeats is", keystr);
    int loopNum  = int(keystr); //Local Variable plays once and loops twice
    song1.loop(loopNum); //Parameter is number of repeats
  }//End loop
  if (key=='i' || key=='I') song1.loop(); //Infinite loop , no parameter or -1
  if (key>='2' || key=='0') println("I do not loop that much, press i for infinite loop");
  //
  if (key=='m' || key=='M') {//Mute Button
    if (song1.isMuted()) {
      song1.unmute();
    } else {
      song1.mute();
    }
  }//End mute button
}//End keyPressed
//
void mousePressed() {
}//End mousePressed
//
//END MAIN PROGRAM
