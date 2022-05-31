public class bullet {
  float x, y;
  float direction;

  public bullet(){
  }
  
  public bullet(float xd, float yd, int posNeg){
    x = xd;
    y = yd;
    direction = posNeg;
  }
  
  void display(){
    fill(255); 
    rect(this.x, this.y, 5, 10);
  }
  
  void move() {
    //remove from the bullets arraylist when above the height or below 0
    y += direction * 5;
    if(y > height || y < 0){
      bullets.remove(this);
    }
  }
  
}
