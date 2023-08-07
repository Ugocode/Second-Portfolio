import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:second_portfolio/features/data/repositories/iwelcome.repository.dart';
import 'package:second_portfolio/features/data/repositories/mockwelcome.repository.dart';

import 'package:second_portfolio/features/presentation/viewmodels/welcome.viewmodel.dart';

final welcomeRepositoryProvider = Provider<IWelcomeRepository>((ref) {
  return MockWelcomeRepository();
});

final welcomeViewModelProvider = Provider<WelcomePageViewModel>((ref) {
  var repository = ref.read(welcomeRepositoryProvider);
  return WelcomePageViewModel(repository, ref);
});

final welcomeProvider = FutureProvider((ref) {
  final welcomeVM = ref.read(welcomeViewModelProvider);
  return welcomeVM.getWelcomePageData();
});
