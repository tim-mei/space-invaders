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
    dx = 2;
    howWide = 50;
    pointsWorth = points;
    alive = true;
  }

  void display() {
    fill(255);
    rect(this.xPos, this.yPos, 50, 50, 28);
  }

  void invade() {
    //forward direction
    xPos += dx;
    if(xPos <=0){
      xPos = 0;
      dx *= -1;
      yPos += 40;
    }
    //backward direction
    if(xPos + howWide >= width - 10){
      xPos = width - (howWide + 10);
      dx *= -1 * speedMod;
      yPos += 40;
    }
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
