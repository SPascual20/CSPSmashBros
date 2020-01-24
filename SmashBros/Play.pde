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
    
    image(SCharacter, SPlayerX , SPlayerY, 150, 150);
    
    design();
    
    if(moveLeft){
        SPlayerX -= 50;
        SCharacter = runLeft;
    }
    if(moveRight){
        SPlayerX += 50;
        SCharacter = runRight;
    }
   
    
    
     
  }
  
  
  public void design(){
      playerFront = loadImage("./images/samusplayer.png");
      shootRight = loadImage("./images/samusshootingright.png");
      shootLeft = loadImage("./images/samusshootingleft.png");
      runRight = loadImage("./images/samusrunningleft.png");
      runLeft = loadImage("./images/samusrunningright.png");
      SCharacter = playerFront;   
  }
  
    
  }
  
