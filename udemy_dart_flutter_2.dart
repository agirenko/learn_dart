// lesson 80, Generics in Dart

void main() {
  // Circle goes to "T"
  var circleSlot = new Slot<Circle>();

  circleSlot.insert(new Circle());
  //circleSlot.insert(new Square()); // it does not work because of the circleSlot waits Circle
}

class Circle {}

class Square {}

class Slot<T> {
  insert(T shape) {}
}
