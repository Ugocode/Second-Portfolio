import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:second_portfolio/features/data/repositories/mockGithub.repository.dart';
import 'package:second_portfolio/features/presentation/viewmodels/github.viewmodel.dart';

//provider for the mock repository;
final gitHubRepositoryProvider = Provider((ref) => MockGithubRepository());

//provider for the viewmodel
final gitHubViewModelProvider = Provider((ref) {
  var repository = ref.read(gitHubRepositoryProvider);

  return GitHubViewModel(ref, repository);
});

//to get the provider
final gitHubProvider = FutureProvider((ref) {
  final gitHubVM = ref.read(gitHubViewModelProvider);

  return gitHubVM.getGitHubPageData();
});
