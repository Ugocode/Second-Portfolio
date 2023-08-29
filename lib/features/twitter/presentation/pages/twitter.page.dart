import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:second_portfolio/features/presentation/providers/twitter_page.providers.dart';
import 'package:second_portfolio/shared/widgets/error_notification.dart';
import 'package:second_portfolio/styles/personal_portfolio_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class TwitterPage extends ConsumerWidget {
  static const String route = "/twitter";
  TwitterPage({super.key});

  final Uri _url = Uri.parse('https://twitter.com/CodeHacka');

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //watch the provider
    final twitterDataAsync = ref.watch(twitterProvider);

    return twitterDataAsync.when(
        //create the loading:
        loading: () => const Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(Colors.white),
              ),
            ),
        //catch the error incase:
        error: (error, stackTrace) =>
            const ErrorNotification(message: 'Page Not Found'),

        //get the data:
        data: (twitterData) {
          return Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                PersonalPortfolioIcons.twitter,
                size: 80,
                color: Colors.white,
              ),
              Text(
                twitterData.title,
                style: const TextStyle(
                    fontSize: 100,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Text(
                twitterData.subTitle,
                style: const TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white54),
              ),
              GestureDetector(
                onTap: _launchUrl,
                child: Container(
                  width: 300,
                  decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      borderRadius: BorderRadius.circular(50)),
                  child: Center(
                    child: Text(
                      twitterData.url,
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
