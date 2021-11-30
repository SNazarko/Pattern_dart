abstract class Observer {
  void handleEvent(List<String> vacancies);
}

abstract class Observed {
  void addObserver(Observer observer);
  void removeObserver(Observer observer);
  void notifyObserves();
}

class Subscriber implements Observer {
  String name;

  Subscriber(this.name);

  @override
  void handleEvent(List<String> vacancies) {
    print('Шановний $name, хочемо вас повідомити про зміни у ваканціях:'
        '\n$vacancies \n=====================================\n');
  }
}

class DeveloperJobSite implements Observed {
  List<String> vacancies = <String>[];
  List<Observer> subscribers = <Observer>[];
  void addVacancy(String vacancy) {
    vacancies.add(vacancy);
    notifyObserves();
  }

  void removeVacancy(String vacancy) {
    vacancies.remove(vacancy);
    notifyObserves();
  }

  @override
  void addObserver(Observer observer) {
    subscribers.add(observer);
  }

  @override
  void removeObserver(Observer observer) {
    subscribers.remove(observer);
  }

  @override
  void notifyObserves() {
    for (Observer observer in subscribers) {
      observer.handleEvent(vacancies);
    }
  }
}

void main() {
  DeveloperJobSite jobSite = DeveloperJobSite();

  jobSite.addVacancy('Перша вакансія');
  jobSite.addVacancy('Друга вакансія');

  Observer firstSubscribers = Subscriber('Андрій');
  Observer secondSubscribers = Subscriber('Петро');

  jobSite.addObserver(firstSubscribers);
  jobSite.addObserver(secondSubscribers);

  jobSite.addVacancy('Третя вакансія');
  // jobSite.removeVacancy('Перша вакансія');
}
