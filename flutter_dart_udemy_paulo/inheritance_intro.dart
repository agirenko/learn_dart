class Person {
  String name, lastName, nationality;
  String _secondName;
  int age;

  void showName() {
    print(name);
  }
}
// very simple, as in other languages like TypeScript
class Bonni extends Person {
  String profession;

  void showProfession() => print(profession);
}

main() {
  var bonni = new Bonni();
  bonni.name = 'Bonni';
  bonni.profession = 'Ballerina';
  bonni.showName();
  bonni.showProfession();
}
