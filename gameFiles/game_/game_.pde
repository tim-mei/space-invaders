ArrayList invaders = new ArrayList();
ArrayList bullets = new ArrayList();
boolean pressLeft = false;
boolean pressRight = false;

cannon player;
int currScore;

void setup() { 
  size(1600, 900);
  background(0);

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
  if (key == 'a') {
    pressLeft = true;
  }
  if (key == 'd') {
    pressRight = true;
  }
}

void keyReleased() {
  if (key == 'a') {
    pressLeft = false;
  } 
  if (key == 'd') {
    pressRight = false;
  }
}  
