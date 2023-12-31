import 'package:flutter/material.dart';
import 'package:second_portfolio/styles/personal_portfolio_icons.dart';

class WebPage extends StatelessWidget {
  static const String route = "/web";
  const WebPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          PersonalPortfolioIcons.web,
          size: 80,
          color: Colors.white,
        ),
        const Text(
          "Visit",
          style: TextStyle(
              fontSize: 100, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        const Text(
          'My Page',
          style: TextStyle(
              fontSize: 100, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        Container(
          width: 300,
          decoration: BoxDecoration(
              color: Colors.lightBlue, borderRadius: BorderRadius.circular(50)),
          child: const Center(
            child: Text(
              'www.ugocode.com',
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
