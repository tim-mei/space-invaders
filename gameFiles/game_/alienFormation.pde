public static final int cols = 11;
public static final int rows = 5;
ArrayList numbers = new ArrayList();

public class alienFormation {
  
  public alienFormation() {
  }
  
  void assemble() {
    for (int y=100; y<=350; y+= 50) {
      for (int x=550; x<=1050; x+=50) {
        float xPos = x;
        float yPos = y;
        numbers.add(new alien(xPos, yPos, 10));
      }
    }
  }

  void mobilize() { 
    for (int x=0; x<numbers.size(); x++) {
      alien invader = (alien) numbers.get(x);
      invader.invade();
      invader.display();
      invader.shoot();
    }
  }
  
}
