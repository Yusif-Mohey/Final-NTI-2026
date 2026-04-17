import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/services/firebase_services.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInlichationState()) {
    on<LoginEvent>((event, emit) async {
      emit(AuthLoadingState());
      try {
        FirebaseServices.signin(event.email, event.password);
        emit(AuthsaccesState());
      } catch (e) {
        emit(AutherorrState(error: 'Eroooooorrrrrrrrres'));
      }
    });
  }
}
