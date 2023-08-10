import 'package:flutter/material.dart';
import 'package:second_portfolio/styles/personal_portfolio_icons.dart';

class TwitterPage extends StatelessWidget {
  static const String route = "/twitter";
  const TwitterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          PersonalPortfolioIcons.twitter,
          size: 80,
          color: Colors.white,
        ),
        const Text(
          'Follow Me',
          style: TextStyle(
              fontSize: 100, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        const Text(
          'on Twitter',
          style: TextStyle(
              fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white54),
        ),
        Container(
          width: 300,
          decoration: BoxDecoration(
              color: Colors.lightBlue, borderRadius: BorderRadius.circular(50)),
          child: const Center(
            child: Text(
              '@CodeHacka',
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white54),
            ),
          ),
        ),
      ],
    ));
  }
}
