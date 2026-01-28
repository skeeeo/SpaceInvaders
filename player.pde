class Player{
  
  float x;
  float y;
  float w;
  float h;
  float speed;
  
  Player (float posY){
    x = width/2;
    y = 900;
    w = 75;
    h = 20; 
    speed = 7;
  }
  
  void moveLeft(){
    x-= speed;
  }
  
  void moveRight(){
    x+= speed;
  }
  
  void display(){
    fill(0,255,0);
    noStroke();
    rect(x,y,w,h);
    
   
  }
}
