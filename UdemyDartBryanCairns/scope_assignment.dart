class Person {
  int _age;

  Person(int age) {
    _age = age;
  }

  int get age => _age;
}

main() {
  Person john = new Person(43);

  print(john.age);

  //john.age = 33; // does not work, because of the setter is absent
}
