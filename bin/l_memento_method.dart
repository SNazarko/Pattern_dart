import 'dart:io';

class Project {
  late String version;
  late DateTime data;
  void setVersionAndData(String version) {
    this.version = version;
    data = DateTime.now();
  }

  Save save() => Save(version);
  void load(Save save) {
    version = save.getVersion();
    data = save.getDate();
  }

  @override
  String toString() {
    return 'Project:\n'
        'version: $version,\n'
        'data: $data \n';
  }
}

class Save {
  late final String version;
  late final DateTime date;

  Save(this.version) {
    date = DateTime.now();
  }
  String getVersion() => version;
  DateTime getDate() => date;
}

class GitHabDemo {
  late Save save;
  Save getSave() => save;
  void setSave(Save save) {
    this.save = save;
  }
}

void main() {
  Project project = Project();
  GitHabDemo gitHab = GitHabDemo();
  print('Створили новий проект. version 1.0.0');
  project.setVersionAndData('Version 1.0.0');
  print(project);

  print('push нашу версію на hithab...');
  gitHab.setSave(project.save());

  print('Пишемо поганий код ....');
  Duration duration = Duration(seconds: 5);
  sleep(duration);
  project.setVersionAndData('version 1.1.0');
  print(project);
  print('щось поламалося ...');
  print('Ми відкочуэмося до version 1.0.0');
  project.load(gitHab.getSave());
  print('Інформація після відкату');
  print(project);
}
