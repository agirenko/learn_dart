class Employee {
  String name = '';

  void test() => print('test');
}

class Manager implements Employee {
  String name = 'Bob';

  void test() {
    print('test in the manager class');
    print(super.toString());
  }
}

main(List<String> arguments) {
  Manager bob = new Manager();

  bob.test();
}
