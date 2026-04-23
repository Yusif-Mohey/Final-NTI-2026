part of 'auth_bloc.dart';

@immutable
sealed class AuthEvent {}

class LoginEvent extends AuthEvent {
  final String email, password;

  LoginEvent({required this.email, required this.password});
}

final class SignUpEvent extends AuthEvent {
  final String email;
  final String password;
  final String name;

  SignUpEvent({
    required this.email,
    required this.password,
    required this.name,
  });
}

class SignoutEvent extends AuthEvent {
  final String email;
  SignoutEvent({required this.email});
}
