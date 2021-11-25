abstract class Auto {
  Make make;
  void showDetails();
  Auto({required this.make});
}

class Sedan extends Auto {
  Sedan(Make make) : super(make: make);
  @override
  void showDetails() {
    print('Sedan');
    make.setMake();
  }
}

class Hatchback extends Auto {
  Hatchback(Make make) : super(make: make);

  @override
  void showDetails() {
    print('Hatchback');
    make.setMake();
  }
}

abstract class Make {
  void setMake();
}

class Audi implements Make {
  @override
  void setMake() {
    print('Audi');
  }
}

class Kia implements Make {
  @override
  void setMake() {
    print('Kia');
  }
}
