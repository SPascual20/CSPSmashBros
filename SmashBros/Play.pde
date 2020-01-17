public class Player{
  PImage playerFront, shootRight, shootLeft, runRight, runLeft, character;
  float FPlayerX, FPlayerY, SPlayerX, SPlayerY;
  String playerImage;
  
  public Player(int x){

    FPlayerX = 150;
    FPlayerY = 300;
    
    SPlayerX = 600;
    SPlayerY = 300;
    
    if(x == 1){
      playerImage = "fox";
    }
    else if(x == 2){
      playerImage = "samus";
    }
    
  }
  
  public void draw(){
    design();
    if(playerImage == "fox"){  
      image(character, FPlayerX , FPlayerY, 150, 150);
    }
    if(playerImage == "samus"){      
      image(character, SPlayerX , SPlayerY, 150, 150);
    }
    
    //design();
    keyPressed();
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
      character = playerFront;
    }
    if(key == 'a'){
      character = runLeft;
    }
    if(key == 'd'){
      character = runRight;
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
        character = playerFront;
      }
      if(keyCode == LEFT){
        character = runLeft;
      }
      if(keyCode == RIGHT){
        character = runRight;

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
