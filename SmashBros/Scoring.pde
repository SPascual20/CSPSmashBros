int p1Lives = 3, p2Lives = 3 ;
int p1Wins = 0, p2Wins = 0 ;
int p1Dmg = 0, p2Dmg = 0 ;
int time;
void p2restart () {
  p2Dmg = 0 ;
  
}
void p1restart () {
  p1Dmg = 0 ;
  
}

void gameOver1() {
  if( millis() < time + 3000){
    background(0);
    text("GAME OVER! PLAYER 1 WINS", 250, 300);
  }
}


void gameOver2() {
  if( millis() < time + 3000){
    background(0);
    text("GAME OVER! PLAYER 2 WINS", 20, 20);
  }
}
  
void Scoring(){
  textSize(75);
  text("P1:" + p1Dmg + "%",175,530);
  text("P2:" + p2Dmg + "%",525,530);
  textSize(40);
  text("Stocks:" + p1Lives ,175,570);
  text("Stocks:" + p2Lives ,525,570);
  

  /*if (p2 hits p1) {  
    p1Dmg += 10 ;
  }
  
  if (p1Dmg >= 200) {
    p1Lives -=1;
    p1restart();
  }
  
  if (p1Lives == 0) {
    gameOver2();
  }
  
  
  
  if (p1 hits p2) {  
    p2Dmg += 10 ;
  }
  
  if (p2Dmg >= 200) {
    p2Lives -=1;
    p2restart();
  }
  
  if (p2Lives == 0) {
    gameOver1();
  }*/
  
  
}
