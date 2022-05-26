//list of bullets
//list of aliens
//player (Cannon) 
//score 


void setup(){ 
  size(1600, 900);
  background(0);
  alien test = new alien(100, 100, 100, 20, 10);
  test.display();
  stroke(#FFFFFF);
  line(200, 600, 1400, 600);
  cannon player = new cannon();
  player.display();
}

void draw(){
}
