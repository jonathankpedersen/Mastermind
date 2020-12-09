Pins[] pins;
color pinColor;
color pinColorRed = color(255, 0, 0);
color pinColorG = color(0, 255, 0);
color pinColorY = color(250, 255, 0);
color pinColorB = color(0, 0, 255);
color pinColorO = color(255, 175, 0);
color pinColorW = color(255);
color pinColorS = color(0);
void setup() {
  size(500, 500);
  frameRate(30);

  pins = new Pins[4];
  innitarray();
}
void draw() {
  background(255);
  for (int i = 0; i<4; i++) {
    //To do: get color choice from user
    myKeyPressed(pins[i]);
    pins[i].setColor(pinColor);
    pins[i].displayPins();
  }
}
void innitarray() {
  for (int i = 0; i<4; i++) {

    Pins tempPins = new Pins(i*110+75, 200, 100);

    pins[i]=tempPins;
  }
}
public void myKeyPressed(Pins pin) {
  boolean run = true;
  while (run) {
    if (key == 'r' || key == 'R') {
      pinColor = pinColorRed;
    } else if (key == 'g' || key == 'G') {
      pinColor = pinColorG;
    } else if (key == 'y' || key == 'Y') {
      pinColor = pinColorY;
    } else if (key == 'b' || key == 'B') {
      pinColor = pinColorB;
    } else if (key == 'o' || key == 'O') {
      pinColor = pinColorO;
    } else if (key == 'w' || key == 'W') {
      pinColor= pinColorW;
    } else if (key == 's' || key == 'S') {
      pinColor = pinColorS;
    }
    run = false;
  }
}
