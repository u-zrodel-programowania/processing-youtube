class Sniezynka {
  private PImage o; 
  private int x, y ;
  public Sniezynka() {
    o.set("
    x = (int)random(0, width); 
    y = 0;
  }
  
  public void draw() {
    fill( 255 );
    ellipse( x, y, 10, 10 );   
  }
  
  public int getY() {
    return y;
  }
  
  public void down() {
    y++;
  }
  
}
