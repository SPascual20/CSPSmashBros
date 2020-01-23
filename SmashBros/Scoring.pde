

  
int p1Lives = 3, p2Lives = 3 ;
int p1Wins = 0, p2Wins = 0 ;
int p1DmgPct = 0, p2DmgPct = 0 ;






int time;
/*void setup(){
  time = millis();
}*/
void p2restart () {
  p2DmgPct = 0 ;
  
}
void p1restart () {
  p1DmgPct = 0 ;

  
}

void gameOver1() {
  background(0);
  if( millis() < time + 3000){
    text("GAME OVER! PLAYER 1 WINS", 20, 20);
  }
}


void gameOver2() {

  background(0);
  if( millis() < time + 3000){
    text("GAME OVER! PLAYER 2 WINS", 20, 20);
  }
}
  
void Scoring(){

  /*if (p2 hits p1) {  
    p1DmgPct += 10 ;
  }
  
  if (p1DmgPct >= 200) {
    p1Lives -=1;
    p1restart();
  }
  
  if (p1Lives == 0) {
    p2Wins +=1 ;
  }
  
  
  
  if (p1 hits p2) {  
    p2DmgPct += 10 ;
  }
  
  if (p2DmgPct >= 200) {
    p2Lives -=1;
    p2restart();
  }
  
  if (p2Lives == 0) {
    p1Wins +=1 ;
  }*/
  checkForWinner();
}

void checkForWinner() {
  if (p1Wins == 3 ){
    gameOver1() ;
  }
  else if (p2Wins == 3 ){
    gameOver2(); 
  }
}
