class Animal {
  bool isAlive = true;

  void breath() => print('breathing');
}

class Mammal extends Animal {
  bool hasHair = true;
  bool hasBackbone = true;
  bool isWarmBlooded = true;

  void walk() => print('Walking');

  void test() {
    print('testing in mamal');
    //super.test();
  }
}

class Feline extends Mammal {
  bool hasClaws = true;

  void growl() => print('grrrrr');

  @override
  void test() {
    print('testing in feline');
    super.test();
  }
}

main(List<String> arguments) {
  Feline cat = new Feline();
  cat.breath();
  cat.test();
}
