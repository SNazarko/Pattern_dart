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

  void shangeActivity() {
    if (activity is Sleeping) {
      setActivity(Training());
    } else if (activity is Training) {
      setActivity(Coding());
    } else if (activity is Coding) {
      setActivity(Reading());
    } else if (activity is Reading) {
      setActivity(Sleeping());
    }
  }

  void justDoit() => activity.justDoit();
}

void main() {
  Activity activity = Sleeping();
  Developer developer = Developer();
  developer.setActivity(activity);

  for (int i = 0; i < 10; i++) {
    developer.justDoit();
    developer.shangeActivity();
  }
}
