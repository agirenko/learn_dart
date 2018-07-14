//https://www.dartlang.org/guides/language/language-tour

variables() {
//  Variables store references. The variable called name contains a reference to a String object with a value of “Bob”.
//  The type of the name variable is inferred to be String, but you can change that type by specifying it.
  var name = 'Bob';
  String rel = 'uncle';
  print(rel + " " + name);
//  Uninitialized variables have an initial value of null. Even variables with numeric types are initially null,
//  because numbers—like everything else in Dart—are objects.
  int lineCount;
  assert(lineCount == null);

  final name1 = 'Bob1'; // Without a type annotation
  final String nickname = 'Bobby';
  //You can’t change the value of a final variable:

  //name1 = 'Alice'; // Error: a final variable can only be set once.

  // Use const for variables that you want to be compile-time constants.
  const bar = 1000000; // Unit of pressure (dynes/cm2)
  const double atm = 1.01325 * bar; // Standard atmosphere

  // numbers
  double abc = 123.45;
  int abcd = abc.ceil();
  print(abcd);
  int x = 1;
  int hex = 0xDEADBEEF;
//  If a number includes a decimal, it is a double. Here are some examples of defining double literals:

  double y = 1.1;
  double exponents = 1.42e5;
 // Here’s how you turn a string into a number, or vice versa:

// String -> int
  var one = int.parse('1');
  assert(one == 1);

// String -> double
  var onePointOne = double.parse('1.1');
  assert(onePointOne == 1.1);

// int -> String
  String oneAsString = 1.toString();
  assert(oneAsString == '1');

// double -> String
  String piAsString = 3.14159.toStringAsFixed(2);
  assert(piAsString == '3.14');
  //The int type specifies the traditional bitwise shift (<<, >>), AND (&), and OR (|) operators. For example:

  assert((3 << 1) == 6); // 0011 << 1 == 0110
  assert((3 >> 1) == 1); // 0011 >> 1 == 0001
  assert((3 | 4) == 7); // 0011 | 0100 == 0111
  // Literal numbers are compile-time constants. Many arithmetic expressions are also compile-time constants, as long as their operands are compile-time constants that evaluate to numbers.

  const msPerSecond = 1000;
  const secondsUntilRetry = 5;
  const msUntilRetry = secondsUntilRetry * msPerSecond;
  print("msUntilRetry " + msUntilRetry.toString());

  //Strings
  var s1 = 'Single quotes work well for string literals.';
  var s2 = "Double quotes work just as well.";
  var s3 = 'It\'s easy to escape the string delimiter.';
  var s4 = "It's even easier to use the other delimiter.";

  print(s1 + s2 + s3 + s4);
  var s = 'string interpolation';

  assert('Dart has $s, which is very handy.' ==
      'Dart has string interpolation, ' +
          'which is very handy.');
  assert('That deserves all caps. ' +
      '${s.toUpperCase()} is very handy!' ==
      'That deserves all caps. ' +
          'STRING INTERPOLATION is very handy!');
// You can concatenate strings using adjacent string literals or the + operator
  var s5 = 'String '
      'concatenation'
      " works even over line breaks.";

  assert(s5 ==
      'String concatenation works even over '
          'line breaks.');

  var s6 = 'The + operator ' + 'works, as well.';
  assert(s6 == 'The + operator works, as well.');

  var s7 = 'string 1' 'string 2';
  print(s7);

//  Another way to create a multi-line string: use a triple quote with either single or double quotation marks:

  var s8 = '''
You can create
multi-line strings like this one.
''';

  var s9 = """This is also a
multi-line string.""";
  //You can create a “raw” string by prefixing it with r:

  var s10 = r"In a raw string, even \n isn't special.";
  print(s8 + s9 + s10);

  // booleans
  // Check for an empty string.
  var fullName = '';
  assert(fullName.isEmpty);

// Check for zero.
  var hitPoints = 0;
  assert(hitPoints <= 0);

// Check for null.
  var unicorn;
  assert(unicorn == null);

// Check for NaN.
  var iMeantToDoThis = 0 / 0;
  assert(iMeantToDoThis.isNaN);


}

lists() {
  var list = [1, 2, 3];
  assert(list.length == 3);
  assert(list[1] == 2);

  list[1] = 1;
  assert(list[1] == 1);

 // To create a list that’s a compile-time constant, add const before the list literal:

  var constantList = const [1, 2, 3];
// constantList[1] = 1; // Uncommenting this causes an error.
  print(constantList);
}
//TODO
maps(){

}

main() {
  variables();
  lists();
  maps();
}
