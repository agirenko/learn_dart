import 'dart:async';

int counter = 0;

main(List<String> arguments) {
  Duration duration = Duration(seconds: 1);
  Timer.periodic(duration, timeout);
  print('Started ${getTime()}');
}

void timeout(Timer timer) {
  print('Timeout: ${getTime()}');
  counter++;
  if (counter >= 5) timer.cancel();
}

String getTime() {
  DateTime dt = DateTime.now();
  return dt.toString();
}
