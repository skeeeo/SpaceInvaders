Player p1;
Bullet b;


boolean dPressed = false;
boolean aPressed = false;
int playerOffset = 30;
int colonne = 11;
int righe = 5;
int wEnemy = 30;
int hEnemy = 20;
int sEnemy = 10;
int margineX = 180;
int margineY = 50;


void setup () {
  size (720, 960);
  p1 = new Player(playerOffset);
  b = new Bullet();
  rectMode(CENTER);
}

void draw() {
  background(0);

  if (aPressed) p1.moveLeft();
  else if (dPressed) p1.moveRight();
  background(0);
  noStroke();

  fill(0, 255, 0);
  for ( int r = 0; r < righe; r++ ) {
    //println("r = " + r + " righe = " + righe);
    for ( int c = 0; c < colonne; c++ ) {
      //println("c = " + c + " colonne = " + colonne);
      float x = margineX + c * ( wEnemy + sEnemy);
      float y = margineY + r * ( hEnemy + sEnemy);
      rect(x, y, wEnemy, hEnemy);
    }
  }

  b.update();
  b.display();
  p1.display();
}
void keyPressed() {

  if ( key == 'a' ) aPressed = true;
  else if ( key == 'd') dPressed = true;
  else if ( key == ' ') b.start(p1.x, p1.y);
}

void keyReleased() {

  if ( key == 'a' ) aPressed = false;
  else if ( key == 'd') dPressed = false;
}
