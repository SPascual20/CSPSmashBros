public class FoxPlayer{
  PImage playerFront, shootRight, shootLeft, runRight, runLeft, FCharacter;
  float FPlayerX, FPlayerY, C;
  String playerImage;
  
  public FoxPlayer(){

    FPlayerX = 150;
    FPlayerY = 300;
    playerImage = "fox";
     
    design();
    
  }
  
  public void draw(){
    
    image(FCharacter, FPlayerX , FPlayerY, 150, 150);

    design();
    
    if(fMoveLeft){
        FCharacter = runLeft;
        FPlayerX -= 50;
    }
    if(fMoveRight){        
      FCharacter = runRight;
      FPlayerX += 50;
    }
  }
  
  
  
  
  public void design(){
      playerFront = loadImage("./images/foxplayer.png");
      shootRight = loadImage("./images/foxshootingright.png");
      shootLeft = loadImage("./images/foxshootingleft.png");
      runRight = loadImage("./images/foxrunningleft.png");
      runLeft = loadImage("./images/foxrunningright.png");
      FCharacter = playerFront;
    
      
  }

}
