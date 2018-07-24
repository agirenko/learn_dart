class Person {
  String name;

  Person(this.name);

  @override
  String toString() {
    return 'Person {name: $name}';
  }
}

main() {
  //maps
  var winners = {'first': 'Bill', 'second': 'George', 'third': 'Bond'};
  print(winners);
  winners.forEach(
      (k, v) => print('$k : $v')
  );
  var keys = winners.keys;
  print(keys);
  var values = winners.values;
  print(values);
  List<dynamic> a = [1, 2, 3, "b"];
  var c = {'e': 'b', 'c': 'd', 1: 'f'};
  var list = [10, 2, 13, 24, 100];
  var listAsMap = list.asMap();
  var listStr = List<String>();
  var james = Person('James');
  var sheila = Person('Sheila');
  var personList = List<Person>();
  personList.add(james);
  personList.add(sheila);
  print(personList);
  listStr.add('abc');
  listStr.add('0');
  print(listStr);
  print(listAsMap);
  print(list.length);
  print(list[0]);
  print(a);
  print(c);
}
