import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:second_portfolio/features/data/models/linkedin_page_model.dart';
import 'package:second_portfolio/features/data/repositories/iLinkedIn.repository.dart';

class LinkedInViewModel {
  final Ref ref;
  final ILinkedinRepository linkedinRepository;

  LinkedInViewModel(this.ref, this.linkedinRepository);

  Future<LindkedInPageModel> getLinkedinPagedata() async {
    var linkedinData = await linkedinRepository.getLindinData();

    return linkedinData;
  }
}
