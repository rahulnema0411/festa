import 'package:festa/views/app_view/bloc/app_bloc.dart';
import 'package:festa/views/app_view/bloc/app_state.dart';
import 'package:festa/views/app_view/widgets/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:festa/views/home_view/home_view.dart';
import 'package:festa/views/people_view/people_view.dart';
import 'package:festa/views/profile_view/profile_view.dart';
import 'package:festa/views/ticket_view/ticket_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppView extends StatefulWidget {
  const AppView({super.key});

  @override
  AppViewState createState() => AppViewState();
}

class AppViewState extends State<AppView> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppBloc(),
      child: SafeArea(
        child: Scaffold(
          body: BlocBuilder<AppBloc, AppState>(
            builder: (context, state) {
              switch (state) {
                case HomeState():
                  return const HomeView();
                case ProfileState():
                  return const ProfileView();
                case TicketState():
                  return const TicketView();
                case PeopleState():
                  return const PeopleView();
                default:
                  return const HomeView();
              }
            },
          ),
          bottomNavigationBar: const BottomNavBar(),
        ),
      ),
    );
  }
}
