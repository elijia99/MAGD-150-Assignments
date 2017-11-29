PImage img1;
PImage img2;
PImage img3;

float x,y,z,lookX,lookY,lookZ,camVelocity,view,upX,upY,upZ;

void setup(){
  size(1300,700,P3D);
  
  img1 = loadImage("Front,Back.tif");
  img2 = loadImage("Left,Right sides.tif");
  img3 = loadImage("Top,Bottom.tif");
  
  x = width/2;
  y = height/2;
  z = (height/2)/.55;
  lookX = x;
  lookY = y;
  lookZ = 0;
  camVelocity = 5;
  view = 250;
  upX = 0;
  upY = 1;
  upZ = 0;
}

void draw(){
  threeDTrapezoid();
  threeDBox();
  threeDSphere();
  camera(x,y,z,lookX,lookY,lookZ,upX,upY,upZ);
}

void threeDTrapezoid(){
  background(0);
  stroke(255);
  noFill();
  directionalLight(230,255,255,-1,0,0);
  ambientLight(105,105,105);
  
  
  beginShape();
  texture(img1);
  vertex(450,450);
  vertex(550,300);
  vertex(750,300);
  vertex(850,450);
  vertex(450,450);
  endShape();
  
  beginShape();
  texture(img3);
  vertex(595,270);
  vertex(785,270);
  vertex(750,300);
  vertex(550,300);
  vertex(595,270);
  endShape();
  
  beginShape();
  texture(img2);
  vertex(850,450);
  vertex(875,400);
  vertex(785,270);
  vertex(750,300);
  vertex(850,450);
  endShape();
}

void threeDBox(){
  fill(65,255,50);
  translate(width/4.5,height/2);
  box(200);
}

void threeDSphere(){
  noStroke();
  fill(50,255,250);
  translate(width/1.7,height/35);
  sphere(150);
  
}

void keys(){
  if (keyPressed) 
    if (y>0
      && (key=='w' || key=='W' || keyCode==UP)) {
      y -= camVelocity;
      lookY = y;
    }
    if (x>-view
      && (key=='a' || key=='A' || keyCode==LEFT)) {
      x -= camVelocity;
      lookX = x;
    }
    if (y<height-10
      && (key=='s' || key=='S' || keyCode==DOWN)) {
      y += camVelocity;
      lookY = y;
    }
    if (x<view
      && (key=='d' || key=='D' || keyCode==RIGHT)) {
      x += camVelocity;
      }
  }
