main() {
  // Specifying the length creates a fixed-length list.
  var list = new List(3);
  list[0] = 'a';
  list[1] = 'b';
  list[2] = 'c';
  //list.add('d'); //Cannot add to a fixed-length list
  print(list);

  // Leaving out the length creates a grow able list.
  var iCanGrow = new List();
  iCanGrow.addAll(['grow', 'able']);
  print(iCanGrow);

  // Lists can be defined using bracket literals.
  List<dynamic> list2 = ['also', 'growable']; // var does not work on dart 2. List<dynamic> works
  list2.add(42);
  print(list2);

  // modifying grow able lists during iteration can cause ConcurrentModificationErrors
  var list3 = [47, 3, 25];
  try {
    for (var item in list3) {
      if (item < 10) {
        list3.remove(item);
      }
    }
  } catch (e) {
    print('error');
  }
}
