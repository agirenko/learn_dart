main() {
  var country = 'Jamaica';
  const pi = 3.14159; // constant at COMPILE time
  print(pi);
  // final - if we want a variable/value to always be constant = never change
  //pi = 33; error
  final int z = 33;
  final listString = ['ab', 'cd'];
  print(listString);
  listString.add('ef');
  print(listString);

}