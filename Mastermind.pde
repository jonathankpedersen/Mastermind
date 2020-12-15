Pins[] pins;
Row[] rowOfPins = new Row[11];
Pins[] miniPins = new Pins[4];
Row[] rowOfMiniPins = new Row[10];
Row targetRow;
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
int delay = 60;
int[] gameCounter;
int stepCounter;
int pinCounter;
int colorCounter;
int colorCounter2;
int colorCounter3;
int colorCounter4;

void setup() {
  size(550, 900);
  frameRate(30);
  innitarray();
  innitMiniPins();
  stepCounter = 0;
  
}
void draw() {
  background(255);
  rowOfPins[10].display();
  for (int i=0; i<stepCounter; i++) {
    rowOfPins[i].getPin(pinCounter).setColor(pinColor);
    rowOfPins[i].display();
  }
  if (frameCount%delay==0) {
    //for(int j = 0; j<gameCounter.length; j++){
    //to do: generate gamecounter ofr poiting into usertries
    for (int i = 0; i<4; i++) {
      //To do: get color choice from user
      //myKeyPressed(pins[i]);
      //pinColor=colors[int (random(6))];
      //pins[i].setColor(pinColor);
      //pins[i].displayPins();
    }
    // }
  }
}

void innitarray() {
  for (int j = 0; j<11; j++){ 
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
    for (int i=0; i<4; i++) {
      Pins tempMiniPins = new Pins(i*15+400, 50+distance, 10);
      miniPins[i]=tempMiniPins;
      miniPinColor=miniColor[int (random(3))];
      miniPins[i].setColor(miniPinColor);
      miniPins[i].displayPins();
    }
    //rowOfMiniPins[j]=miniPins;
    distance = distance + 75;
  }
}
public void myKeyPressed() {
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
boolean rowIsValid(){
  int[] resultArr = new int[4];
  int resultNum = 0;
  for(int i=0;i<4;i++){
    if(rowOfPins[stepCounter-1].getPin(i).pinColor == rowOfPins[10].getPin(i).pinColor){
      resultArr[i]=1;
    }
    resultNum = resultNum + resultArr[i];
    println(resultNum);
  
  }
  if(resultNum==4){
    return true;
  }else{
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
  if(key=='t'){
    if(rowIsValid()){
    println("Du har vundet");
    rowOfPins[10].display();
    }else{
      println("Try again");
    }
  }
  
}
