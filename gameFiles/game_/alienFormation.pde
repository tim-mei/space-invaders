public static final int cols = 11;
public static final int rows = 5;
ArrayList numbers = new ArrayList();

public class alienFormation {
  boolean againstWall = false;
  boolean invaded = false;

  public alienFormation() {
    
  }

  void assemble() {
    for (int y=100; y<=350; y+=50) {
      for (int x=550; x<=1050; x+=50) {
        float xPos = x;
        float yPos = y;
        numbers.add(new alien(xPos, yPos, 10));
      }
    }
  }

  void clean() {
    for (int i=0; i<numbers.size(); i++) {
      alien curr = (alien) numbers.get(i);
      if (curr.getStatus() == false) {
        numbers.remove(curr);
      }
    }
  }

  void mobilize() { 
    for (int x=0; x<numbers.size(); x++) {
      alien invader = (alien) numbers.get(x);
      invader.display();
      invader.shoot();
      invader.invade();
      invader.die();
    }
  }

  void shift() {
    if (this.againstWall) {
      for (int i=0; i<numbers.size(); i++) {
        alien invader = (alien) numbers.get(i); 
        
        invader.dx *= -1;
        invader.yPos += 40;
        this.againstWall = false;
      }
    }
  }

  void againstWall() {
    for (int i=0; i<numbers.size(); i++) {
      alien invader = (alien) numbers.get(i);
      if (invader.xPos == 75 || invader.xPos+25 == width-75) {
        this.againstWall = true;
      }
    }
  }
  
  void touchdown(){
    for(int i=0; i<numbers.size(); i++) {
      alien invader = (alien) numbers.get(i);
      if (invader.yPos >= 775) {
        invaded = true;
      }
    }
  }
  
  void removeAll(){
    for (int i=numbers.size()-1; i>-1; i--) {
      alien invader = (alien) numbers.get(i);
      numbers.remove(invader);
    }
  }
  
  float getSize(){
    return numbers.size();
  }
  
  boolean getStatus(){
    return invaded;
  }
  
}
