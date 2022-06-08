public static final int cols = 11;
public static final int rows = 5;
ArrayList numbers = new ArrayList();

public class alienFormation {
  float front, back;

  public alienFormation() {
    front = 0;
    back = 0;
  }

  void assemble() {
    for (int y=100; y<=350; y+=50) {
      for (int x=550; x<=1050; x+=50) {
        float xPos = x;
        float yPos = y;
        numbers.add(new alien(xPos, yPos, 10));
      }
    }
    alien first = (alien) numbers.get(0);
    front = first.xPos;
    alien last = (alien) numbers.get(10);
    back = last.xPos+25;
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
      invader.invadeF();
      invader.invadeB();
      invader.die();
    }
  }

  void shift() {
    //every time the aliens move the front and back values need to shift

    //so that the aliens move in formation// they dont bounce off the walls
    for (int i=0; i<numbers.size(); i++) {
      alien invader = (alien) numbers.get(i); 
      if(invader.xPos == 0 || invader.yPos + 25 >= width){
        for(int k=0; k<numbers.size(); k++){
          invader.dx *= -1;
          invader.yPos += 40;
        }
      }
    }
  }
}
