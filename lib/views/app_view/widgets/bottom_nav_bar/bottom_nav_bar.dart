import 'package:festa/constants/color_constants.dart';
import 'package:festa/views/app_view/bloc/app_bloc.dart';
import 'package:festa/views/app_view/bloc/app_event.dart';
import 'package:festa/views/app_view/bloc/app_state.dart';
import 'package:festa/views/app_view/widgets/bottom_nav_bar/bottom_navbar_item.dart';
import 'package:festa/views/app_view/widgets/bottom_nav_bar/nav_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    final AppBloc appBloc = context.read<AppBloc>();
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
              navBarItem: const NavBarItem(icon: Icons.home),
              isSelected: appBloc.state is HomeState,
              onTap: () {
                appBloc.add(LoadHomeEvent());
                setState(() {});
              },
            ),
            BottomNavBarItem(
              navBarItem: const NavBarItem(icon: Icons.people),
              isSelected: appBloc.state is PeopleState,
              onTap: () {
                appBloc.add(LoadPeopleEvent());
                setState(() {});
              },
            ),
            BottomNavBarItem(
              navBarItem: const NavBarItem(icon: Icons.airplane_ticket_rounded),
              isSelected: appBloc.state is TicketState,
              onTap: () {
                appBloc.add(LoadTicketEvent());
                setState(() {});
              },
            ),
            BottomNavBarItem(
              navBarItem: const NavBarItem(icon: Icons.account_box),
              isSelected: appBloc.state is ProfileState,
              onTap: () {
                appBloc.add(LoadProfileEvent());
                setState(() {});
              },
            ),
          ],
        ),
      ),
    );
  }
}
