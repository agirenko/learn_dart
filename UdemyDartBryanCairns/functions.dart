main(List<String> arguments) {
  test();
  sayHello('Bryan');

  print('Your age in dog years is ${dogYears(43)}');

  int wall1 = squareFeet(10, 10);
  int wall2 = squareFeet(10, 20);
  int wall3 = squareFeet(10, 10);
  int wall4 = squareFeet(10, 20);
  int ceiling = squareFeet(20, 10);

  double paint = paintNeeded(wall1, wall2, wall3, wall4, ceiling);
  print('You ${paint} gallons of paint');

  sayHello();

  download('myfile.txt');
  download('myfile2.txt', true);

  int footage = squareFeet2(length: 10, width: 5);
  print('Footage is ${footage}');
  downl('myfile');
  downl('myfile2', port: 90);
}

void test() {
  print('testing');
}

//void sayHello(String name) {
//  print('Hello ${name}');
//}

int dogYears(int age) {
  return age * 7;
}

int squareFeet(int width, int length) {
  return width * length;
}

double paintNeeded(int wall1, int wall2, int wall3, int wall4, int ceiling) {
  int footage = wall1 + wall2 + wall3 + wall4 + ceiling;
  return footage / 30;
}

void sayHello([String name = '']) {
  if (name.isNotEmpty) name = name.padLeft(name.length + 1);
  print('Hello${name}');
}

void download(String file, [bool open = false]) {
  print('Downloading ${file}');
  if (open) print('Opening ${file}');
}

int squareFeet2({int width, int length}) {
  return width * length;
}

void downl(String file, {int port: 80}) {
  print('Download ${file} on port ${port}');
}
