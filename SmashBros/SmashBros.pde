PImage bg;
PImage stg;
SamusPlayer p1;
FoxPlayer p2;
boolean moveLeft, moveRight, fMoveLeft, fMoveRight, bull;
ArrayList bullets = new ArrayList();
Bullet[] bulletArray;

  void setup(){
    frameRate(400);
    size(900,600);
    bg= loadImage("./Images/back2.jpg");
    stg= loadImage("./Images/stage.png");
    p1 = new SamusPlayer();
    p2 = new FoxPlayer();
    moveLeft = false;
    moveRight = false;
    fMoveLeft = false;
    fMoveRight = false;
    bullets = new ArrayList<Bullet>();
    bulletArray=new Bullet[1];
    for(int i=0;i<bulletArray.length; i++){
      bulletArray[i]=new Bullet(width/2,height-20, -8);
    }
    
    
  }

  void draw(){
    image(bg,0,0,width, height);
    image(stg,95,400,700,200);
    p1.draw();
    p2.draw();
  }

  void keyPressed(){
      if(key == 'f'){
      }
       
      if(key == 'a'){
        moveLeft = true;
        
      }
      if(key == 'd'){ 
        moveRight = true;
      }
      if(key == 'f'){
        bull = true;
      }
      
      if(key == CODED){
        if(keyCode == LEFT){
          fMoveLeft = true;
          println("fox left true");
        }
        if(keyCode == RIGHT){
          fMoveRight = true;
        }
      }
  }   
  
  void keyReleased() {
    if(key == 'a') {
      moveLeft = false;  
    } 
    if(key == 'd'){
      moveRight = false;
    }
    
    if(key == CODED){
        
        if(keyCode == LEFT){
          fMoveLeft = false;
          println("fox left false");
        }
        if(keyCode == RIGHT){
          fMoveRight = false;
  
        }
    }
}    
