import 'package:go_router/go_router.dart';
import 'package:second_portfolio/features/Welcome/presentation/pages/welcome_page.dart';
import 'package:second_portfolio/features/error/presentation/pages/erorr_page.dart';
import 'package:second_portfolio/features/github/presentation/pages/github.page.dart';
import 'package:second_portfolio/features/linkedin/presentation/pages/linkedin.page.dart';
import 'package:second_portfolio/features/presentation/pages/splash_page.dart';
import 'package:second_portfolio/features/website/presentation/pages/web.page.dart';
import 'package:second_portfolio/helpers/utils.dart';
import 'package:second_portfolio/shell/presentation/pages/portfoliomain.page.dart';
import 'package:second_portfolio/features/twitter/presentation/pages/twitter.page.dart';

class AppRoutes {
  static final router = GoRouter(
    initialLocation: SplashPage.route,
    navigatorKey: Utils.mainNav,
    errorBuilder: (context, state) {
      return ErrorPage(errorMessage: state.error.toString());
    },
    //list of all the routes will be placed here:
    routes: [
      GoRoute(
        parentNavigatorKey: Utils.mainNav,
        path: SplashPage.route,
        builder: (context, state) => const SplashPage(),
      ),
      ShellRoute(
          navigatorKey: Utils.tabNav,
          builder: ((context, state, child) {
            // pages get injected here
            return PortfolioMainPage(child: child);
          }),
          routes: [
            // all nested routes go here!
            GoRoute(
                parentNavigatorKey: Utils.tabNav,
                path: WelcomePage.route,
                pageBuilder: (context, state) {
                  return const NoTransitionPage(child: WelcomePage());
                }),
            GoRoute(
                parentNavigatorKey: Utils.tabNav,
                path: TwitterPage.route,
                pageBuilder: (context, state) {
                  return NoTransitionPage(child: TwitterPage());
                }),
            GoRoute(
                parentNavigatorKey: Utils.tabNav,
                path: GitHubPage.route,
                pageBuilder: (context, state) {
                  return const NoTransitionPage(child: GitHubPage());
                }),
            GoRoute(
                parentNavigatorKey: Utils.tabNav,
                path: LinkedInPage.route,
                pageBuilder: (context, state) {
                  return const NoTransitionPage(child: LinkedInPage());
                }),
            GoRoute(
                parentNavigatorKey: Utils.tabNav,
                path: WebPage.route,
                pageBuilder: (context, state) {
                  return const NoTransitionPage(child: WebPage());
                }),
          ])
    ],
  );
}
