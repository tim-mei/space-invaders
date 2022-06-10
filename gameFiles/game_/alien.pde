final static float speedMod = 1.1;

public class alien {
  float xPos, yPos;
  float dx;
  boolean alive;
  int pointsWorth;
  int howWide;

  public alien() {
  }

  public alien(float x, float y, int points) {
    xPos = x;
    yPos = y;
    dx = 3;
    howWide = 25;
    pointsWorth = points;
    alive = true;
  }

  void display() {
    fill(255);
    rect(this.xPos, this.yPos, 25, 25, 28);
  }

  public boolean getStatus() {
    return alive;
  }

  void invade() {
    xPos += dx;
  }
 

  void die() {
    for (int x=0; x<bullets.size(); x++) {
      bullet curr = (bullet) bullets.get(x);
      if (dist(curr.x, curr.y, xPos+howWide/2, yPos-5) < 40 && 
        curr.getSource().equals("player") ) {

        bullets.remove(curr);
        currScore += this.pointsWorth;
        alive = false;
      }
    }
  }

  void shoot() {
    float rGen = (float)Math.random();
    if (rGen > 0.999) {
      bullets.add(new bullet(this.xPos+howWide/2, yPos+35, 1, "alien"));
    }
  }
}
