class Animal {
  bool isAlive = true;

  void breath() => print('breathing');
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

class Dragon {
  bool breathsFire = true;

  void fly() => print('flying');

  void test() {
    print('Test called in Dragon');
  }
}

class Ghost {
  bool walksThoughWalls = true;

  void test() {
    print('Test called in Ghost');
  }
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

class Monster extends Feline with Ghost, Dragon {
  bool glowInDark = true;

  @override
  void test() {
    print('Test called in Monster');
    super
        .test(); // Latest class wins. If Dragons is last, it calls test in Dragon
  }
}

main(List<String> arguments) {
  Monster ugly = new Monster();
  ugly.test();
}
