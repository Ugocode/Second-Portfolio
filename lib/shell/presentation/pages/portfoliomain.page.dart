import 'package:flutter/material.dart';
import 'package:second_portfolio/features/navigation/presentation/widgets/left_navidation.dart';

import 'package:second_portfolio/helpers/utils.dart';
import 'package:second_portfolio/shared/widgets/pagecolor.dart';
import 'package:second_portfolio/styles/colors.dart';

class PortfolioMainPage extends StatelessWidget {
  final Widget child;
  const PortfolioMainPage({super.key, required this.child});
  static const String route = '/main';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: Utils.mainScaffold,
      backgroundColor: PersonalPortfolioColors.webPrimary,
      body: Stack(children: [
        const PageColor(),
        Center(child: child),
        const Align(
          alignment: Alignment.centerLeft,
          child: LeftNavigation(),
        )
      ]),
    );
  }
}
