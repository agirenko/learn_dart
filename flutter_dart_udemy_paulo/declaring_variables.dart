printHello(String who) {
  print('Hello ' + who + '!');
}

main(List<String> arguments) {
  var country = 'Mozambique';
  String name;
  name = "Some Name";

  dynamic someVar;
  someVar = 'CountryString';
  someVar = 5;
  print(someVar);

  print(country);
  printHello('You');
  printHello(name);
  // numbers
  int age = 13;
  double number = 25.5;
  print(age.toString() + ' ' + number.toString());

  // Boolean
  bool isTrue = 5 > 4;
  print(isTrue);
}