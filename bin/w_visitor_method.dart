abstract class Car {
  late String name;
  void accept(CarVisitor visitor) => visitor.visit(this);
}

abstract class CarVisitor {
  void visit(Car car);
}

class Motor extends Car {
  String name = "Motor";
  Motor(this.name);
}

class Wheels extends Car {
  String name = "Wheels";
  Wheels(this.name);
}

class Salon extends Car {
  String name = "Salon";
  Salon(this.name);
}

class Body implements Car {
  String name = "Машину";
  late List<Car> bodycars;

  Body() {
    bodycars = List.from([
      Motor("Мотор"),
      Wheels("Колеса"),
      Salon("Салон"),
    ]);
  }

  @override
  void accept(CarVisitor visitor) {
    for (var bodycar in bodycars) {
      bodycar.accept(visitor);
    }
    visitor.visit(this);
  }
}

class BodyCarVisitor implements CarVisitor {
  void visit(Car car) {
    if (car is Body) {
      print("Зробили ${car.name}.");
    }
    if (car is Wheels) {
      print("Поставили ${car.name}.");
    }
    if (car is Salon) {
      print("Прибрали ${car.name}.");
    }
    if (car is Motor) {
      print("Зробили ${car.name}.");
    }
  }
}

void main() {
  var body = Body();
  body.accept(BodyCarVisitor());
}
