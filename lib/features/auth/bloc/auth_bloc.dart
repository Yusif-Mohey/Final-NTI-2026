import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInlichationState()) {
    on<LoginEvent>((event, emit) async {
      emit(AuthLoadingState());
      try {
        await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: event.email,
          password: event.password,
        );
        emit(AuthsaccesState());
      } catch (e) {
        emit(AutherorrState(error: 'Eroooooorrrrrrrrres'));
      }
    });
  }
}

