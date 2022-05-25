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
    rect(750, 700, 150, 40);
    rect(765, 685, 120, 15);
    rect(805, 665, 38, 20);
    rect(820, 655, 10, 10);
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
