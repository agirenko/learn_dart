import 'dart:collection';

enum colors { red, green, blue }

main(List<String> arguments) {
  print(colors.values);
  print(colors.red);

  // lists
  List test = [1, 2, 3, 4];
  print('Length = ${test.length}'); // how many
  print('First item is ${test[0]}'); // zero based index

  //print(test.elementAt(1321)); //Error out of range

  List things = new List();
  things.add(1);
  things.add('cats');
  things.add(true);
  print(things);
  Set thingsAsSet = things.toSet();
  print(thingsAsSet);
  thingsAsSet.add('cats');
  print(thingsAsSet);
  thingsAsSet.add('dogs');
  print(thingsAsSet);

  List<int> numbers = new List<int>();
  numbers.add(1);
  numbers.add(2);
  numbers.add(3);
  // numbers.add('cats'); - ERROR !

  // Sets
  Set<int> numbersSet = new Set<int>();
  numbersSet.add(1);
  numbersSet.add(2);
  numbersSet.add(3);
  numbersSet.add(1); //added twice
  print(numbersSet);

  // Collections
  Queue items = new Queue();
  items.add(1);
  items.add(3);
  items.add(2);
  items.removeFirst();
  items.removeLast();
  print(items);

  //Map = key value pair

  //Map people = {'dad' : 'Bryan', 'son' : 'Chris', 'daughter' : 'Heather'};

  Map<String, String> people = new Map<String, String>();
  people.putIfAbsent('dad', () => 'Bryan');
  people.putIfAbsent('son', () => 'Chris');
  people.putIfAbsent('daughter', () => 'Heather');
  people.putIfAbsent('grandSon', () => 'Victor');
  print(people);
  print('Keys are ${people.keys}');
  print('Values are ${people.values}');
  print('Dad is ${people['dad']}');
  print('Son is ${people['son']}');
  print('GrandSon is ${people['grandSon']}');
  print(people['dad']);
}
