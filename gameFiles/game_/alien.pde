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
    rect(100, 100, 100 ,100);
  }

  void move() {
    while(alive){ 
      //should gradually move down 
      xPos += dx; 
      yPos += dy;
      xPos -= dx;
    }
  }
  
  void die(){
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
  }
}
