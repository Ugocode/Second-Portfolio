import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:second_portfolio/features/presentation/providers/github_page_providers.dart';
import 'package:second_portfolio/shared/widgets/error_notification.dart';
import 'package:second_portfolio/styles/personal_portfolio_icons.dart';

class GitHubPage extends ConsumerWidget {
  static const String route = "/github";
  const GitHubPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final gitHubDataAsync = ref.watch(gitHubProvider);

    return gitHubDataAsync.when(
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
      error: (state, stackTrace) =>
          const ErrorNotification(message: "Page not found"),
      data: (githubData) {
        return Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              PersonalPortfolioIcons.github,
              size: 80,
              color: Colors.white,
            ),
            Text(
              githubData.title,
              style: const TextStyle(
                  fontSize: 100,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Text(
              githubData.subTitle,
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
                child: Text(
                  githubData.url,
                  style: const TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white54),
                ),
              ),
            ),
          ],
        ));
      },
    );
  }
}
