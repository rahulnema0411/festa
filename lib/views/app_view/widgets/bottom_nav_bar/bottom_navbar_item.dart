import 'package:flutter/material.dart';

class BottomNavBarItem extends StatelessWidget {
  final Widget icon;
  final Widget activeIcon;
  final bool isSelected;
  final Function onTap;

  const BottomNavBarItem(
      {super.key,
      required this.icon,
      required this.activeIcon,
      required this.isSelected,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.fromLTRB(0.0, 16.0, 0.0, 0.0),
      onPressed: () {
        onTap();
      },
      icon: isSelected ? activeIcon : icon,
    );
  }
}
