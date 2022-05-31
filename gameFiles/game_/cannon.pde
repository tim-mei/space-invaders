public class cannon {
  float x, y; 
  boolean alive;
  int numOfLives; 
  color c; 
  int howWide = 120;

  //boolean goLeft = false;
  //boolean goRight = false;

  public cannon() { 
    x = width/2; 
    y = 750; 
    alive = true;
    numOfLives = 3; 
    c = color(#5FA792);
  }

  //scale this down
  void display() {
    stroke(c);
    fill(c);
    rect(this.x, this.y, howWide, 15);
  }

  void position() {
    if (x < 0) {
      x = 0;
    }
    if (x + howWide > width) {
      x = width - howWide;
    }
  }



  void shoot() {
    bullets.add(new bullet(this.x + howWide/2, y - 10, -1)); 
  }
}
