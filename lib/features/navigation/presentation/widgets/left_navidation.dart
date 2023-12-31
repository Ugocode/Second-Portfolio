import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:second_portfolio/features/navigation/presentation/providers/navigation_providers.dart';
import 'package:second_portfolio/features/navigation/presentation/widgets/left_navigation_item_tile.dart';

class LeftNavigation extends ConsumerWidget {
  const LeftNavigation({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var navItems = ref.watch(navigationItemsViewModelProvider);

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.white.withOpacity(0.25),
            Colors.transparent,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
            children: List.generate(navItems.length, (index) {
          return LeftNavigationItemTile(item: navItems[index]);
        })),
      ),
    );
  }
}
