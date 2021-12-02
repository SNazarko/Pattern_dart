class Job {
  void dojob() {
    print('Робота робиться ....');
  }
}

class BugTracker {
  late bool activeSprint;
  bool isActiveSprint() => activeSprint;
  void startSprint() {
    print('Спринт активний');
    activeSprint = true;
  }

  void finishSprint() {
    print('Спринт неактивний');
    activeSprint = false;
  }
}

class Developer {
  void doJobForDeadline(BugTracker bugTracker) {
    if (bugTracker.isActiveSprint()) {
      print('Розробник рішає проблеми...');
    } else {
      print('Розробник читає Хабер...');
    }
  }
}

class WorkFacade {
  Developer developer = Developer();
  Job job = Job();
  BugTracker bugTracker = BugTracker();

  void solveProblems() {
    job.dojob();
    bugTracker.startSprint();
    developer.doJobForDeadline(bugTracker);
  }
}

void main() {
  WorkFacade workFacade = WorkFacade();
  workFacade.solveProblems();
}
