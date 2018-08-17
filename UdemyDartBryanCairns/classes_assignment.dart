class Employee {
  String fullName = '';
  String position = '';

  Employee(String employeeName, String position) {
    this.fullName = employeeName;
    this.position = position;
  }

  void sayHello() => print('Hello my name ${fullName} and I am ${position}');
}

main(List<String> arguments) {

  Employee employeeOne = new Employee('Mark', 'Programmer');
  Employee employeeTwo = new Employee('David', 'Project Manager');

  employeeOne.sayHello();
  employeeTwo.sayHello();
}