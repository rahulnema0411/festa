import 'package:festa/views/app_view/bloc/app_event.dart';
import 'package:festa/views/app_view/bloc/app_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(HomeState()) {
    void onLoadHomeEvent(LoadHomeEvent event, Emitter<AppState> emit) {
      emit(HomeState());
    }

    void onLoadPeopleEvent(LoadPeopleEvent event, Emitter<AppState> emit) {
      emit(PeopleState());
    }

    void onLoadProfileEvent(LoadProfileEvent event, Emitter<AppState> emit) {
      emit(ProfileState());
    }

    void onLoadTicketEvent(LoadTicketEvent event, Emitter<AppState> emit) {
      emit(TicketState());
    }

    on<LoadHomeEvent>(onLoadHomeEvent);
    on<LoadPeopleEvent>(onLoadPeopleEvent);
    on<LoadProfileEvent>(onLoadProfileEvent);
    on<LoadTicketEvent>(onLoadTicketEvent);
  }
}
