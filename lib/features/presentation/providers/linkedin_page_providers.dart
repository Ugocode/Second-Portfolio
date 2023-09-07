import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:second_portfolio/features/data/repositories/iLinkedIn.repository.dart';
import 'package:second_portfolio/features/data/repositories/mocklinkedin.repository.dart';
import 'package:second_portfolio/features/presentation/viewmodels/linkedIn.viewmodel.dart';

//first we get the linkedinrepo provider
final linkedinRepositoryProvider = Provider<ILinkedinRepository>(
  (ref) => MockLindinRepository(),
);

//second we collect the viewmodel provider
final lindkedinViewModelProvider = Provider<LinkedInViewModel>(
  (ref) {
    var repository = ref.read(linkedinRepositoryProvider);

    return LinkedInViewModel(ref, repository);
  },
);

//third we get the linkedin Provider
final linkedinProvider = FutureProvider((ref) {
  var linkedinVM = ref.read(lindkedinViewModelProvider);
  return linkedinVM.getLinkedinPagedata();
});


//you can see that all the three providers are connceted 