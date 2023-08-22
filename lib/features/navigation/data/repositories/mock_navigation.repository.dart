import 'package:second_portfolio/features/Welcome/presentation/pages/welcome_page.dart';
import 'package:second_portfolio/features/github/presentation/pages/github.page.dart';
import 'package:second_portfolio/features/linkedin/presentation/pages/linkedin.page.dart';
import 'package:second_portfolio/features/navigation/data/models/left_navigation_item.dart';
import 'package:second_portfolio/features/navigation/data/repositories/inavigation.repository.dart';
import 'package:second_portfolio/features/website/presentation/pages/web.page.dart';
import 'package:second_portfolio/styles/personal_portfolio_icons.dart';
import 'package:second_portfolio/features/twitter/presentation/pages/twitter.page.dart';

class MockNavigationRepository extends INavigationRepository {
  @override
  List<LeftNavigationItem> getDefaultNavItems() {
    return [
      LeftNavigationItem(
        icon: PersonalPortfolioIcons.user,
        label: 'My Profile',
        route: WelcomePage.route,
        isSelected: false,
      ),
      LeftNavigationItem(
        icon: PersonalPortfolioIcons.twitter,
        label: 'Twitter',
        route: TwitterPage.route,
        isSelected: false,
      ),
      LeftNavigationItem(
        icon: PersonalPortfolioIcons.linkedin,
        label: 'LinkdIn',
        route: LinkedInPage.route,
        isSelected: false,
      ),
      LeftNavigationItem(
        icon: PersonalPortfolioIcons.web,
        label: "Website",
        route: WebPage.route,
        isSelected: false,
      ),
      LeftNavigationItem(
        icon: PersonalPortfolioIcons.github,
        label: "GitHub",
        route: GitHubPage.route,
        isSelected: false,
      ),
    ];
  }
}
