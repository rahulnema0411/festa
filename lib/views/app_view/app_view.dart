import 'package:festa/views/app_view/widgets/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:festa/views/app_view/widgets/bottom_nav_bar/nav_bar_item.dart';
import 'package:festa/views/home_view/home_view.dart';
import 'package:festa/views/people_view/people_view.dart';
import 'package:festa/views/profile_view/profile_view.dart';
import 'package:festa/views/ticket_view/ticket_view.dart';
import 'package:flutter/material.dart';

class AppView extends StatefulWidget {
  const AppView({super.key});

  @override
  AppViewState createState() => AppViewState();
}

class AppViewState extends State<AppView> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomeView(),
    const PeopleView(),
    const TicketView(),
    const ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _pages[_currentIndex],
        bottomNavigationBar: BottomNavBar(
          currentIndex: _currentIndex,
          items: [
            NavBarItem(
              icon: Icons.home,
              onTap: () {
                setState(() {
                  _currentIndex = 0;
                });
              },
            ),
            NavBarItem(
              icon: Icons.people,
              onTap: () {
                setState(() {
                  _currentIndex = 1;
                });
              },
            ),
            NavBarItem(
              icon: Icons.airplane_ticket,
              onTap: () {
                setState(() {
                  _currentIndex = 2;
                });
              },
            ),
            NavBarItem(
              icon: Icons.contact_mail,
              onTap: () {
                setState(() {
                  _currentIndex = 3;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
