import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:second_portfolio/features/Welcome/presentation/widgets/greetings_label.dart';
import 'package:second_portfolio/features/presentation/providers/welcome_page.providers.dart';
import 'package:second_portfolio/shared/widgets/error_notification.dart';
import 'package:second_portfolio/styles/colors.dart';
import 'package:second_portfolio/styles/personal_portfolio_icons.dart';

class WelcomePage extends ConsumerWidget {
  static const String route = "/welcome";
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //watch the providr first
    var welcomeDataAsync = ref.watch(welcomeProvider);

    return welcomeDataAsync.when(

        //circular loading widget
        loading: () => const Center(
                child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation(Colors.white),
            )),

        //catch error if it occurs
        error: (error, stackTrace) =>
            ErrorNotification(message: error.toString()),

        //produce the data
        data: (welcomeData) {
          return Center(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: PersonalPortfolioColors.welcomePrimary,
                                  width: 8),
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: NetworkImage(welcomeData.imgPath),
                                  fit: BoxFit.cover))),
                      const SizedBox(width: 40),
                      const Icon(PersonalPortfolioIcons.wave,
                          size: 90, color: PersonalPortfolioColors.welcomeIcon)
                    ]),
                const GreetingsLabel(),
                Text.rich(
                  TextSpan(
                      style:
                          const TextStyle(fontSize: 100, color: Colors.white),
                      children: [
                        const TextSpan(text: "I'm "),
                        TextSpan(
                            text: welcomeData.name,
                            style:
                                const TextStyle(fontWeight: FontWeight.bold)),
                      ]),
                  textAlign: TextAlign.center,
                ),
                Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(PersonalPortfolioIcons.badge,
                          color: PersonalPortfolioColors.welcomePrimary,
                          size: 80),
                      const SizedBox(width: 20),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(welcomeData.title,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  fontSize: 40, color: Colors.white)),
                          Text(welcomeData.subTitle,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  fontSize: 40, color: Colors.white)),
                        ],
                      )
                    ])
              ]));
        });
  }
}




















// class WelcomePage extends StatelessWidget {
//   static const String route = '/welcome';
//   const WelcomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Row(
//               mainAxisSize: MainAxisSize.min,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Container(
//                     width: 100,
//                     height: 100,
//                     decoration: BoxDecoration(
//                         border: Border.all(
//                             color: PersonalPortfolioColors.welcomePrimary,
//                             width: 8),
//                         shape: BoxShape.circle,
//                         image: const DecorationImage(
//                             image: NetworkImage(
//                                 'https://avatars.githubusercontent.com/u/40001366?s=400&u=3dd3e0563e6e0288c291dcc11cbebc0804e46de8&v=4'),
//                             fit: BoxFit.cover))),
//                 const SizedBox(width: 40),
//                 const Icon(PersonalPortfolioIcons.wave,
//                     size: 90, color: PersonalPortfolioColors.welcomeIcon)
//               ]),
//           const Text(
//             "Hello",
//             style: TextStyle(
//                 fontSize: 100,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.white),
//           ),
//           const Text.rich(
//             TextSpan(
//                 style: TextStyle(fontSize: 100, color: Colors.white),
//                 children: [
//                   TextSpan(text: "I'm "),
//                   TextSpan(
//                       text: 'Ugocode',
//                       style: TextStyle(fontWeight: FontWeight.bold)),
//                 ]),
//             textAlign: TextAlign.center,
//           ),
//           const Row(
//               mainAxisSize: MainAxisSize.min,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Icon(PersonalPortfolioIcons.badge,
//                     color: PersonalPortfolioColors.twitterPrimary, size: 80),
//                 SizedBox(width: 20),
//                 Column(
//                   mainAxisSize: MainAxisSize.min,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text('Mobile and Web Developer (Flutter)',
//                         textAlign: TextAlign.center,
//                         style: TextStyle(fontSize: 40, color: Colors.white)),
//                     Text('Technical Writer',
//                         textAlign: TextAlign.center,
//                         style: TextStyle(fontSize: 40, color: Colors.white)),
//                   ],
//                 ),
//               ]),
//         ],
//       ),
//     );
//   }
// }
