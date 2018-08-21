import 'dart:io';
import 'dart:convert';

main(List<String> arguments) {
  String compressed = Directory.current.path + '/compressed.gzip';

  File file = new File(compressed);
  file.createSync();
  file.writeAsBytesSync(gzip.encode(utf8.encode('Some text for compressing')));

  print(utf8.decode(gzip.decode(file.readAsBytesSync())));
}
