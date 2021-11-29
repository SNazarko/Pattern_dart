import 'j_composite_method.dart';

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
  //--------------------Mediator_method--------------------------//
  // SimpleTextChat chat = SimpleTextChat();
  // User admin = Admin(chat: chat, name: "Admin");
  // User user1 = SimpleUser(chat: chat, name: "User1");
  // User user2 = SimpleUser(chat: chat, name: "User2");
  //
  // chat.setAdmin(admin);
  // chat.addUsersToChat(user1);
  // chat.addUsersToChat(user2);
  //
  //  user1.sendMessage("Привіт, я користувач 1!");
  //  user2.sendMessage("Привіт, я користувач 2!");
  // admin.sendMessage("Я Адмін");

  //--------------------Builder_method--------------------------//
  //
  // Director director = Director();
  // Director director2 = Director();
  // director.setWebsiteBuilder(VisitCardWebsiteBuilder());
  // director2.setWebsiteBuilder(EnterpriseWebsiteBuilder());
  // Website website = director.buildWebsite();
  // Website website2 = director2.buildWebsite();
  // print(website);
  // print(website2);
  //
  //--------------------Prototype_method--------------------------//
  //
  // MyCar myCar = MyCar(4, 'Модний кузов', 'Потужний мотор');
  // print(myCar);
  // MyCar cloneMyCar = myCar.clone() as MyCar;
  // print(cloneMyCar);
  // CloneCar factory = CloneCar(myCar);
  // MyCar cloneMyCar2 = factory.cloneMyCar();
  // print(cloneMyCar2);
  //
  //--------------------Composite_method--------------------------//
  // Team team = Team();
  // Developer firstJavaDeveloper = JavaDeveloper();
  // Developer secondJavaDeveloper = JavaDeveloper();
  // Developer cppDeveloper = CppDeveloper();
  //
  // team.addDeveloper(firstJavaDeveloper);
  // team.addDeveloper(secondJavaDeveloper);
  // team.addDeveloper(cppDeveloper);
  //
  // team.createProject();
  //
}
