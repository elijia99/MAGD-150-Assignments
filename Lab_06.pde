
void setup(){
 size(900,700);
 background(70,140,250);
}

void draw(){
  snowMan();
  snowTree();
  snowEverywhere();
  display();
}

  //This code is used to display snow behind the cabin, tree and snow man.
  
void snowEverywhere(){
  float a = random(0,width);
  float b = random(0,height);
  stroke(255);
  point(a,b);
}

  //This code is used to draw the trunk and leaves of the tree displayed in the sketch.
  
void snowTree(){
   fill(60,45,45);
   stroke(0);
   strokeWeight(3);
   quad(450,750,550,750,550,600,450,600);
   fill(15,90,5);
   noStroke();
   triangle(750,600,250,600,500,500);
   triangle(700,550,300,550,500,450);
   triangle(650,500,250,500,500,400);
   triangle(600,450,400,450,500,350);
   triangle(550,400,450,400,500,300);
}

  //This code is used to display the snowman on the right of the sketch.
  
void snowMan(){
  noStroke();
  fill(255);
  ellipse(815,640,125,125);
  ellipse(815,550,90,90);
  ellipse(815,480,70,70);
  strokeWeight(9);
  stroke(0);
  point(815,535);
  point(815,550);
  point(815,565);
  point(805,470);
  point(825,470);
  fill(215,160,25);
  noStroke();
  triangle(815,480,815,485,860,485);
}

class snowCabin{
}

//This code is used to display the cabin in the sketch.

void display(){
  
  //This code is for the front of the cabin in the sketch.
  
  fill(65,45,45);
  stroke(0);
  strokeWeight(4);
  quad(25,700,25,350,300,350,300,700);
  
  //This code is for the roof and the side of the cabin in the sketch.
  
  fill(90,65,65);
  quad(300,700,300,350,450,350,450,700);
  triangle(300,350,450,350,425,275);
  quad(300,350,25,350,150,275,425,275);
  
  //This code is for the window of the cabin in the sketch.
  
  strokeWeight(3);
  fill(245,245,70);
  quad(350,475,415,475,415,565,350,565);
  line(383,565,383,475);
  line(350,518,415,518);
  
  //This code is for the door of the cabin in the sketch.
  
  fill(90,65,65);
  quad(75,700,135,700,135,580,75,580);
  strokeWeight(9);
  point(123,650);
}
