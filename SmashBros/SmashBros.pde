PImage bg;
PImage stg;
SamusPlayer p1;
FoxPlayer p2;
boolean moveLeft, fMoveLeft;


void setup(){
  frameRate(400);
  size(900,600);
  bg= loadImage("./Images/back2.jpg");
  stg= loadImage("./Images/stage.png");
  p1 = new SamusPlayer();
  p2 = new FoxPlayer();
  moveLeft = false;
  fMoveLeft = false;
  
}

void draw(){
  image(bg,0,0,width, height);
  image(stg,95,400,700,200);
  p1.draw();
  p2.draw();
}

void keyPressed(){
      if(key == 'w'){
        //SCharacter = playerFront;
       // println("w pressed");
      }
      if(key == 'a'){ //face left and move left 5
        moveLeft = true;
        //p1.update();
        //println("a pressed");
        //SCharacter = runLeft;
        
      }
      if(key == CODED){
        if(keyCode == UP){
        }
        if(keyCode == LEFT){
          fMoveLeft = true;
          println("fox left true");
        }
        if(keyCode == RIGHT){
  
        }
      }
  }   
  
  void keyReleased() {
    if(key == 'a') {
      //case 97: //a
          moveLeft = false;
          //println("a released");
          //break;    
    } 
    
    
    
    if(key == CODED){
        if(keyCode == UP){
        }
        if(keyCode == LEFT){
          fMoveLeft = false;
          println("fox left false");
        }
        if(keyCode == RIGHT){
  
        }
      }
}    
