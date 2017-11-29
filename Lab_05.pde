void setup(){
 size(700,700); 
 frameRate(1);
}

void draw(){
  background(125);
  television();
}
  
void television(){
  strokeWeight(3);
  fill(80,50,50);
  quad(100,250,600,250,600,650,100,650);
  
  strokeWeight(2);
  fill(70,70,70);
  quad(150,300,150,600,450,600,450,300);
  
  strokeWeight(3);
  fill(0);
  quad(315,250,320,245,330,245,335,250);
  quad(365,250,370,245,380,245,385,250);
  
  strokeWeight(2);
  noFill();
  line(325,245,316,217);
  line(316,217,311,226);
  line(311,226,300,185);
  line(300,185,295,195);
  line(295,195,254,131);
  strokeWeight(5);
  point(254,131);
  
  strokeWeight(2);
  noFill();
  line(375,245,409,194);
  line(409,194,392,203);
  line(392,203,458,97);
  strokeWeight(5);
  point(458,97);
  
  //this code is for the volume button
  strokeWeight(2);
  fill(70,65,65);
  ellipse(525,375,60,60);
  line(525,375,525,360);
  strokeWeight(5);
  fill(0);
  textSize(15);
  text("VOLUME",495,420);
  
  //this code is for the power button
  strokeWeight(2);
  fill(175,40,40);
  quad(475,525,575,525,575,575,475,575);
  strokeWeight(5);
  fill(0);
  textSize(15);
  text("POWER",500,555);
}

void mousePressed(){
  if(mouseX>475);
  strokeWeight(2);
  fill(20,180,0);
  quad(475,525,575,525,575,575,475,575);
  fill(255);
  quad(150,300,150,600,450,600,450,300);
  
  fill(70,65,65);
  ellipse(525,375,60,60);
  fill(0);
  line(525,375,540,375);
}
