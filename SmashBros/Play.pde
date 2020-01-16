public class Player{
  PImage playerFront, shootRight, shootLeft, runRight, runLeft, character;
  float playerX, playerY;
  String playerImage;
  
  public Player(int x){

    playerX = 0;
    playerY = 0;
    
    if(x == 1){
      playerImage = "fox";
    }
    else if(x == 2){
      playerImage = "samus";
    }
    
  }
  
  public void design(){
      playerFront = loadImage("./images/" + playerImage + "player.png");
      shootRight = loadImage("./images/" + playerImage + "shootingright.png");
      shootLeft = loadImage("./images/" + playerImage + "shootingleft.png");
      runRight = loadImage("./images/" + playerImage + "runningright.png");
      runLeft = loadImage("./images/" + playerImage + "runningleft.png");
      character = playerFront;
  }

}
