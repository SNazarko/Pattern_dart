// abstract class Developer {
//   void writeCode();
// }
//
// class CppDeveloper implements Developer {
//   @override
//   void writeCode() {
//     print('С++ програміст пише код ...');
//   }
// }
//
// class JavaDeveloper implements Developer {
//   @override
//   void writeCode() {
//     print('Java програміст пише код ...');
//   }
// }
//
// class DeveloperFactory {
//   final Map<String, Developer> developers = Map();
//   Developer? getDeveloperForSpecialty(String specialty) {
//     Developer? developer = developers[specialty];
//     if (developers == null) {
//       switch (specialty) {
//         case 'Java':
//           {
//             print('Нанімаємо нового Java програміста');
//             developer = JavaDeveloper();
//           }
//           break;
//         case 'C++':
//           {
//             print('Нанімаємо нового C++ програміста');
//             developer = CppDeveloper();
//           }
//           break;
//       }
//       developers[specialty] = developer!;
//     }
//     return developer;
//   }
// }
//
// void main() {
//   DeveloperFactory developerFactory = DeveloperFactory();
//   List<Developer> developers = <Developer>[];
//   developers.add(developerFactory.getDeveloperForSpecialty('Java'));
// }
// import 'dart:typed_data';
//
// class EnemyType {
//   final String name;
//   final ByteData imageData;
//
//   const EnemyType(this.name, this.imageData);
// }
//
// class Enemy {
//   static final Map<String, EnemyType> types = {};
//
//   final EnemyType type;
//   int x;
//   int y;
//
//   Enemy(String typeName) : type = getType(typeName);
//
//   void moveTo(int x, int y) {
//     this.x = x;
//     this.y = y;
//   }
//
//   void draw() {
//     print("Drawing ${type.name}...");
//   }
//
//   static EnemyType getType(String typeName) {
//     return types.putIfAbsent(
//         typeName,
//         () => EnemyType(
//               typeName,
//               loadImageData(typeName),
//             ));
//   }
// }
// void main(){
//   final List<Enemy> enemies = [
//     Enemy("Red Avenger"),
//     Enemy("Red Avenger"),
//     Enemy("Blue Stinger"),
//   ];
//   print(enemies)
// }
