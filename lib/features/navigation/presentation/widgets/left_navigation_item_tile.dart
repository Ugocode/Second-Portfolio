import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:second_portfolio/features/navigation/data/models/left_navigation_item.dart';
import 'package:second_portfolio/features/navigation/presentation/providers/navigation_providers.dart';

class LeftNavigationItemTile extends ConsumerWidget {
  const LeftNavigationItemTile({required this.item, super.key});
  final LeftNavigationItem item;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var naveItemColor =
        item.isSelected ? Colors.white : Colors.white.withOpacity(0.25);
    return Container(
      margin: const EdgeInsets.only(top: 20, bottom: 20),
      child: IconButton(
        onPressed: () {
          ref
              .read(navigationItemsViewModelProvider.notifier)
              .selectNavItem(item);
        },
        icon: Icon(
          item.icon,
          color: naveItemColor,
        ),
        iconSize: 30,
      ),
    );
  }
}
