alienFormation invaders = new alienFormation();
ArrayList bullets = new ArrayList();
boolean pressLeft = false;
boolean pressRight = false;

int countdown;
cannon player;
int currScore;
int numOFLives;

void setup() { 
  size(1600, 900);
  background(0);
  countdown = 0;
  invaders.assemble();
  stroke(#FFFFFF);
  player = new cannon();
  player.display();
  numOFLives = 3;
  currScore = 0;
}

void draw() {
  background(0);
  if(countdown > 0){
    countdown --;
  }
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
  };
  player.die();
  textSize(36);
  fill(255);
  text("Score: " + currScore, 50, 50);
  text("Lives: " + numOFLives, 50, 850);
}

void gameOver(){
  if(numOFLives <= 0){
    textSize(48);
    text("GAME OVER", width/2, height/2);
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
  if (key == ' ' && countdown == 0) {
    player.shoot();
    countdown += 30;
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
