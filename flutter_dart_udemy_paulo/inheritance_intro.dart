class Person {
  String name, lastName, nationality;
  String _secondName;
  int age;

  void showName() {
    print(name);
  }

  void sayHello() {
    print('Hello!');
  }
}

// very simple, as in other languages like TypeScript
class Bonni extends Person {
  String profession;

  void showProfession() => print(profession);
}

class Paulo extends Person {
  @override
  void sayHello() {
    print('Ola!');
  }
}

main() {
  var bonni = new Bonni();
  bonni.name = 'Bonni';
  bonni.profession = 'Ballerina';
  bonni.showName();
  bonni.showProfession();
  bonni.sayHello();
  var paulo = new Paulo();
  paulo.sayHello();
}
