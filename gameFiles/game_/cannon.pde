public class cannon {
  float x, y; 
  boolean alive;
  int numOfLives; 
  color c; 
  
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
    rect(this.x, this.y, 120, 15);
  }

/*
  void move(int factor){
    x += factor * 2;
  }

  void position(){
    if(x < 0){
      x = 0;
    }
    if(x > width){
      x = width;
    }
  }
  
 */
 
  void shoot() {
    //return new bullet(this.x, this.y);
  }
}
