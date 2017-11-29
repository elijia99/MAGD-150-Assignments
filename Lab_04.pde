char upKey;
char leftKey;
char rightKey;
char downKey;

boolean w;
boolean a;
boolean s;
boolean d;

float e=0;
float x=width/2;
float y=height/2;
float radius= min(width,height)/1;
float speed=15;
float circleX=0;
float circleY=0;
float Xspeed=0+5;
float Yspeed=0+5;


void setup(){
  size(800,700);
  
  upKey='w';
  leftKey='a';
  downKey='s';
  rightKey='d';
}

void draw(){    
  background(0);
  println("Welcome to the Pizza Game");
  println("Use the 'W', 'A', 'S', 'D' keys to move the circle");
  println("Click the right mouse to change the backgound color");
  println("The goal of the game is to reach the other side of the frame without being touched by the brown circle (a cockroach).");
  println("But you must go through the pizza before touching the other side.");
  println("Good Luck!!!");
  
  fill(95,70,70);
  ellipse(circleX,circleY,75,75);
  circleX=circleX+Xspeed;
  circleY=circleY+Yspeed;
  
   if(circleX>width){
    Xspeed= -10;
  }
  
  if(circleY>width){
    Yspeed= -10;
  }
  
  if(circleX<0){
    Xspeed= 10;
  }
  
  if(circleY<0){
    Yspeed= 15;
  }
  
  noFill();
  stroke(85,245,240);
  while(e<800){
    ellipse(50+e*3,50+e*3,50+e,50-e*2);
    e=e+2;
  }
  
  stroke(0);
  fill(map(x,0,width,70,30),25,map(y,0,height,20,210));
  ellipse(x,y,radius,radius);
  
  fill(210,205,35);
  triangle(300,450,500,450,400,200);
  fill(230,230,155);
  quad(300,450,500,450,520,500,280,500);
  fill(110,30,30);
  ellipse(435,410,50,50);
  ellipse(365,360,30,30);
  ellipse(400,310,40,40);
  
}

void mousePressed(){
    if (mouseButton==RIGHT){
      background(120,200,100);
  } else if (mouseButton==CENTER){
      background(100,235,250);
  }
}

void keyPressed(){
    if (key==upKey){
      y -= speed;
    }
    
    if (key==leftKey){
      x -= speed;
    }
    if (key==rightKey){
      x += speed;
    }
    
    if (key==downKey){
      y += speed;
    }
}
