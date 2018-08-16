import 'dart:io';

main(List<String> arguments) {
  print('Your first name?');
  String firstName = stdin.readLineSync();

  print('Your last name?');
  String lastName = stdin.readLineSync();

  print('Hello ${firstName} ${lastName}');
}
