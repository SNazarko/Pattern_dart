enum Cms {
  wordpress,
  alifresco,
}

class Website {
  late String name;
  late Cms cms;
  late int price;
  void setName(String name) {
    this.name = name;
  }

  void setCms(Cms cms) {
    this.cms = cms;
  }

  void setPrice(int price) {
    this.price = price;
  }

  @override
  String toString() {
    return 'Website{name: $name, cms: $cms, price: $price}';
  }
}

abstract class WebsiteBuilder {
  late Website website;

  void createWebsite() {
    website = Website();
  }

  void buildName();
  void buildCms();
  void buildPrice();

  Website getWebsite() => website;
}

class VisitCardWebsiteBuilder extends WebsiteBuilder {
  @override
  void buildCms() {
    website.setName('Visit Card');
  }

  @override
  void buildName() {
    website.setCms(Cms.wordpress);
  }

  @override
  void buildPrice() {
    website.setPrice(500);
  }
}

class EnterpriseWebsiteBuilder extends WebsiteBuilder {
  @override
  void buildCms() {
    website.setName('Enterprise web site');
  }

  @override
  void buildName() {
    website.setCms(Cms.alifresco);
  }

  @override
  void buildPrice() {
    website.setPrice(10000);
  }
}

class Director {
  late WebsiteBuilder builder;
  void setWebsiteBuilder(WebsiteBuilder builder) {
    this.builder = builder;
  }

  Website buildWebsite() {
    builder.createWebsite();
    builder.buildName();
    builder.buildCms();
    builder.buildPrice();

    Website website = builder.getWebsite();
    return website;
  }
}

void main() {
  Director director = Director();
  Director director2 = Director();
  director.setWebsiteBuilder(VisitCardWebsiteBuilder());
  director2.setWebsiteBuilder(EnterpriseWebsiteBuilder());
  Website website = director.buildWebsite();
  Website website2 = director2.buildWebsite();
  print(website);
  print(website2);
}
