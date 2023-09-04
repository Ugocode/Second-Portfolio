import 'package:second_portfolio/features/data/models/github_page_model.dart';
import 'package:second_portfolio/features/data/repositories/iGithub.repository.dart';
import 'package:second_portfolio/styles/personal_portfolio_icons.dart';

class MockGithubRepository implements IGithubRepository {
  @override
  Future<GitHubPageModel> getGitHubPageData() {
    return Future.delayed(const Duration(seconds: 2), () {
      return GitHubPageModel(
          gitHubIcon: PersonalPortfolioIcons.github,
          subTitle: "My Repos",
          title: "Check Out",
          url: " on GitHub");
    });
  }
}
