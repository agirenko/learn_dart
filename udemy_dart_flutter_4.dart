import 'dart:async';
// work with Future example

main() {
  var result = get('http://some.url');
  print(result);
}

Future<String> get(String url) {
  return new Future.delayed(new Duration(seconds: 3), () {
    return 'Got the data!';
  });
}
