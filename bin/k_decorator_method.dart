abstract class Car {
  String appearance();
}

class CarFord implements Car {
  @override
  String appearance() => "Новий вигляд";
}

class CarDecorator implements Car {
  Car car;

  CarDecorator(this.car);

  @override
  appearance() => car.appearance();
}

class TuningCarFord extends CarDecorator {
  TuningCarFord(Car car) : super(car);
  String tuningCar() => " + Класний спойлер";
  @override
  appearance() {
    return super.appearance() + tuningCar();
  }
}

class SuperTuningFord extends CarDecorator {
  SuperTuningFord(Car car) : super(car);
  String superTuningCar() => " + Спортивні бампера";
  @override
  appearance() {
    return super.appearance() + superTuningCar();
  }
}

void main() {
  Car car = SuperTuningFord(TuningCarFord(CarFord()));
  print(car.appearance());
}
