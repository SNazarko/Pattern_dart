abstract class Project {
  void run();
}

class RealProject implements Project {
  late String _uri;
  void load() {
    print('Скачати проект $_uri ...');
  }

  RealProject(this._uri) {
    load();
  }

  @override
  void run() {
    print('Запустити проект $_uri ...');
  }
}

class ProxyProject implements Project {
  late String _uri;
  late RealProject _realProject = RealProject(_uri);

  ProxyProject(this._uri);

  @override
  void run() {
    if (_realProject == null) {
      _realProject = RealProject(_uri);
    }
    _realProject.run();
  }
}

void main() {
  Project project = ProxyProject('https://github.com/user');
  project.run();
}
