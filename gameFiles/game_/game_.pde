alienFormation invaders = new alienFormation();
ArrayList bullets = new ArrayList();
boolean pressLeft = false;
boolean pressRight = false;
boolean gameOver;

int countdown;
int subCounter;
int currScore;
int numOFLives;
cannon player;

void setup() { 
  size(1600, 900);
  background(0);
  gameOver = false;
  countdown = 0;
  subCounter = 0;
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
  invaders.againstWall();
  invaders.shift();
  invaders.touchdown();
  invaders.clean();
  for (int x=0; x<bullets.size(); x++) {
    bullet shot = (bullet) bullets.get(x);
    shot.display();
    shot.move();
  }
  if(subCounter >= 500){
    subCounter = 0;
    invaders.speedUp();
  }
  player.die();
  textSize(36);
  fill(255);
  text("Score: " + currScore, 50, 50);
  text("Lives: " + numOFLives, 50, 850);
  over();
  if(invaders.getSize() <= 1){
    invaders.assemble(); 
  }
}

void over() {
  if (numOFLives <= 0 || invaders.getStatus()) {
    gameOver = true;
    background(0);
    invaders.removeAll();
    fill(#0FFAF4);
    textSize(48);
    text("Your Score: " + currScore, width/2-140, height/2 - 200);
    fill(255);
    textSize(24);
    text("Press z to reset", width/2.5 + 100, height/2 + 200);
    fill(#18E307);
    textSize(96);
    text("GAME OVER", width/3, height/2);
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
    countdown += 25;
  }
  if(key == 'z' && gameOver){
    setup();
  }
  
  //cheats 
  if(key == 'q'){
    numOFLives--;
  }
  if(key == 'w'){
    invaders.dropDown();
  }
  if(key == 'e'){
    invaders.removeAll();
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
