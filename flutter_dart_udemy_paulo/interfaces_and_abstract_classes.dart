// multiple inheritance is not allowed
abstract class Animal {
  void breathe(); // an abstract method
  void makeNoise() {
    print('Making animal noises.');
  }
}

abstract class IsFunny{
  void makePeopleLaugh();
}

abstract class IsNotFunny {
  void doNotMakePeopleLaugh();
}

class Comedian extends Person implements IsFunny, IsNotFunny {
  Comedian(String name, String nationality):super(name, nationality);

  @override
  void makePeopleLaugh() {
    print('ha-ha');
  }

  @override
  void doNotMakePeopleLaugh() {
    print('No ha-ha');
  }
}

class Person implements Animal {
  String name, nationality;
  Person(this.name, this.nationality);


  @override
  String toString() =>
    'Person {name: $name}{nationality: $nationality}';


  @override
  void breathe() {
    print('breathe');
  }

  @override
  void makeNoise() {
    print('make noise like animal');
    print('Hello');
  }

}

class TVShow implements IsFunny, IsNotFunny {
  @override
  void doNotMakePeopleLaugh() {
    print('ha-ha-ha');
  }

  @override
  void makePeopleLaugh() {
    print('No-ha-ha-ha');
  }

}
main() {
 // var animal = Animal(); //Error: The class 'Animal' is abstract and can't be instantiated.
  var jenny = new Person('Jenny', 'American');
  print(jenny);
  jenny.breathe();
  jenny.makeNoise();
}
