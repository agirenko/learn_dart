import 'animal2_class.dart';

class Animal {
  String name = 'UNKNOWN';
  static int _counter = 0;
  Animal(String name) {
    //String name = 'hello';
    //name = name; // attention, it does not work in Dart 2
    this.name = name; // this works in Dart 2
    print(this.name);
  }
  // both properties and methods may be static
  static increaseCounter() {
    _counter++;
  }
}

main(List<String> arguments) {
  Animal cat = new Animal('fluffy');
  Animal.increaseCounter();
  print(Animal._counter);
  Animal.increaseCounter();
  print(Animal._counter);


  Animal2 cat2 = new Animal2('fluffy', 16, 'Short Hair');

  cat2.breed = 'mixed';
// code below works if class is defined in the same file
// code below does not work if class is defined in different file (library)
// https://stackoverflow.com/questions/17488611/how-in-dart-create-private-variable
//  cat2._name = 'muffin';
//  cat2._display('hello');
  cat2.name = 'Updated Fluffy';
  print(cat2.name);
  cat2.sayHello();
  cat2.saySomething('meow');
//  cat2._display('It is displayed');

//  for(int i = 0; i < 10; i ++) {
//    print(i);
//    if(i < 8) {
//      //int i = 5; //valid but causes issues
//      if(i > 4)
//      {
//        print('i is < 8 and > 4');
//      }
//    }
//  }
}
