import 'package:festa/constants/color_constants.dart';
import 'package:festa/views/app_view/widgets/bottom_nav_bar/bottom_navbar_item.dart';
import 'package:festa/views/app_view/widgets/bottom_nav_bar/nav_bar_item.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  final List<NavBarItem> items;
  final Function onTap;
  final int currentIndex;

  const BottomNavBar(
      {super.key,
      required this.items,
      required this.onTap,
      required this.currentIndex});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  late int currentIndex;

  @override
  void initState() {
    super.initState();
    currentIndex = widget.currentIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      color: Colors.white,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 26.0),
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        decoration: BoxDecoration(
          color: ColorConstants.primaryGrey,
          borderRadius: const BorderRadius.all(
            Radius.circular(20.0),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BottomNavBarItem(
              icon: widget.items[0].getIcon(),
              activeIcon: widget.items[0].getActiveStateIcon(),
              isSelected: currentIndex == 0,
              onTap: () {
                widget.onTap();
                setState(() {
                  currentIndex = 0;
                });
              },
            ),
            BottomNavBarItem(
              icon: widget.items[1].getIcon(),
              activeIcon: widget.items[1].getActiveStateIcon(),
              isSelected: currentIndex == 1,
              onTap: () {
                widget.onTap();
                setState(() {
                  currentIndex = 1;
                });
              },
            ),
            BottomNavBarItem(
              icon: widget.items[2].getIcon(),
              activeIcon: widget.items[2].getActiveStateIcon(),
              isSelected: currentIndex == 2,
              onTap: () {
                widget.onTap();
                setState(() {
                  currentIndex = 2;
                });
              },
            ),
            BottomNavBarItem(
              icon: widget.items[3].getIcon(),
              activeIcon: widget.items[3].getActiveStateIcon(),
              isSelected: currentIndex == 3,
              onTap: () {
                widget.onTap();
                setState(() {
                  currentIndex = 3;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
