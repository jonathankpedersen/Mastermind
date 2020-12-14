class Pins{
  private int x;
  private int y;
  private int size;
  private color pinColor;
  private color pinColorRed = color(255,0,0);
  private color pinColorG = color(0,255,0);
   private color pinColorY = color(250,255,0);
    private color pinColorB = color(0,0,255);
    private color pinColorO = color(255,175,0);
    private color pinColorW = color(255);
    private color pinColorS = color(0);
  private int pinStroke;
 
  
  public Pins(int x, int y, int size){
    this.x = x;
    this.y = y;
    this.size = size;
    this.pinColor = 255;
    this.pinStroke = 5;
  }
  public void displayPins(){
    fill(pinColor);
    strokeWeight(pinStroke);
    circle(x,y,size);
  }
  public void setColor(color usercolor){
   pinColor = usercolor;
  
}
  }
  
