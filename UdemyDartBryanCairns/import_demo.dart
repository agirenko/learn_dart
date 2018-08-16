import 'dart:convert';

main(List<String> arguments) {
  String myvalue = 'Hello World';
  List ebytes = utf8.encode(myvalue);
  String encoded = base64.encode(ebytes);

  print('Encoded: ${encoded}');

  List dbytes = base64.decode(encoded);
  String decoded = utf8.decode(dbytes);
  print('Decoded: ${decoded}');
}
