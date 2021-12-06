abstract class Car {
  void create();
}

class CarTesla implements Car {
  @override
  void create() {
    print("Отримати машину Тесла");
  }
}

class CarBMW implements Car {
  @override
  void create() {
    print("Отримати машину BMW");
  }
}

abstract class CarFactory {
  Car createCar();
}

class ShopTesla implements CarFactory {
  @override
  Car createCar() {
    return CarTesla();
  }
}

class ShopBMW implements CarFactory {
  @override
  Car createCar() {
    return CarBMW();
  }
}

void main() {
  var model = "tesla";
  late CarFactory modelCar;

  switch (model) {
    case "tesla":
      modelCar = ShopTesla();
      break;
    case "bmw":
      modelCar = ShopBMW();
      break;
    default:
      print("No more cars...");
  }
  var myCar = modelCar.createCar();
  myCar.create();
}
