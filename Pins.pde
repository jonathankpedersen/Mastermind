class Pins {
  private int x;
  private int y;
  private int size;
  private color pinColor;
  private int pinStroke;


  public Pins(int x, int y, int size) {
    this.x = x;
    this.y = y;
    this.size = size;
    this.pinColor = 255;
    this.pinStroke = 3;
  }
  public void displayPins() {
    fill(pinColor);
    strokeWeight(pinStroke);
    circle(x, y, size);
    noFill();
  }
  public void setColor(color usercolor) {
    pinColor = usercolor;
  }
}
