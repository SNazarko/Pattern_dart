import 'e_chain_of_responsibility_method.dart';
import 'f_command_method.dart';

void main() {
  //-------------------factory_method-------------------------------//
  //
  // final car1 = Car(CarModel.tesla);
  // final car2 = Car(CarModel.bmw);
  // final car3 = Car(CarModel.mercedes);
  // car1.create();
  // car2.create();
  // car3.create();
  //-------------------abstract_factory_method-----------------------//
  //
  // var model = "tesla";
  // late CarFactory modelCar;
  //
  // switch (model) {
  //   case "tesla":
  //     modelCar = ShopTesla();
  //     break;
  //   case "bmw":
  //     modelCar = ShopBMW();
  //     break;
  //   default:
  //     print("No more cars...");
  // }
  // var myCar = modelCar.createCar();
  // myCar.create();
  //-------------------Adapter_method-----------------------//
  //
  // final DatabaseCar databaseCar = AdapterApplicationToDatabaseCar();
  // databaseCar.update();
  // databaseCar.select();
  // databaseCar.remove();
  // databaseCar.insert();
  //-------------------Bridge_method-----------------------//
  //
  // Auto auto1 = Sedan(Audi());
  // Auto auto2 = Sedan(Kia());
  // Auto auto3 = Hatchback(Audi());
  // Auto auto4 = Hatchback(Kia());
  // auto1.showDetails();
  // auto2.showDetails();
  // auto3.showDetails();
  // auto4.showDetails();
  //----------------Сhain_of_responsibility_method----------//
  //
  // Notifier reportNotifier = SimpleReportNotifier(Priority.routine);
  // Notifier emailNotifier = EmailNotifier(Priority.important);
  // Notifier smsNotifier = SmsNotifier(Priority.danger);
  //
  // reportNotifier.setNextNotifier(emailNotifier);
  // reportNotifier.setNextNotifier(smsNotifier);
  //
  // reportNotifier.notifierManager('Все добре', Priority.routine);
  // reportNotifier.notifierManager('Треба додаткова увага!', Priority.important);
  // reportNotifier.notifierManager('Очікуємо великий обвал ...', Priority.danger);
  //
  //----------------Command_method------------------------------------//
  //
  // DatabaseClient databaseClient = DatabaseClient();
  // Developer developer = Developer(
  //   insert: InsertCommand(databaseClient: databaseClient),
  //   update: UpdateCommand(databaseClient: databaseClient),
  //   select: SelectCommand(databaseClient: databaseClient),
  //   delete: DeleteCommand(databaseClient: databaseClient),
  // );
  //
  // developer.insertRecord();
  // developer.selectRecord();
  // developer.updateRecord();
  // developer.deleteRecord();
  //
  //----------------Iterator_method------------------------------------//
}
