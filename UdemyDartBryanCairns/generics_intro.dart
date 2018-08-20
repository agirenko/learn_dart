class Counter<T extends num> {
  List<T> _items = new List<T>();

  void addAll(Iterable<T> iterable) => _items.addAll(iterable);

  void add(T value) => _items.add(value);

  T elementAt(int index) => _items.elementAt(index);

  void total() {
    num value = 0;
    _items.forEach((item) {
      value = value + item;
    });

    print(value);
  }
}

main(List<String> arguments) {
  List<int> numbers = new List<int>();
  numbers.addAll([1, 2, 3, 4]);
  print(numbers);

  List<String> strings = new List<String>();
  strings.addAll(['a', 'b', 'c']);
  print(strings);

  add<int>(1, 2);
  add<double>(1.0, 2.09);
  add<String>('hello ', 'world');

  addNumbers<int>(1, 2);
  addNumbers<double>(1.0, 2.09);
  //addNumbers<String>('hello ', 'world');

  Counter<double> doubles = new Counter<double>();
  doubles.addAll([1.0, 2.2, 3.6]);
  doubles.total();

  Counter<int> ints = new Counter<int>();
  ints.addAll([1, 2, 3]);
  ints.total();
}

//Simple Example
void add<T>(T a, T b) {
  print(a.toString() + b.toString());
}

//More complex
void addNumbers<T extends num>(T a, T b) {
  print(a + b);
}
