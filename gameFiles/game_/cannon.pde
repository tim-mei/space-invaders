public class cannon {
  float x, y; 
  boolean alive;
  color c; 
  int howWide = 120;

  //boolean goLeft = false;
  //boolean goRight = false;

  public cannon() { 
    x = width/2; 
    y = 750; 
    alive = true;
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

  void die() {
    for (int x=0; x<bullets.size(); x++) {
      bullet curr = (bullet) bullets.get(x);
      if (dist(curr.x, curr.y, x+howWide/2, y+5) < 40 && 
        curr.getSource().equals("alien") ) {
        bullets.remove(curr);
        this.x = width/2;
        numOFLives--;
      }
    }
  }

  void shoot() {
    bullets.add(new bullet(this.x + howWide/2, y - 10, -1, "player"));
  }
}
