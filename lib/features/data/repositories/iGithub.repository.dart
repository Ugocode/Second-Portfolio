import 'package:second_portfolio/features/data/models/github_page_model.dart';

abstract class IGithubRepository {
  Future<GitHubPageModel> getGitHubPageData();
}
