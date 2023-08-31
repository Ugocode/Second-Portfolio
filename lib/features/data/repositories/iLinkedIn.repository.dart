import 'package:second_portfolio/features/data/models/linkedin_page_model.dart';

abstract class ILinkedinRepository {
  Future<LindkedInPageModel> getLindinData();
}
