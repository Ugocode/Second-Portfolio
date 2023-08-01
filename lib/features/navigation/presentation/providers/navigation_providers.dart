import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:second_portfolio/features/navigation/data/models/left_navigation_item.dart';
import 'package:second_portfolio/features/navigation/data/repositories/inavigation.repository.dart';
import 'package:second_portfolio/features/navigation/data/repositories/mock_navigation.repository.dart';
import 'package:second_portfolio/features/navigation/presentation/viewmodels/left_navigation.viewmodel.dart';

//create a navigation provider:
final navigationRepositoryProvider = Provider<INavigationRepository>((ref) {
  return MockNavigationRepository();
});

//lets get the navigation items:
final navigationItemsProvider = Provider<List<LeftNavigationItem>>(
  (ref) {
    return ref.read(navigationRepositoryProvider).getDefaultNavItems();
  },
);

//fo the view model:
final navigationItemsViewModelProvider =
    StateNotifierProvider<LeftNavigationViewModel, List<LeftNavigationItem>>(
  (ref) {
    var items = ref.read(navigationItemsProvider);
    return LeftNavigationViewModel(items, ref);
  },
);
