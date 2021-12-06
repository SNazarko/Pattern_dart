abstract class Chat {
  void sendMessage(String message, User user);
}

abstract class User {
  void sendMessage(String message);
  void getMessage(String message);
}

class Admin implements User {
  Admin({required this.chat, required this.name});
  Chat chat;
  String name;

  void setName(String name) {
    this.name = name;
  }

  // String get getName => name;
  String getName() {
    return name;
  }

  @override
  void getMessage(String message) {
    chat.sendMessage(message, this);
  }

  @override
  void sendMessage(String message) {
    print(name + " Oтримання повідомлення: " + message);
  }
}

class SimpleUser implements User {
  SimpleUser({required this.chat, required this.name});
  Chat chat;
  String name;
  void setName(String name) {
    this.name = name;
  }

  String getName() {
    return name;
  }

  @override
  void getMessage(String message) {
    chat.sendMessage(message, this);
  }

  @override
  void sendMessage(String message) {
    print(name + " Отримання повідомлення: " + message);
  }
}

class SimpleTextChat implements Chat {
  late User admin;
  late List<User> users = <User>[];

  void setAdmin(User admin) {
    this.admin = admin;
  }

  void addUsersToChat(User user) {
    users.add(user);
  }

  @override
  void sendMessage(String message, User user) {
    for (User u in users) {
      if (u != user) {
        u.getMessage(message);
      }
    }
    admin.getMessage(message);
  }
}

void main() {
  SimpleTextChat chat = SimpleTextChat();
  User admin = Admin(chat: chat, name: "Admin");
  User user1 = SimpleUser(chat: chat, name: "User1");
  User user2 = SimpleUser(chat: chat, name: "User2");

  chat.setAdmin(admin);
  chat.addUsersToChat(user1);
  chat.addUsersToChat(user2);

  user1.sendMessage("Привіт, я користувач 1!");
  user2.sendMessage("Привіт, я користувач 2!");
  admin.sendMessage("Я Адмін");
}
