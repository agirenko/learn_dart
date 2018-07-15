import 'dart:async';
// work with Future example

main() async {
// JavaScript Promise like code
//  print('About to fetch data...');
//  get('http://some.url').then((result) {
//    print('Get result: ' + result);
//  });
//  print('Get is started but result is not ready yet...');

// async-await code (recommended)
  print('About to fetch data...');
  var result = await get('http://some.url');
  print('Awaiting result...'); // this string is not shown while awaiting the result
  print(result);
}

Future<String> get(String url) {
  return new Future.delayed(new Duration(seconds: 2), () {
    return 'Got the data!';
  });
}
