public class Player{
  PImage playerFront, shootRight, shootLeft, runRight, runLeft, character;
  float sPlayerX, sPlayerY, fPlayerX, fPlayerY;
  String playerImage;
  
  public Player(int x){

    sPlayerX = 0;
    sPlayerY = 0;
    fPlayerX = 0;
    fPlayerY = 0;
    
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
  
  public void keyPressed(){
    if(key == 'w'){
      //moves fox to jump
    }
    if(key == 'a'){
      //moves fox left
    }
    if(key == 'd'){
      //moves fox right
    }
    if(key == 'f'){
      //fox shoots
    }
    if(key == 'g'){
      //fox shield
    }
    
    //samus controls
    
    if(key == CODED){
      if(keyCode == UP){
         //move samus to jump
      }
      if(keyCode == LEFT){
        //moves samus left
      }
      if(keyCode == RIGHT){
        //moves samus right
      }
    }
    if(key == ','){
      //samus shoots
    }
    if(key == '.'){
      //samus shield
    }
  }

}
