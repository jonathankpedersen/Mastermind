import java.util.ArrayList;
class Row {
  int id;
  ArrayList<Pins> pins;


  public Row(int id) {
    this.id = id;
    pins = new ArrayList<Pins>();
  }

  void display() {
    for (int i=0; i<4; i++) {
      pins.get(i).displayPins();
    }
  }
  void addPin(Pins pin) {
    pins.add(pin);
  }
  Pins getPin(int i) {
    return pins.get(i);
  }
}
