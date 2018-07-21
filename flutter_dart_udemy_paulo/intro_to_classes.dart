class Microphone {
  // instance variables, member variables
  String name;
  String color;
  int model;
  String _modification;
//Syntactic sugar constructor
  Microphone(this.name, this.color, this.model);

  Microphone.initialize() {
    this.name = 'aaa';
    this.color = 'bbb';
    this.model = 1;
  }

  String get modification => _modification;
  set modification(String value) => _modification = value;


  String get getName => name;

  set setName(String value) => name = value;

  void nameAndColor() {
    print(name + ' ' + color);
  }

  void turnOn() {
    print('$name is on');
  }

  void turnOff() {
    print('$name is off');
  }

  void setVolume() {
    print('$name with color: $color volume is up');
  }
}

main() {
  print("Intro to classes");
  var mic = Microphone('nnn', 'mmm', 123);
//  mic.name = 'Blue Yeti';
//  mic.color = 'Silver Gray';
//  mic.model = 12345;
//  var mic2 = Microphone.initialize();
//  mic2.nameAndColor();
//  print(mic.color);
//  print(mic.model);
//  print(mic.name);
//  mic.nameAndColor();
//  mic.turnOn();
//  mic.setVolume();
//  mic.turnOff();
  mic.setName = 'real name';
  print(mic.getName);
}
