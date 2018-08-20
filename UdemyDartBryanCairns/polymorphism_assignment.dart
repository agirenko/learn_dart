abstract class House {
  int rooms;

  void ringDoorBell();
}

class Hotel {
  int guests = 0;
}

class Bnb extends House with Hotel {
  Bnb() {
    guests = 0;
    rooms = 5;
  }

  void ringDoorBell() => print('ring');
}

main(List<String> arguments) {
  Bnb bnb = new Bnb();
  bnb.ringDoorBell();
}
