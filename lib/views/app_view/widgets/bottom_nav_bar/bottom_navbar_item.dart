import 'package:festa/views/app_view/widgets/bottom_nav_bar/nav_bar_item.dart';
import 'package:flutter/material.dart';

class BottomNavBarItem extends StatelessWidget {
  final NavBarItem navBarItem;
  final bool isSelected;
  final Function onTap;

  const BottomNavBarItem(
      {super.key,
      required this.isSelected,
      required this.onTap,
      required this.navBarItem});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: const EdgeInsets.fromLTRB(0.0, 16.0, 0.0, 0.0),
      onPressed: () {
        onTap();
      },
      icon: isSelected ? navBarItem.getActiveStateIcon() : navBarItem.getIcon(),
    );
  }
}
