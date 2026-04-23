import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/services/firebase_services.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthintialisState()) {
   on<LoginEvent>((event, emit) async {
  emit(AuthLoadingloginState());

  try {
    final user = await FirebaseServices.signin(
      event.email,
      event.password,
    );

    if (user != null) {
      emit(AuthsaccesloginState(masseg: 'Login success'));
    } else {
      emit(AutherorrloginState('Login failed'));
    }
  } catch (e) {
    emit(AutherorrloginState(e.toString()));
  }
});
    on<SignUpEvent>((event, emit) async {
      emit(SignUpLoading());
      try {
        await FirebaseServices.register(event.email, event.password);

        emit(SignUpSuccess());
      } on FirebaseAuthException catch (e) {
        if (e.code == 'email-already-in-use') {
          emit(SignUpFailure('Email already exists'));
        } else {
          emit(SignUpFailure(e.message ?? 'Error'));
        }
      } catch (e) {
        emit(SignUpFailure('Something went wrong'));
      }
    });
    on<SignoutEvent>((event, emit) async {
      // emit(SignOutLoading());

      try {
        await FirebaseServices.signout();
        emit(SignOutSuccess());
      } catch (e) {
        emit(SignOutFailure(e.toString()));
      }
    });
  }
}


