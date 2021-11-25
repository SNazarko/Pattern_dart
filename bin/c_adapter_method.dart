abstract class DatabaseCar {
  void insert();
  void update();
  void select();
  void remove();
}

class Application {
  void insertCar() {
    print('Вставити машину');
  }

  void updateCar() {
    print('Змінити машину');
  }

  void selectCar() {
    print('Вибрати машину');
  }

  void removeCar() {
    print('Видалити машину');
  }
}

class AdapterApplicationToDatabaseCar extends Application
    implements DatabaseCar {
  @override
  void insert() {
    insertCar();
  }

  @override
  void remove() {
    removeCar();
  }

  @override
  void select() {
    selectCar();
  }

  @override
  void update() {
    updateCar();
  }
}
