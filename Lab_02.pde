void setup(){
  
  size(1200,900);
  background(25,20,90);
  ellipseMode(CENTER);
  
}

void draw(){
  
  strokeWeight(2);
  stroke(0);
  colorMode(RGB);
  fill(255,128,0);
  beginShape();
  vertex(100,450);
  vertex(1100,450);
  vertex(1100,650);
  vertex(100,650);
  beginContour();
  vertex(1050,500);
  vertex(150,500);
  vertex(150,600);
  vertex(1050,600);
  endContour();
  endShape();
  
  strokeWeight(2);
  stroke(0);
  colorMode(HSB);
  fill(170,90,120);
  beginShape();
  vertex(100,450);
  vertex(600,50);
  vertex(600,50);
  vertex(1100,450);
  beginContour();
  vertex(1000,415);
  vertex(600,100);
  vertex(200,415);
  endContour();
  endShape();
  
  strokeWeight(5);
  stroke(0);
  colorMode(#AABBCC);
  fill(#800000);
  ellipse(600,375,600,600);
  
  strokeWeight(0);
  stroke(245,255,170);
  colorMode(RGB);
  fill(245,255,170);
  triangle(950,100,1000,100,975,150);
  triangle(950,125,1000,125,975,75);
  
  strokeWeight(0);
  stroke(245,255,170);
  fill(245,255,170);
  triangle(225,100,275,100,250,150);
  triangle(225,125,275,125,250,75);
  
  strokeWeight(9);
  stroke(245,255,170);
  point(900,50);
  point(1050,50);
  point(900,150);
  point(1050,150);
  point(175,50);
  point(325,50);
  point(175,150);
  point(325,150);
  
}
