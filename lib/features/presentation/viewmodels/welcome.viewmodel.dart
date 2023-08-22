import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:second_portfolio/features/data/models/welcome_page_model.dart';
import 'package:second_portfolio/features/data/repositories/iwelcome.repository.dart';
import 'package:second_portfolio/features/presentation/providers/welcome_page.providers.dart';

class WelcomePageViewModel {
  final Ref ref;
  final IWelcomeRepository welcomeRepository;

  WelcomePageViewModel(this.welcomeRepository, this.ref);

  Future<WelcomePageModel> getWelcomePageData() async {
    var welcomePageData = await welcomeRepository.getWelcomePageData();
    ref.read(greetingsRawListProvider.notifier).state =
        welcomePageData.greetings;
    return welcomePageData;
  }
}
