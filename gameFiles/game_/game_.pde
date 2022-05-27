bullet shots[]; 
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
