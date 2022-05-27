/*bullet shots[]; 
alien invaders[];
cannon player;
int currScore;



void setup(){ 
  size(1600, 900);
  background(0);
  alien test = new alien(100, 100, 100, 20, 10);
  test.display();
  stroke(#FFFFFF);
  line(200, 600, 1400, 600);
  player = new cannon();
  player.display();
}

void draw(){
  //all aliens in the list should be able to move here 
}
*/


  /**************MAIN TAB************/
  Controller keyboardInput;
  cannon player;

  void keyPressed() {
    keyboardInput.press(keyCode);
  }

  void keyReleased() {
    keyboardInput.release(keyCode);
  }

  void setup() {
    size(200, 100);
    keyboardInput = new Controller();
    cannon player = new cannon();
    player.display();
  }

  //Visualize which keys are being held down...
  void draw() {
    background(255);

    //check if the button P1_LEFT is being pressed:
    if (keyboardInput.isPressed(Controller.P1_LEFT)) {
      player.move();
    }
    //check if the button P1_RIGHT is being pressed:
    if (keyboardInput.isPressed(Controller.P1_RIGHT)) {
      player.move();
    }
    fill(0);
    text("Try pressing one or more\n of: WASD keys", 10, 50);
  }


  /**************CONTROLLER TAB************/
  class Controller {
    static final int P1_LEFT = 0;
    static final int P1_RIGHT = 1;
    boolean [] inputs;

    public Controller() {
      inputs = new boolean[2];//2 valid buttons
    }

    /**@param code: a valid constant e.g. P1_LEFT
    */
    boolean isPressed(int code) {
      return inputs[code];
    }

    void press(int code) {
      println(code);
      if(code == LEFT)
      inputs[P1_LEFT] = true;
      if(code == RIGHT)
      inputs[P1_RIGHT] = true;
    }
    void release(int code) {
      if(code == LEFT)
      inputs[P1_LEFT] = false;
      if(code == RIGHT)
      inputs[P1_RIGHT] = false;
    }
  }
  
