import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:second_portfolio/features/Welcome/presentation/pages/welcome_page.dart';
import 'package:second_portfolio/features/presentation/widgets/splash_loading.dart';
import 'package:second_portfolio/helpers/utils.dart';

import 'package:second_portfolio/styles/colors.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});
  static const String route = '/splash';

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 4), () {
      GoRouter.of(Utils.mainNav.currentContext!).go(WelcomePage.route);
    });

    return const Scaffold(
      backgroundColor: PersonalPortfolioColors.mainBlue,
      body: SplashLoading(message: 'Loading an awesome, \nKick-Ass Profile'),
    );
  }
}
