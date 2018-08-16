import 'package:path/path.dart' as p;

main(List<String> arguments) {
  String f = p.basename('users/alex/d/text.txt');
  print(f);
}