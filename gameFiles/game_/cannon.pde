public class cannon {
  float x, y; 
  int numOfLives; 
  color c; 
  int dx;

  public cannon() { 
    x = 800; 
    y = 750; 
    numOfLives = 3; 
    dx = 10;
    c = color(#5FA792);
  }

  void display() {
    fill(c);
    rect(750, 700, 150, 40);
    rect(765, 685, 120, 15);
    rect(805, 665, 38, 20);
    rect(820, 655, 10, 10);
  }

  void move() {
    x += dx;
    if(this.x - 100 <= 400){
      x = 400;
    }
    else if (this.x + 100 == 1200){
      x = 1200;
    }
  }
  

  void shoot() {
    if (keyPressed) {
      if (key == ' ') {
        //create a new bullet
      }
    }
  }
}
