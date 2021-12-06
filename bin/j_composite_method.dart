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

void main() {
  Team team = Team();
  Developer firstJavaDeveloper = JavaDeveloper();
  Developer secondJavaDeveloper = JavaDeveloper();
  Developer cppDeveloper = CppDeveloper();

  team.addDeveloper(firstJavaDeveloper);
  team.addDeveloper(secondJavaDeveloper);
  team.addDeveloper(cppDeveloper);

  team.createProject();
}
