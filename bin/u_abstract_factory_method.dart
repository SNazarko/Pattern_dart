import 'j_composite_method.dart';

abstract class Developer {
  void writeCode();
}

abstract class Tester {
  void testCode();
}

abstract class ProjectManager {
  void manageProject();
}

abstract class ProjectTeamFactory {
  Developer getDeveloper();
  Tester getTester();
  ProjectManager getProjectManager();
}

class JavaDeveloperBanking implements Developer {
  @override
  void writeCode() {
    print('Java розробник пише java код для банка ...');
  }
}

class QaTesterBanking implements Tester {
  @override
  void testCode() {
    print('QA тестер тестує код для банка ...');
  }
}

class PmBanking implements ProjectManager {
  @override
  void manageProject() {
    print('ProjectManager організовує процес для банка ...');
  }
}

class BankingTeamFactory implements ProjectTeamFactory {
  @override
  Developer getDeveloper() {
    return JavaDeveloperBanking();
  }

  @override
  ProjectManager getProjectManager() {
    return PmBanking();
  }

  @override
  Tester getTester() {
    return QaTesterBanking();
  }
}

class PhpDeveloperWebsite implements Developer {
  @override
  void writeCode() {
    print('Php розробник пише код для вебсайта ...');
  }
}

class ManualTesterWebsite implements Tester {
  @override
  void testCode() {
    print('ManualTester тестує сайт ...');
  }
}

class ProjectManagerWebsite implements ProjectManager {
  @override
  void manageProject() {
    print('ProjectManager організовує роботу вебсайта ...');
  }
}

class WebsiteTeamFactory implements ProjectTeamFactory {
  @override
  Developer getDeveloper() {
    return PhpDeveloperWebsite();
  }

  @override
  ProjectManager getProjectManager() {
    return ProjectManagerWebsite();
  }

  @override
  Tester getTester() {
    return ManualTesterWebsite();
  }
}

void main() {
  ProjectTeamFactory projectTeamFactory = BankingTeamFactory();
  Developer developer = projectTeamFactory.getDeveloper();
  Tester tester = projectTeamFactory.getTester();
  ProjectManager projectManager = projectTeamFactory.getProjectManager();

  developer.writeCode();
  tester.testCode();
  projectManager.manageProject();
}
