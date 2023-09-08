import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:second_portfolio/features/data/repositories/iwelcome.repository.dart';
import 'package:second_portfolio/features/data/repositories/mockwelcome.repository.dart';
import 'package:second_portfolio/features/presentation/viewmodels/greetings_label.viewmodel.dart';

import 'package:second_portfolio/features/presentation/viewmodels/welcome.viewmodel.dart';

final welcomeRepositoryProvider = Provider<IWelcomeRepository>((ref) {
  return MockWelcomeRepository();
});

final welcomeViewModelProvider = Provider<WelcomePageViewModel>((ref) {
  var repository = ref.read(welcomeRepositoryProvider);
  return WelcomePageViewModel(repository, ref);
});

//provider for he greetings:
final welcomeProvider = FutureProvider((ref) {
  final welcomeVM = ref.read(welcomeViewModelProvider);
  return welcomeVM.getWelcomePageData();
});

// provider for the greetings to appear on the home screen
final greetingsRawListProvider = StateProvider<List<String>>((ref) {
  return [];
});

//this displays the greetings as they changes
final greetingsViewModelProvider =
    StateNotifierProvider<GreetingsViewModel, String>((ref) {
  var greetings = ref.watch(greetingsRawListProvider);
  return GreetingsViewModel(greetings.first, greetings);
});
