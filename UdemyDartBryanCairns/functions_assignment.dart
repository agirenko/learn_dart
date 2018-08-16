import 'dart:io';

main(List<String> arguments) {

  show(getMaxNumber());
}

int getMaxNumber() {
  print('Your max number?');
  return int.parse(stdin.readLineSync());
}

void show(int maxNumber) {

  int halfWay = (maxNumber / 2).floor();

  for(int i = 1; i < maxNumber + 1; i++) {
    print(i);
    if(i == halfWay) print('Half way there');
  }
}