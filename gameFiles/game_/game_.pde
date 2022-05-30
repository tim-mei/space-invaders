ArrayList invaders = new ArrayList();
ArrayList bullets = new ArrayList();
boolean pressLeft = false;
boolean pressRight = false;

cannon player;
int currScore;

void setup() { 
  size(1600, 900);
  background(0);
  alien test = new alien(100, 100, 10, 10);
  test.display();
  invaders.add(test);
  stroke(#FFFFFF);
  player = new cannon();
  player.display();
}

void draw() {
  background(0);
  //all aliens in the list should be able to move here
  player.display();
  move();
  player.position();
  line(0, 800, width, 800);
  for (int x=0; x<invaders.size(); x++) {
    alien invader = (alien) invaders.get(x);
    invader.invade();
    invader.display();
  }
}



//movement for the player

void move() {
  if (pressLeft) {
    player.x -=10;
  }
  if (pressRight) {
    player.x +=10;
  }
}

void keyPressed() {
  if (keyCode == LEFT) {
    pressLeft = true;
  }
  if (keyCode == RIGHT) {
    pressRight = true;
  }
}

void keyReleased() {
  if (keyCode == LEFT) {
    pressLeft = false;
  } 
  if (keyCode == RIGHT) {
    pressRight = false;
  }
}  
