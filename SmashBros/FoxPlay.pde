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
   // println(fMoveLeft);
    if(fMoveLeft){
        FPlayerX -= 5;
        
    
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
  
  public void keyPressed(){
    
      if(key == CODED){
        if(keyCode == UP){
          FCharacter = playerFront;
        }
        if(keyCode == LEFT){
          FCharacter = runLeft;
          FPlayerX -= 5;
        }
        if(keyCode == RIGHT){
          FCharacter = runRight;
          FPlayerX += 5;
  
        }
        if(FCharacter == runRight && key == ','){
          FCharacter = shootRight;
        }
        if(FCharacter == runLeft && key == ','){
          FCharacter = shootLeft;
        }
      }
    
    
      
  }

}
