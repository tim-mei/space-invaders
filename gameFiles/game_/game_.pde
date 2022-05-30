bullet shots[]; 
ArrayList invaders = new ArrayList();
ArrayList projectiles = new ArrayList();
cannon player;
int currScore;



void setup() { 
  size(1600, 900);
  background(0);
  alien test = new alien(100, 100, 100, 20, 10);
  test.display();
  stroke(#FFFFFF);
  line(0, 600, width, 600);
  player = new cannon();
  player.display();
}

void draw() {
  //all aliens in the list should be able to move here
}

void keyPressed() {
  if (keyCode == LEFT) {
  }
  if (keyCode == RIGHT) {
  }
}

void keyReleased() {
  if (keyCode == LEFT) {
  }
  if (keyCode == RIGHT) {
  }
}
