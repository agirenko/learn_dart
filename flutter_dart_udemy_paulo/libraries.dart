import 'lib/TesterLibs.dart' as TesterLibs;
import 'lib/utils.dart';
import 'dart:math' as math;

main() {
  print(TesterLibs.getName());
  print(addNumbers(5, 19));
  print(math.sqrt(12));
  var rng = math.Random();
  print(rng.nextInt(100));
}
