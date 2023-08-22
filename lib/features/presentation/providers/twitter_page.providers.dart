import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:second_portfolio/features/data/repositories/itwitter.repository.dart';
import 'package:second_portfolio/features/data/repositories/moctwitter.repository.dart';
import 'package:second_portfolio/features/presentation/viewmodels/twitter.viewmodel.dart';

final twitterRepositoryProvider =
    Provider<ITwitterRepository>((ref) => MockTwitterRepository());

final twitterViewModelProvider = Provider<TwitterPageViewModel>(
  (ref) {
    var repository = ref.read(twitterRepositoryProvider);
    return TwitterPageViewModel(repository, ref);
  },
);

// create twitter page provider:
final twitterProvider = FutureProvider((ref) {
  final twitterVM = ref.read(twitterViewModelProvider);

  return twitterVM.getTwitterPageData();
});
