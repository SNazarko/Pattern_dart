abstract class Developer {
  void writeCode();
}

class JavaDeveloper implements Developer {
  @override
  void writeCode() {
    print('Java розробник пише код ...');
  }
}

class CppDeveloper implements Developer {
  @override
  void writeCode() {
    print('C++ розробник пише код ...');
  }
}

class Team {
  List<Developer> developers = <Developer>[];
  void addDeveloper(Developer developer) {
    developers.add(developer);
  }

  void removeDeveloper(Developer developer) {
    developers.remove(developer);
  }

  void createProject() {
    print('Тім створює команду ....');
    for (Developer developer in developers) {
      developer.writeCode();
    }
  }
}
