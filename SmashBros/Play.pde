public class Player{
  PImage playerFront, shootRight, shootLeft, runRight, runLeft, character;
  float FPlayerX, FPlayerY, SPlayerX, SPlayerY, C;
  String playerImage;
  
  public Player(int x){

    FPlayerX = 150;
    FPlayerY = 300;
    
    SPlayerX = 300;
    SPlayerY = 300;
    
    if(x == 1){
      playerImage = "samus";
      C = 1;
    }
    else if(x == 2){
      playerImage = "fox";
      C = 2;
    }
    design();
    
  }
  
  public void draw(){
    
    keyPressed();
    if(C == 1){      
      image(character, SPlayerX , SPlayerY, 150, 150);
    }
    else if(C == 2){
      image(character, FPlayerX , FPlayerY, 150, 150);
    }
    design();
    
  }
  
  
  
  
  public void design(){
    if(C==1){
      playerFront = loadImage("./images/samusplayer.png");
      shootRight = loadImage("./images/samusshootingright.png");
      shootLeft = loadImage("./images/samusshootingleft.png");
      runRight = loadImage("./images/samusrunningleft.png");
      runLeft = loadImage("./images/samusrunningright.png");
      character = playerFront;
    }
    else if(C == 2){
      playerFront = loadImage("./images/foxplayer.png");
      shootRight = loadImage("./images/foxshootingright.png");
      shootLeft = loadImage("./images/foxshootingleft.png");
      runRight = loadImage("./images/foxrunningleft.png");
      runLeft = loadImage("./images/foxrunningright.png");
      character = playerFront;
    }
      
  }
  
  public void keyPressed(){
    if(key == 'w'){
      character = playerFront;
    }
    if(key == 'a'){
      character = runLeft;
      SPlayerX -= 10;
    }
    if(key == 'd'){
      character = runRight;
      SPlayerX += 10;
    }
    if(key == 'f'){
      //samus shoots
    }
    if(key == 'g'){
      //samus shield
    }
    
    //fox controls
    
    if(key == CODED){
      if(keyCode == UP){
        character = playerFront;
      }
      if(keyCode == LEFT){
        character = runLeft;
        FPlayerX -= 10;
      }
      if(keyCode == RIGHT){
        character = runRight;
        FPlayerX += 10;

      }
    }
    if(key == ','){
      //fox shoots
    }
    if(key == '.'){
      //fox shield
    }
  }

}
