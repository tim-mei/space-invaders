public class bullet {
  float x, y;

  public bullet(){
  }
  
  public bullet(float xd, float yd){
    x = xd;
    y = yd;
  }
  
  void display(){
    rect(this.x, this.y, 2, 10);
  }
  
  void move() {
    //remove from the bullets arraylist when above the height or below 0
    y += 20;
    if(y > height || y < 0){
      bullets.remove(this);
    }
  }
  
}
