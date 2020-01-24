PImage bg,stg,stock1,stock2;
int s,m,ms;


void setup(){
  size(900,600);
  textSize(60);
  text("Player 1- use WASD to move. Player 2- use arrow keys. Press 'F' key to fight. ",10,40);
  rect(width-200, 40, 150,40);
  fill(0,0,255);
  bg= loadImage("./Images/back2.jpg");
  stg= loadImage("./Images/stage.png");
  stock1= loadImage("./Images/foxStock.jpg");
  stock2= loadImage("./Images/samusStock.jpg");
  s = 0;
  m = 0;
  ms = 0;
  
}

void draw(){
  image(bg,0,0,width, height);
  image(stg,95,400,700,200);
  timer();
  Scoring();

}

void timer(){
  textSize(32);
  if (s < 10){
    text("Time: " + m + ":0" + s,0,50);
  }
  else{
    text("Time: " + m + ":" + s,0,50);
  }
  ms++;

  if (ms == 19){
    s++;
    ms=0;
    if (s == 59){
      m++;
      s = 0;
    }
  }

}
