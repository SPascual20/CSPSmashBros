PImage bg;
PImage stg;


void setup(){
  size(900,600);
  bg= loadImage("./Images/back2.jpg");
  stg= loadImage("./Images/stage.png");
  
  
}

void draw(){
  image(bg,0,0,width, height);
  image(stg,95,400,700,200);

}
