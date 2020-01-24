class Bullet{
  float xb,y;
  float velocity;
 
 
  Bullet(float x,float y,float velocity){
    this.xb=x;
    this.y=y;
    this.velocity = velocity;
  }
  void display(){
    fill(80);
    circle(this.xb,this.y,10);
  }
 
  void move(){
    this.y+=this.velocity;
    if(this.y>height ||this.y<0){
      bullets.remove(this);
    }
  }
 
  float getx(){
   return this.xb;
   
  }
     
    }
   
   
