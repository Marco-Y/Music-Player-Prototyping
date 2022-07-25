import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
Minim minim; //creates object to access all functions
Audioplayer song1; //creates a playlist
//
void setup() {
  minim = new Minim(this); //load from data directory, loadFile should also load from project folder, like loadImage
  song1 = minim.loadFile("Xylophone Tip Toe Scale Up.mp3"); //able to pass absolute path, file name and extension, url
  song1.play(); //Parameter is milli-seconds from start of audio file to start playing
}//End setup
//
void draw() {
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
}//End mousePressed
//
//END MAIN PROGRAM
