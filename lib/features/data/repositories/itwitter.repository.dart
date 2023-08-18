import 'package:second_portfolio/features/data/models/twitter_page_model.dart';

abstract class ITwitterRepository {
  Future<TwitterPageModel> getTwitterPageData();
}
