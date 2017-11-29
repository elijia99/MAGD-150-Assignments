void setup(){  
  
  background(0);
  
  size(1200,600);
  
  colorMode(RGB);
  
  frameRate(10);
  
  fill(0,153,0);
  triangle(width/3,height/1.5,width/1.5,height/1.5,width/2,height/4);
  
  float X=0.1;
  float Y=0.1;
}

void draw(){
  
  println("Welcome to Elijia's Interactive Screensaver");
  println("Move your mouse to interact with the screensaver");
  println("Press any key to change the background color");
  
  fill(254.5,254.5,0.5);
  float X=mouseX;
  float Y=mouseY;
  lerp(X,mouseX,0);
  lerp(Y,mouseY,0);
  ellipse(X,Y,75,50);
  
  fill(0.5,0.5,153.5);
  int A=min(100,50);
  int B=A*0;
  int C=max(1150,250);
  int D=C-1150;
  int E=50;
  int F=E+50;
  quad(A,B,C,D,1100,50,F,E);
  quad(50,600,100,550,1100,550,1150,600);
  
  fill(204.5,0.5,0.5);
  int G=1200;
  int H=G/6;
  quad(1100,H,G,100,1200,500,1100,400);
  quad(0,100,100,200,100,400,0,500);
  
  dist(A,B,F,E);
}

void keyPressed(){
 background(millis()%255,150,255);
}
