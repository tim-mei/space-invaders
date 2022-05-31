alienFormation invaders = new alienFormation();
ArrayList bullets = new ArrayList();
boolean pressLeft = false;
boolean pressRight = false;

cannon player;
int currScore;

void setup() { 
  size(1600, 900);
  background(0);
  alien test = new alien(100, 100, 10);
  invaders.assemble();
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
  invaders.mobilize();
  for (int x=0; x<bullets.size(); x++) {
    bullet shot = (bullet) bullets.get(x);
    shot.display();
    shot.move();
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
  if (key == ' ') {
    player.shoot();
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
