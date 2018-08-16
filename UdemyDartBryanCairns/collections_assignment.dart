import 'dart:io';

main(List<String> arguments) {
  List people = ['Peter', 'John', 'David', 'Heather'];
  print('Index?');
  int index = int.parse(stdin.readLineSync());
  print('You had selected ${people[index]}');
}
