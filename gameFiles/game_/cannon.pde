public class cannon {

  float x, y; 
  int numOfLives; 
  color c; 

  public cannon() { 
    x = 800; 
    y = 750; 
    numOfLives = 3; 
    c = color(#5FA792);
  }

  void display() {
    fill(c);
    rect(750, 700, 100, 40);
    rect(725, 675, 80, 10);
    rect(775, 630, 20, 20);
    rect(790, 620, 5, 5);
  }

  void move() {
    if (key == CODED) { 
      if (keyCode == LEFT) {
        if (x - 50 <= 300) {
          x -= 10;
        }
      }
      if (keyCode == RIGHT) {
        if (x + 50 <= 1300) { 
          x += 10;
        }
      }
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
