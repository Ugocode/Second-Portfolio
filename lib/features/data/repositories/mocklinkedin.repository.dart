import 'package:second_portfolio/features/data/models/linkedin_page_model.dart';
import 'package:second_portfolio/features/data/repositories/iLinkedIn.repository.dart';
import 'package:second_portfolio/styles/personal_portfolio_icons.dart';

class MockLindinRepository implements ILinkedinRepository {
  @override
  Future<LindkedInPageModel> getLindinData() {
    return Future.delayed(const Duration(seconds: 2), () {
      return LindkedInPageModel(
          title: "Let's",
          url: 'on Linkedin',
          linkedInIcon: PersonalPortfolioIcons.linkedin,
          subTitle: 'Connect');
    });
  }
}
