public class alien {
  float xPos, yPos;
  float dx;
  boolean alive;
  int pointsWorth;

  public alien() {
  }

  public alien(float x, float y, float dx_, int points) {
    xPos = x;
    yPos = y;
    dx = dx_;
    pointsWorth = points;
    alive = true;
  }

  void display() {
    fill(255);
    rect(this.xPos, this.yPos, 50, 50, 28);
  }

  void invade() {
    //forward direction
    xPos += 2;
    //backward direction
  }

  void die() {
    alive = false;
  }
}

public class shooterAlien extends alien {
  int typeClass; 

  public shooterAlien(float x, float y, int points, int type) {
    xPos = x;
    yPos = y; 
    pointsWorth = points;
    typeClass = type;
  }

  void shoot() {
    float rGen = (float)Math.random();
    if (rGen > 0.8) {
      //shoots a bullet if the alien is also the first in the column
      //new program to check if the alien is first?
    }
  }

  void invade() {
    super.invade();
  }
}
