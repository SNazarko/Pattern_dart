class CarIterator implements Iterator {
  List car = ["Opel", "Kia", "BMW", "Tesla", "Geely", "Chery", "Renault"];
  int index = 0;
  String get current => car[index++];
  @override
  bool moveNext() => index < car.length;
}

void main() {
  CarIterator car = CarIterator();
  while (car.moveNext()) {
    print(car.current);
  }
}
