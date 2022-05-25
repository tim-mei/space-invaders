public class alien {
  float xPos,yPos;
  boolean alive;
  
  public alien(){
  }
  
  public alien(float x, float y){
   xPos = x;
   yPos = y;
  }
  
  void display(){
  }

  void move() {
  }
  
  void die(){
  }
  
}

public class shooterAlien extends alien {
  int typeClass; 
  
  public shooterAlien(float x, float y, int type){
    xPos = x;
    yPos = y; 
    typeClass = type;
    
  }
  
  void shoot() {
  }
}
