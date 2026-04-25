import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter_application_1/Core/services/firebase_services.dart';

import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInlichationState()) {
    on<LoginEvent>((event, emit) async {
      //
      emit(AuthLoadingState());
      try {
        await FirebaseServices.signin(event.email, event.password); //
        emit(AuthsaccesState());
      } on FirebaseAuthException catch (e) {
        if (e.code == 'user-not-found') {
          emit(AuthFailurestatelogin(error: 'البريد غير موجود'));
        } else if (e.code == 'wrong-password') {
          emit(AuthFailurestatelogin(error: 'كلمة المرور غير صحيحة'));
        } else if (e.code == 'invalid-credential') {
          emit(AuthFailurestatelogin(error: 'البريداو كلمة المرور  غير صحيحة'));
        } else {
          emit(AuthFailurestatelogin(error: 'خطأ فى التسجيل'));
        }
      } catch (_) {
        emit(AuthFailurestatelogin(error: 'حصل خطأ غير متوقع'));
      }
    });
  }
}
