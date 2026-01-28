class Bullet
{
  float x;
  float y;
  float w;
  float h;
  float speed;
  
  Bullet ()
  {
    y = 0;
    x = 0;
    w = 8;
    h = 20;
    speed = 0;
    
  }
  
  void start(float posX, float posY){
    x = posX;
    y = posY;
    speed = 10;
  
  }
  
  void update()
  {
    y -= speed;
  }
  
  void display()
  {
    fill(0,255,0);
    noStroke();
    rect(x,y,w,h);
  }
  
}
