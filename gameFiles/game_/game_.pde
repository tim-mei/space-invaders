alienFormation invaders = new alienFormation();
ArrayList bullets = new ArrayList();
boolean pressLeft = false;
boolean pressRight = false;
boolean gameOver = false;

int countdown;
int currScore;
int numOFLives;
cannon player;

void setup() { 
  size(1600, 900);
  background(0);
  countdown = 0;
  numOFLives = 3;
  currScore = 0;

  invaders.assemble();
  stroke(#FFFFFF);
  player = new cannon();
  player.display();
}

void draw() {
  background(0);
  if (countdown > 0) {
    countdown --;
  }
  player.display();
  move();
  player.position();
  line(0, 800, width, 800);
  invaders.mobilize();
  invaders.clean();
  invaders.againstWall();
  invaders.shift();
  for (int x=0; x<bullets.size(); x++) {
    bullet shot = (bullet) bullets.get(x);
    shot.display();
    shot.move();
  }
  player.die();
  textSize(36);
  fill(255);
  text("Score: " + currScore, 50, 50);
  text("Lives: " + numOFLives, 50, 850);
  over();
}

void over() {
  if (numOFLives <= 0) {
    gameOver = true;
    background(0);
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
  if(key == 'z' && gameOver){
    setup();
  }
  //cheats 
}

void keyReleased() {
  if (keyCode == LEFT) {
    pressLeft = false;
  } 
  if (keyCode == RIGHT) {
    pressRight = false;
  }
}  
