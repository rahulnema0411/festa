import 'package:festa/constants/color_constants.dart';
import 'package:flutter/material.dart';

class NavBarItem {
  final IconData icon;
  final Function onTap;

  const NavBarItem({
    required this.icon,
    required this.onTap,
  });

  Widget getActiveStateIcon() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          icon,
          color: ColorConstants.secondaryRed,
        ),
        Container(
          height: 4.0,
          width: 16.0,
          decoration: BoxDecoration(
            color: ColorConstants.secondaryRed,
            borderRadius: const BorderRadius.all(
              Radius.circular(4.0),
            ),
          ),
        )
      ],
    );
  }

  Widget getIcon() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          icon,
          color: ColorConstants.primaryGreyLight,
        ),
        Container(
          height: 4.0,
          width: 16.0,
          decoration: const BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.all(
              Radius.circular(4.0),
            ),
          ),
        )
      ],
    );
  }
}
