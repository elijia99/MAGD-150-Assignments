PVector location;
PVector speed;
PVector velocity;
int [] balloons = new int[10];{
balloons[0] = 150;
balloons[1] = 200;
balloons[2] = 400;
balloons[3] = 450;
balloons[4] = 700;
balloons[5] = 750;
}

void setup(){
 size(800,800);
 location = new PVector(width/2,height/2);
 speed = new PVector(2,2);
}

void draw(){
  //This code is used to declare categories of code to help keep the sketch organized and easier to read.
  background(220,160,0);
  manyBalloons();
  mainBalloon();
  redBalloon();
  blueBalloon();
  mysteryBalloon();
}

   //This code is used to make an array of balloons in the background of the main balloons.
   void manyBalloons(){
     fill(85,145,240);
     line(balloons[0],balloons[1],balloons[0],350);
     strokeWeight(2);
     ellipse(balloons[0],balloons[1],50,70);
     
     fill(180,85,240);
     strokeWeight(1);
     line(balloons[2],balloons[3],balloons[2],600);
     strokeWeight(2);
     ellipse(balloons[2],balloons[3],70,90);
   }
   
   //This code is used to make the main balloon, the yellow balloon. It also shows the use of the PVector and PVector functions.
   void mainBalloon(){
     scale(1);
     location.sub(speed);
     location.add(speed);
     location.sub(speed);
     
     if ((location.x > width) || (location.x < 0)) {
    speed.x = speed.x * -1;
  }
  if ((location.y > height) || (location.y < 0)) {
    speed.y = speed.y * -1;
  }
     fill(255,250,0);
     strokeWeight(3);
     line(location.x,location.y,400,800);
     strokeWeight(2);
     ellipse(location.x,location.y,160,280);
   }
   
  //This code is used to make the red balloon. It is also used to make a scaled version of this balloon that is shown as pink in the sketch.
 void redBalloon(){
 fill(255,0,0);
 strokeWeight(3);
 line(100,300,100,600);
 strokeWeight(1);
 ellipse(100,300,80,140);
 scale(.5);
 
 fill(245,65,85);
 strokeWeight(3);
 line(100,300,100,600);
 strokeWeight(1);
 ellipse(100,300,80,140);
  }
  
   //This code is used to make the blue balloon. It is also used to translate the balloon from it's original position.
   void blueBalloon(){
 fill(0,0,255);
 translate(width/4,height/15);
 strokeWeight(3);
 line(1200,300,1200,900);
 strokeWeight(1);
 ellipse(1200,300,160,280);
   }
   
   //This code is used to make the mystery balloon as well as show the use of the rotate function.
   void mysteryBalloon(){
    fill(0);
    rotate(PI);
    ellipse(1000,600,160,280);
   }
