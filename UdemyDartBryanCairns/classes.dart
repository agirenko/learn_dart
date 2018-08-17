import 'classes1.dart' as class1;

class MyClass {
  void sayHello(String name) => print('Hello ${name}');
}

class Animal {
  String _name = '';

  /*
  Animal() {
    print('constructed');
    _name = 'sam';
  }
  */

  Animal(String name) {
    _name = name;
  }

  void sayHello() {
    if (_name.isEmpty) {
      print('Hello');
    } else {
      print('Hello ${_name} nice to meet you');
    }
  }
}

class Dog {
  int age = 1;
  String name = 'fiddo';

  Dog(int age, String name) {
    this.age = age;
    this.name = name;
  }

  int ageInDogYears() => age * 7;
}

main(List<String> arguments) {
  //Create a instance of the class
  MyClass mine = new MyClass();
  MyClass yours = new MyClass();
  mine.sayHello('Bryan');
  yours.sayHello('Cookies');

  //Not really a class
  print(class1.calculate());

  Animal cat = Animal('bob');
  Animal dog = Animal('frank');

  cat.sayHello();
  dog.sayHello();

  Dog bob = new Dog(6, 'Bob');
  print('${bob.name} is ${bob.ageInDogYears()} dog years old ');
}
