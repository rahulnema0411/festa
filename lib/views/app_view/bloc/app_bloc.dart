import 'package:festa/views/app_view/bloc/app_event.dart';
import 'package:festa/views/app_view/bloc/app_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// The BLoC (Business Logic Component) for managing the state of the application.
class AppBloc extends Bloc<AppEvent, AppState> {
  // Initialize the AppBloc with the initial state set to HomeState.
  AppBloc() : super(HomeState()) {
    // Event handler to load the HomeState.
    void onLoadHomeEvent(LoadHomeEvent event, Emitter<AppState> emit) {
      // Emit a new state representing the HomeState.
      emit(HomeState());
    }

    // Event handler to load the PeopleState.
    void onLoadPeopleEvent(LoadPeopleEvent event, Emitter<AppState> emit) {
      // Emit a new state representing the PeopleState.
      emit(PeopleState());
    }

    // Event handler to load the ProfileState.
    void onLoadProfileEvent(LoadProfileEvent event, Emitter<AppState> emit) {
      // Emit a new state representing the ProfileState.
      emit(ProfileState());
    }

    // Event handler to load the TicketState.
    void onLoadTicketEvent(LoadTicketEvent event, Emitter<AppState> emit) {
      // Emit a new state representing the TicketState.
      emit(TicketState());
    }

    // Register event handlers for each specific event type.
    on<LoadHomeEvent>(onLoadHomeEvent);
    on<LoadPeopleEvent>(onLoadPeopleEvent);
    on<LoadProfileEvent>(onLoadProfileEvent);
    on<LoadTicketEvent>(onLoadTicketEvent);
  }
}
