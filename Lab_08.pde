import processing.pdf.*;{
}

//This code is used to record the sketch as a PDF file. 
//This code is also used to create and use strings. 
void setup(){
  size(500,700);
  noLoop();
  beginRecord(PDF, "f17_magd150_lab08_knight.pdf");
  background(0);
  String[] words = loadStrings("Stick ManTXT.txt");
  String s = join(words, " ");
  println(s);
}

//This code is used to declare objects in the sketch, allowing me to better organize the code.
void draw(){
  stickMan();
  movieTitle();
  subQuote();
}

//This code is used to display the stick man on the poster sketch. 
void stickMan(){
 fill(255);
 stroke(255);
 ellipse(250,200,100,100);
 line(250,200,250,450);
 line(250,450,150,600);
 line(250,450,350,600);
 line(250,300,150,300);
 line(150,300,120,370);
 line(250,300,350,300);
 line(350,300,425,220);
}

//This code is used to create the movie title font at the top of the poster.
void subQuote(){
  createFont("CopperplateGothic-Light.vlw",10);
  fill(255,140,20);
  textAlign(CENTER);
  textSize(30);
  text("'THE LINE IS BEING DRAWN'",250,650);
}

//This code is used to create the sub quote font at the bottom of the poster.
void movieTitle(){
  createFont("AgencyFB-Reg.vlw",10);
  textAlign(CENTER);
  textSize(75);
  text("STICK-MAN",250,120);
  
  endRecord();
}
