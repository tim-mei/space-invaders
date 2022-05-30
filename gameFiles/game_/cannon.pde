public class cannon {
  float x, y; 
  boolean alive;
  int numOfLives; 
  color c; 
  int dx;
  

  public cannon() { 
    x = width/2; 
    y = 750; 
    alive = true;
    numOfLives = 3; 
    dx = 10;
    c = color(#5FA792);
  }
  
  //scale this down
  void display() {
    stroke(c);
    fill(c);
    rect(750, 700, 150, 40);
    rect(765, 685, 120, 15);
    rect(805, 665, 38, 20);
    rect(820, 655, 10, 10);
  }

  void move() {
    this.x += dx;
     
     //checks the positioning 
     if(this.x < 0){
       x = 0;
     }
     if(this.x > width){
      x = width;
     }
  }
  

  void shoot() {
    //return new bullet(this.x, this.y);
  }
  
}
