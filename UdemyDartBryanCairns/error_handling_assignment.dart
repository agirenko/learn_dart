import 'dart:io';

main(List<String> arguments) {
  try {
    int age = getAge();
    if(age < 18) throw new Exception('too young');
    if(age > 99) throw new Exception('too old');
  } catch (e) {
    print('Problem: ${e.toString()}');
  }
  finally {
    print('No exceptions');
  }
}

int getAge() {
  print('Input an age');
  return int.parse(stdin.readLineSync());
}