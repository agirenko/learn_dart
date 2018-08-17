class Animal2 {
  String _name = '';
  int _age = 0;
  String breed = '';

  Animal2(String name, int age, String breed) {
    this._name = name;
    _age = age;
    this.breed = breed;
  }

  // getter
  String get name => _name;

  // setter
  void set name(String value) => _name = value;

  int get age => _age;

  void set age(int value) => _age = value * 7;

  void sayHello() => print(
      'Hello my name if ${_name} I am ${_age} years old, and I am a ${breed}');

  void _display(String message) => print('message ${message}');

  void saySomething(String message) => _display(message);
}
