class ProgramLogger {
  static ProgramLogger? programLogger;
  String logFile = 'Це лог файл ...\n\n';

  static ProgramLogger? getProgramLogger() {
    programLogger ??= ProgramLogger();
    return programLogger;
  }

  ProgramLogger();

  void addLoginInfo(String logInfo) {
    logFile += logInfo + '\n';
  }

  void showLogFile() => print(logFile);
}

void main() {
  ProgramLogger.getProgramLogger()!.addLoginInfo('Перший запис ...!');
  ProgramLogger.getProgramLogger()!.addLoginInfo('Другий запис ...!');
  ProgramLogger.getProgramLogger()!.addLoginInfo('Третій запис ...!');

  ProgramLogger.getProgramLogger()!.showLogFile();
}
