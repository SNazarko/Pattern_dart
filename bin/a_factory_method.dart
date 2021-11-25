enum CarModel {
  tesla,
  bmw,
  mercedes,
}

abstract class Car {
  factory Car(CarModel model) {
    switch (model) {
      case CarModel.tesla:
        return Tesla();
      case CarModel.bmw:
        return BMW();
      case CarModel.mercedes:
        return Mercedes();
    }
  }
  void create();
}

class Tesla implements Car {
  @override
  void create() {
    print('Створити машину Tesla');
  }
}

class BMW implements Car {
  @override
  void create() {
    print('Створити машину BMW');
  }
}

class Mercedes implements Car {
  @override
  void create() {
    print('Створити машину Mercedes');
  }
}
