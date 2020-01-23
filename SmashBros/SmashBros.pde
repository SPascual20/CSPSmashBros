PImage bg;
PImage stg;
int s,m,ms;


void setup(){
  size(900,600);
  bg= loadImage("./Images/back2.jpg");
  stg= loadImage("./Images/stage.png");
  s = 0;
  m = 0;
  ms = 0;
  
}

void draw(){
  image(bg,0,0,width, height);
  image(stg,95,400,700,200);
  timer();

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
