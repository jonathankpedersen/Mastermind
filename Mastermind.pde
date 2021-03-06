Pins[] pins;
Row[] rowOfPins = new Row[11];
Pins[] miniPins = new Pins[4];
Row[] rowOfMiniPins = new Row[10];
color pinColor;
color miniPinColor;
color pinColorRed = color(255, 0, 0);
color pinColorG = color(0, 255, 0);
color pinColorY = color(250, 255, 0);
color pinColorB = color(0, 0, 255);
color pinColorO = color(255, 175, 0);
color pinColorW = color(255);
color pinColorS = color(0);
int distance=0;
color[] miniColor = {pinColorW, pinColorRed, pinColorS};
color[] colors = {pinColorRed, pinColorG, pinColorY, pinColorB, pinColorO, pinColorW, pinColorS};
int stepCounter;
int pinCounter;
int colorCounter;
int colorCounter2;
int colorCounter3;
int colorCounter4;
int resultNum;

void setup() {
  size(550, 900);
  frameRate(30);
  innitarray();
  innitMiniPins();
  stepCounter = 0;
  println("Press x for ny linje, press t for at teste, og 1,2,3 og 4 skifter farve");
}
void draw() {
  background(255);
  
  //rowOfPins[10].display();
  for (int i=0; i<stepCounter; i++) {
    rowOfPins[i].getPin(pinCounter).setColor(pinColor);
    rowOfPins[i].display();
  }
}

void innitarray() {
  for (int j = 0; j<11; j++) { 
    Row row = new Row(j);
    for (int i = 0; i<4; i++) {

      Pins tempPins = new Pins(i*90+50, 50+distance, 50);
      pinColor=colors[int (random(6))];
      tempPins.setColor(pinColor);
      row.addPin(tempPins);
    }
    rowOfPins[j]=row;
    distance= distance + 75;
  }
}

void innitMiniPins() {
  distance=0;
  for (int j=0; j<10; j++) {
    Row miniRow = new Row(j);
    for (int i=0; i<4; i++) {
      Pins tempMiniPins = new Pins(i*15+400, 50+distance, 10);
      miniPinColor=miniColor[int (random(3))];
      tempMiniPins.setColor(pinColor);
      miniRow.addPin(tempMiniPins);
    }
    rowOfMiniPins[j]=miniRow;
    distance = distance + 75;
  }
}

boolean rowIsValid() {
  int[] resultArr = new int[4];
  resultNum=0;
  for (int i=0; i<4; i++) {
    if (rowOfPins[stepCounter-1].getPin(i).pinColor == rowOfPins[10].getPin(i).pinColor) {
      resultArr[i]=1;
    }
    resultNum = resultNum + resultArr[i];
    println(resultNum);
  }
  if (resultNum==4) {
    return true;
  } else {
    return false;
  }
}
void keyPressed() {
  if (key== 'x' && stepCounter<10) {


    stepCounter=stepCounter+1;
  }
  if (key== '1') {
    pinCounter=0;

    colorCounter= (colorCounter+1)%7;
    pinColor=colors[colorCounter];
  }

  if (key== '2') {
    pinCounter=1;

    colorCounter2= (colorCounter2+1)%7;
    pinColor=colors[colorCounter2];
  }
  if (key== '3') {
    pinCounter=2;

    colorCounter3= (colorCounter3+1)%7;
    pinColor=colors[colorCounter3];
  }
  if (key== '4') {
    pinCounter=3;

    colorCounter4= (colorCounter4+1)%7;
    pinColor=colors[colorCounter4];
  }
  if (key=='t') {
    if (rowIsValid()) {
      println("Du har vundet");
      rowOfPins[10].display();
    }
    if (resultNum==0) {
      println("Du har ingen rigtige, try again");
    }
    if (resultNum==1) {
      println("Du har 1 rigtig, try again");
    }
    if (resultNum==2) {
      println("Du har 2 rigtig, try again");
    }
    if (resultNum==3) {
      println("Du har 3 rigtig, try again");
    }
  }
}
