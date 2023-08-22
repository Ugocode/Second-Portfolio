import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:second_portfolio/features/data/models/twitter_page_model.dart';
import 'package:second_portfolio/features/data/repositories/itwitter.repository.dart';

class TwitterPageViewModel {
  final Ref ref;
  final ITwitterRepository twitterRepository;

  TwitterPageViewModel(this.twitterRepository, this.ref);

  Future<TwitterPageModel> getTwitterPageData() async {
    var twitterdata = await twitterRepository.getTwitterPageData();

    return twitterdata;
  }
}
