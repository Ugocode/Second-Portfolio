import 'package:second_portfolio/features/data/models/twitter_page_model.dart';
import 'package:second_portfolio/features/data/repositories/itwitter.repository.dart';
import 'package:second_portfolio/styles/personal_portfolio_icons.dart';

class MockTwitterRepository implements ITwitterRepository {
  @override
  Future<TwitterPageModel> getTwitterData() {
    return Future.delayed(const Duration(seconds: 2), () {
      return TwitterPageModel(
          twitterIcon: PersonalPortfolioIcons.twitter,
          title: 'Follow Me',
          subTitle: 'On Twitter',
          handle: '@CodeHacka',
          url: 'www.twitter.com/CodeHacka');
    });
  }
}
