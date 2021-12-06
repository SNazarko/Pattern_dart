abstract class Prototype {
  Prototype clone();
}

class MyCar implements Prototype {
  int wheelOfCar;
  String bodyCar;
  String motorCar;
  MyCar(this.wheelOfCar, this.bodyCar, this.motorCar);

  int getWheelOfCar() => wheelOfCar;
  void setWheelOfCar(int wheelOfCar) {
    this.wheelOfCar = wheelOfCar;
  }

  String getBodyCar() => bodyCar;
  void setBodyCar(String bodyCar) {
    this.bodyCar = bodyCar;
  }

  String getMotorCar() => motorCar;
  void setMotorCar(String motorCar) {
    this.motorCar = motorCar;
  }

  @override
  Prototype clone() {
    MyCar clone = MyCar(wheelOfCar, bodyCar, motorCar);
    return clone;
  }

  @override
  String toString() {
    return 'MyCar{'
        'wheelOfCar: $wheelOfCar, '
        'bodyCar: $bodyCar, '
        'motorCar: $motorCar}';
  }
}

class CloneCar {
  MyCar myCar;

  CloneCar(this.myCar);
  void setMyCar(MyCar myCar) {
    this.myCar = myCar;
  }

  MyCar cloneMyCar() {
    return myCar.clone() as MyCar;
  }
}

void main() {
  MyCar myCar = MyCar(4, 'Модний кузов', 'Потужний мотор');
  print(myCar);
  MyCar cloneMyCar = myCar.clone() as MyCar;
  print(cloneMyCar);
  CloneCar factory = CloneCar(myCar);
  MyCar cloneMyCar2 = factory.cloneMyCar();
  print(cloneMyCar2);
}
