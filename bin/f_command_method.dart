class DatabaseClient {
  void insert() {
    print('Вставити запис про клієнта');
  }

  void update() {
    print('Оновити запис про клієнта');
  }

  void select() {
    print('Зчитування запису про клієнта');
  }

  void delete() {
    print('Удалити запис про клієнта');
  }
}

abstract class Command {
  void execute();
}

class InsertCommand implements Command {
  InsertCommand({required this.databaseClient});
  DatabaseClient databaseClient;

  @override
  void execute() {
    databaseClient.insert();
  }
}

class UpdateCommand implements Command {
  UpdateCommand({required this.databaseClient});
  DatabaseClient databaseClient;

  @override
  void execute() {
    databaseClient.update();
  }
}

class SelectCommand implements Command {
  SelectCommand({required this.databaseClient});
  DatabaseClient databaseClient;

  @override
  void execute() {
    databaseClient.select();
  }
}

class DeleteCommand implements Command {
  DeleteCommand({required this.databaseClient});
  DatabaseClient databaseClient;

  @override
  void execute() {
    databaseClient.delete();
  }
}

class Developer {
  Developer({
    required this.insert,
    required this.update,
    required this.select,
    required this.delete,
  });
  Command insert;
  Command update;
  Command select;
  Command delete;
  void insertRecord() {
    insert.execute();
  }

  void updateRecord() {
    update.execute();
  }

  void selectRecord() {
    select.execute();
  }

  void deleteRecord() {
    delete.execute();
  }
}

void main() {
  DatabaseClient databaseClient = DatabaseClient();
  Developer developer = Developer(
    insert: InsertCommand(databaseClient: databaseClient),
    update: UpdateCommand(databaseClient: databaseClient),
    select: SelectCommand(databaseClient: databaseClient),
    delete: DeleteCommand(databaseClient: databaseClient),
  );

  developer.insertRecord();
  developer.selectRecord();
  developer.updateRecord();
  developer.deleteRecord();
}
