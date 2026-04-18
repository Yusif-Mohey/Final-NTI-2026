import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_1/features/services/Authfirebase.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final Authsigninservice authServices;
  AuthBloc(this.authServices) : super(AuthInlichationState()) {
    on<LoginEvent>((event, emit) async {
      emit(AuthLoadingState());
      try {
        await authServices.signIn(event.email ,event.password);
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

class signupBloc extends Bloc<AuthEvent, signupState> {
  final AuthRepository repo;
  signupBloc(this.repo) : super(signupInitialState()) {
    on<signUp>((event, emit) async {
      emit(signupLoadingState());
      try {
        await repo.signup(event.email, event.password);
        emit(signupSusessState());
      } on FirebaseAuthException catch (e) {
        if (e.code == 'email-already-in-use') {
          emit(AuthFailurestate(message: 'الايميل مستخدم بالفعل'));
        } else if (e.code == 'invalid-email') {
          emit(AuthFailurestate(message: " صيغة البريد الإلكتروني غير صحيح"));
        } else if (e.code == 'weak-password') {
          emit(
            AuthFailurestate(
              message: " كلمة المرور ضعيفة جدًا. اختر كلمة أقوح",
            ),
          );
        } else {
          emit(AuthFailurestate(message: 'خطأ فى التسجيل'));
        }
      } catch (_) {
        emit(AuthFailurestate(message: 'حصل خطأ غير متوقع'));
      }
    });
  }
}
