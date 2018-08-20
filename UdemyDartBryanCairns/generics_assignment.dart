
class Employee {
  void sayHello() => print('Hello from Employee');
}

class Cashier extends Employee {
  @override
  void sayHello() => print('Hello from Cashier');
}

class Manager extends Employee {
  @override
  void sayHello() => print('Hello from Manager');
}

class Payroll<T extends Employee> {

  List<T> _employees = new List<T>();

  void add(T value) => _employees.add(value);

  void print() {
    _employees.forEach((T value){
      value.sayHello();
    });
  }
}

main(List<String> arguments) {

  Manager manager = new Manager();
  Cashier cashier = new Cashier();

  Payroll payroll = new Payroll();
  payroll.add(manager);
  payroll.add(cashier);
  payroll.print();

}