printHello(String who) {
  print('Hello ' + who + '!');
}

main(List<String> arguments) {
  var country = 'Mozambique'; // string
  String name;
  name = "Some Name";

  dynamic someVar;
  someVar = 'CountryString';
  someVar = 5;
  print(someVar);

  print(country);
  printHello('You');
  printHello(name);
}