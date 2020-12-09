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
 
  
    /*if(mouseX>50 && mouseY>50 && mouseX<150 && mouseY<150){
      pinColor = color(255,0,0);
      return pinColor;
    }else if(mouseX>150 && mouseY>50 && mouseX<250 && mouseY<150){
      pinColor = color(0,255,0);
      return pinColor;
    }
    return pinColor;
  }*/
  
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
  
