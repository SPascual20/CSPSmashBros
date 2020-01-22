public class Player{
  PImage player;
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
    
    player = loadImage("./images/" + playerImage + "player.png");
    
  }
  
  public void design(){
    if(){
    }
    else{
    
    }
  
  }


}
