PImage bg;
PImage stg;
Player p1, p2;


void setup(){
  size(900,600);
  bg= loadImage("./Images/back2.jpg");
  stg= loadImage("./Images/stage.png");
  p1 = new Player(1);
  p2 = new Player(2);
  
  
}

void draw(){
  image(bg,0,0,width, height);
  image(stg,95,400,700,200);
  p1.draw();
  p2.draw();
}
