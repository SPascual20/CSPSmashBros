public class SamusPlayer{
  PImage playerFront, shootRight, shootLeft, runRight, runLeft, SCharacter;
  float SPlayerX, SPlayerY, C;
  String playerImage;
  
  public SamusPlayer(){

    
    SPlayerX = 600;
    SPlayerY = 300;
    playerImage = "samus";
    
    design();
    
  }
  
  public void draw(){
    //keyPressed();
    image(SCharacter, SPlayerX , SPlayerY, 150, 150);
    design();
    //println(moveLeft);
    if(moveLeft){
        SPlayerX -= 5;
        
    
    }
    
    
     
  }
 
    
  public void update(){
    SPlayerX -= 5;

  }
  
  
  public void design(){
      playerFront = loadImage("./images/samusplayer.png");
      shootRight = loadImage("./images/samusshootingright.png");
      shootLeft = loadImage("./images/samusshootingleft.png");
      runRight = loadImage("./images/samusrunningleft.png");
      runLeft = loadImage("./images/samusrunningright.png");
      SCharacter = playerFront;   
  }
  
void keyPressed(){
      if(key == 'w'){
        SCharacter = playerFront;
      }
      if(key == 'a'){ //face left and move left 5
        moveLeft = true;
        SCharacter = runLeft;
        keyReleased();
      }
      if(key == 'd'){
        SCharacter = runRight;
        SPlayerX += 5;
      }
      if(facingRight() && key == 'f'){
        SCharacter = shootRight;
      }  
      if(facingLeft() && key == 'f'){
        SCharacter = shootLeft;
      }  
  }   
  
  void keyReleased() {
    if(key == 'a') {
      //case 97: //a
          moveLeft = false;
          println("a released");
          //break;    
    } 
}    
      
      
   
  public boolean facingRight(){
    if(SCharacter == runRight){
        return true;
      }
    return false;
  }
  public boolean facingLeft(){
    if(SCharacter == runLeft){
        return true;
      }
    return false;
  }
      
 }
