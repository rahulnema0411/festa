import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:festa/views/app_view/bloc/app_bloc.dart';
import 'package:festa/views/app_view/bloc/app_state.dart';
import 'package:festa/views/app_view/widgets/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:festa/views/home_view/home_view.dart';
import 'package:festa/views/people_view/people_view.dart';
import 'package:festa/views/profile_view/profile_view.dart';
import 'package:festa/views/ticket_view/ticket_view.dart';

/// The main application view that manages the overall structure of the app.
class AppView extends StatefulWidget {
  const AppView({Key? key}) : super(key: key);

  @override
  AppViewState createState() => AppViewState();
}

/// The mutable state for the [AppView] widget.
class AppViewState extends State<AppView> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      // Provide the application's Bloc using the BlocProvider.
      create: (context) => AppBloc(),
      child: SafeArea(
        child: Scaffold(
          // The body of the Scaffold widget that displays the current view based on the application state.
          body: BlocBuilder<AppBloc, AppState>(
            builder: (context, state) {
              switch (state.runtimeType) {
                // Display the HomeView when the state is HomeState.
                case HomeState:
                  return const HomeView();
                // Display the ProfileView when the state is ProfileState.
                case ProfileState:
                  return const ProfileView();
                // Display the TicketView when the state is TicketState.
                case TicketState:
                  return const TicketView();
                // Display the PeopleView when the state is PeopleState.
                case PeopleState:
                  return const PeopleView();
                // Default to HomeView if the state is unknown.
                default:
                  return const HomeView();
              }
            },
          ),
          // The bottom navigation bar for navigating between different sections of the app.
          bottomNavigationBar: const BottomNavBar(),
        ),
      ),
    );
  }
}
