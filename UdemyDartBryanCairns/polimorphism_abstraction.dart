abstract class Car {
  bool hasWheels;
  bool hasHorn;

  void honk();
  //void honk() => print('honk called in car');
}

class RaceCar extends Car {
  RaceCar() {
    this.hasHorn = true;
    this.hasWheels = true;
  }

  //void honk() => print('beep beep');
  void honk() {
    print('honk in racecar');
    //super.honk();
  }
}

main(List<String> arguments) {
  RaceCar rc = new RaceCar();
  rc.honk();
}
