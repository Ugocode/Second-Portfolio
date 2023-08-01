import 'package:second_portfolio/features/data/models/welcome_page_model.dart';
import 'package:second_portfolio/features/data/repositories/iwelcome.repository.dart';

class MockWelcomeRepository implements IWelcomeRepository {
  @override
  Future<WelcomePageModel> getWelcomePageData() {
    return Future.delayed(const Duration(seconds: 2), () {
      return WelcomePageModel(
          name: 'Ugocode',
          title: 'Mobile and Web Developer (Flutter)',
          subTitle: 'Technical Writer',
          imgPath:
              'https://avatars.githubusercontent.com/u/40001366?s=400&u=3dd3e0563e6e0288c291dcc11cbebc0804e46de8&v=4',
          greetings: ["hello", "hola", "bonjour", "ciao"]);
    });
  }
}
