import 'package:second_portfolio/features/data/models/welcome_page_model.dart';

abstract class IWelcomeRepository {
  Future<WelcomePageModel> getWelcomePageData();
}
