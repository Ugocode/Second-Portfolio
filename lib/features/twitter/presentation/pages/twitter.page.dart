import 'package:flutter/material.dart';
import 'package:second_portfolio/styles/personal_portfolio_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class TwitterPage extends StatelessWidget {
  static const String route = "/twitter";
  TwitterPage({super.key});

  final Uri _url = Uri.parse('https://twitter.com/codehaka');

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

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
        GestureDetector(
          onTap: _launchUrl,
          child: Container(
            width: 300,
            decoration: BoxDecoration(
                color: Colors.lightBlue,
                borderRadius: BorderRadius.circular(50)),
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
        ),
      ],
    ));
  }
}
