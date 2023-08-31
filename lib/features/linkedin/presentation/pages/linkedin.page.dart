import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:second_portfolio/features/presentation/providers/linkedin_page_providers.dart';
import 'package:second_portfolio/shared/widgets/error_notification.dart';
import 'package:second_portfolio/styles/personal_portfolio_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkedInPage extends ConsumerWidget {
  static const String route = "/linkedin";
  LinkedInPage({super.key});

  final Uri _url = Uri.parse('https://linkedin.com/Ugochukwu-Obioha');

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final linkedinDataAsync = ref.watch(linkedinProvider);

    return linkedinDataAsync.when(
        loading: () => const Center(
              child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation(Colors.white)),
            ),
        error: (error, stackTrace) => const ErrorNotification(
              message: 'Page not found',
            ),
        data: (linkedinData) {
          return Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                PersonalPortfolioIcons.linkedin,
                size: 80,
                color: Colors.white,
              ),
              Text(
                linkedinData.title,
                style: const TextStyle(
                    fontSize: 100,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Text(
                linkedinData.subTitle,
                style: const TextStyle(
                    fontSize: 100,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Container(
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(50)),
                child: Center(
                  child: GestureDetector(
                    onTap: _launchUrl,
                    child: Text(
                      linkedinData.url,
                      style: const TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white54),
                    ),
                  ),
                ),
              ),
            ],
          ));
        });
  }
}
