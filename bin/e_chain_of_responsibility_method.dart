abstract class Notifier {
  Notifier({required this.priority});
  final int priority;
  Notifier? nextNotifier;
  void setNextNotifier(Notifier nextNotifier) {
    this.nextNotifier = nextNotifier;
  }

  void notifierManager(String message, int level) {
    if (level >= priority) {
      write(message);
    }
    if (nextNotifier != null) {
      nextNotifier!.notifierManager(message, level);
    }
  }

  void write(String message);
}

class Priority {
  static const int routine = 1;
  static const int important = 2;
  static const int danger = 3;
}

class SimpleReportNotifier extends Notifier {
  SimpleReportNotifier(int priority) : super(priority: priority);

  @override
  void write(String message) {
    print('Повідомляємо за допомогою простого звіту $message');
  }
}

class EmailNotifier extends Notifier {
  EmailNotifier(int priority) : super(priority: priority);

  @override
  void write(String message) {
    print('Повідомляємо за допомогою пошти $message');
  }
}

class SmsNotifier extends Notifier {
  SmsNotifier(int priority) : super(priority: priority);

  @override
  void write(String message) {
    print('Повідомляємо за допомогою SMS менеджеру $message');
  }
}

void main() {
  Notifier reportNotifier = SimpleReportNotifier(Priority.routine);
  Notifier emailNotifier = EmailNotifier(Priority.important);
  Notifier smsNotifier = SmsNotifier(Priority.danger);

  reportNotifier.setNextNotifier(emailNotifier);
  reportNotifier.setNextNotifier(smsNotifier);

  reportNotifier.notifierManager('Все добре', Priority.routine);
  reportNotifier.notifierManager('Треба додаткова увага!', Priority.important);
  reportNotifier.notifierManager('Очікуємо великий обвал ...', Priority.danger);
}
