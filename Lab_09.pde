import processing.sound.*;

import processing.video.*;

Capture video;
SoundFile sound;
PImage img;

void setup(){
  size(500,500);
  //This loads the image into processing to be used later in the sketch.
  img = loadImage("images.jpg");
  //This allows the sketch to display a live video of what the camera sees.
  video = new Capture(this,320,240,30);
  //This allows the sketch to import a sound file.
  sound = new SoundFile(this,"ProcessingSound.wav");
  //This allows the sound to be heard in the sketch.
  //The amp function allows the sound to be head louder in the sketch.
  sound.play();
  sound.amp(.5);
  //This starts the recording of the live video. Without it, the video will not start.
  video.start();
}

void draw(){
  println("The Viewer: An Interactive Documentary");
  println("Developed and programmed by Elijia Knight");
  //This allows the video to actually be displayed in the sketch. Without it, the video would record but no visual feedback would be present. 
  video.read();
  image(img,0,0,500,500);
  //This filters the background image of the sketch.
  filter(POSTERIZE,5);
  image(video,0,0);
  //This filters the live video presented within the sketch. 
  filter(GRAY);
}
