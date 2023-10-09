import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:second_portfolio/features/data/models/github_page_model.dart';
import 'package:second_portfolio/features/data/repositories/iGithub.repository.dart';

class GitHubViewModel {
  final Ref ref;
  final IGithubRepository githubRepository;

  GitHubViewModel(this.ref, this.githubRepository);

  Future<GitHubPageModel> getGitHubPageData() async {
    var gitHubVM = githubRepository.getGitHubPageData();

    return gitHubVM;
  }
}
