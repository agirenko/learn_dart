var myOutsideVar = "Outside var";
// optional positional parameter

String yourAge(String name, String lastName, [int age]) {
  var result = '$name $lastName';
  if (age != null) {
    result = '$name $lastName age: $age';
  }
  return result;
}

main(List<String> arguments) {
  num first = 5.0;
  double second = 4.1;
  var reminder = first % second;
  print(reminder);

  print(num is! String);
  //print(first as String); error, type 'double' is not a subtype of type 'String' in type cast
  if (first != 111) {
    print('first != 11');
  }
  for (var i = 0; i < 5; i++) {
    if (i % 2 == 0) {
      print('hello $i');
    }
  }

  var result = yourAge("Phil", "Collins", 48);
  print(result);
  result = yourAge("Cate", "Collins");
  print(result);
  print(myOutsideVar);

  insideFunction() {
    myOutsideVar = "James";
    print('From inside is: $myOutsideVar');
  }
  insideFunction();
}
