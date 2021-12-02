abstract class Activity {
  void justDoit();
}

class Coding implements Activity {
  @override
  void justDoit() {
    print('Пишу код ...');
  }
}

class Reading implements Activity {
  @override
  void justDoit() {
    print('Читаю книжку ...');
  }
}

class Sleeping implements Activity {
  @override
  void justDoit() {
    print('Сплю ...');
  }
}

class Training implements Activity {
  @override
  void justDoit() {
    print('Тренуюся ...');
  }
}

class Developer {
  late Activity activity;

  void setActivity(Activity activity) {
    this.activity = activity;
  }

  void executeActivity() {
    activity.justDoit();
  }
}

void main() {
  Developer developer = Developer();

  developer.setActivity(Sleeping());
  developer.executeActivity();

  developer.setActivity(Training());
  developer.executeActivity();

  developer.setActivity(Coding());
  developer.executeActivity();

  developer.setActivity(Reading());
  developer.executeActivity();

  developer.setActivity(Sleeping());
  developer.executeActivity();
}
