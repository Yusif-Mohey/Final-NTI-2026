import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/services/firebase_services.dart';
import 'package:flutter_application_1/features/auth/bloc/auth_bloc.dart';



class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInlichationState()) {
    on<LoginEvent>((event, emit) async {
      emit(AuthLoadingState());
      try {
        FirebaseServices.signin(event.email, event.password);
        emit(AuthsaccesState());
      } catch (e) {
        emit(AuthFailurestatelogin(error: 'Eroooooorrrrrrrrres'));
      }
    });
    on<signUpEvent>((event, emit) async {
      emit(AuthLoadingState());
      try {
        FirebaseServices.register(event.email, event.password);
        emit(AuthsaccesState());
      } catch (e) {
        emit(AuthFailurestatelogin(error: 'Eroooooorrrrrrrrres'));
      }
    });
  }
}
