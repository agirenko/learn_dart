import 'dart:io';

main(List<String> arguments) {

  Directory dir = Directory.current;
  File file = new File(dir.path + '/file.txt');

  file.writeAsStringSync('Hello World');
  print(file.readAsStringSync());

  file.deleteSync();

}