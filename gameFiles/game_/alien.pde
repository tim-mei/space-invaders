public class alien {
  float xPos,yPos;
  float dx, dy;
  boolean alive;
  int pointsWorth;
  
  public alien(){
  }
  
  public alien(float x, float y, float dx_, float dy_, int points){
   xPos = x;
   yPos = y;
   dx = dx_;
   dy = dy_;
   pointsWorth = points;
   alive = true;
  }
  
  void display(){
    stroke(255);
    rect(100, 100, 20 , 10);
    rect(90, 110, 40, 10);
    rect(80, 120, 60, 10);
    rect(70, 130, 17, 10);
    rect(100, 130, 17, 10);
    rect(130, 130, 17, 10);
    rect(70, 140, 77 , 10);
    
  }

  void move() {
    while(alive){ 
      //should gradually move down 
      if(this.xPos == 200){
        xPos += dx;
      }
      else if(this.xPos == 1400){
        xPos -= dx;
      }
    }
  }
  
  void die(){
    alive = false; 
    
  }
  
}

public class shooterAlien extends alien {
  int typeClass; 
  
  public shooterAlien(float x, float y, int points, int type){
    xPos = x;
    yPos = y; 
    pointsWorth = points;
    typeClass = type;
    
  }
  
  void shoot() {
    float rGen = (float)Math.random();
    if(rGen > 0.8){
      //shoots a bullet if the alien is also the first in the column
      //new program to check if the alien is first? 
    }
  }
  
  void move(){
    super.move();
  }
  
}
