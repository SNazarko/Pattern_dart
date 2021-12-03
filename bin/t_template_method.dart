class WelcomePage extends WebsiteTemplate {
  @override
  void showPageContent() {
    print('Welcome');
  }
}

class NewsPage extends WebsiteTemplate {
  @override
  void showPageContent() {
    print('News');
  }
}

abstract class WebsiteTemplate {
  void showPage() {
    print('Header');
    showPageContent();
    print('Footer');
  }

  void showPageContent();
}

void main() {
  WelcomePage welcomePage = WelcomePage();
  NewsPage newsPage = NewsPage();
  welcomePage.showPage();
  print('+++++++++++++++++++++++++++++++++++++++');
  newsPage.showPage();
}
