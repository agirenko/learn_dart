class Employee {
  String name = '';

  void test() {
    print('test in Employee');
    print(super.toString());
  }
}

class Manager extends Employee {
  @override
  String name = 'Bob';

  @override
  void test() {
    print('test in the manager class');
    print(super.toString());
    print(super.runtimeType);
    print(this.name);
  }
}

main(List<String> arguments) {
  Manager bob = Manager();
  bob.test();
  Employee empl = Employee();
  empl.test();
}
