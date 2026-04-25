part of 'auth_bloc.dart';

@immutable
sealed class AuthState {}

class AuthintialisState extends AuthState {}

class AuthLoadingloginState extends AuthState {}

class AuthsaccesloginState extends AuthState {
  final String masseg;

  AuthsaccesloginState({required this.masseg});
}

class AutherorrloginState extends AuthState {
  final String error;

  AutherorrloginState(this.error);
}
//signup 


class SignUpLoading extends AuthState {}

class SignUpSuccess extends AuthState {}

class SignUpFailure extends AuthState {
  final String message;

  SignUpFailure(this.message);
}

//signout

class SignOutLoading extends AuthState {}

class SignOutSuccess extends AuthState {}

class SignOutFailure extends AuthState {
  final String error;
  SignOutFailure(this.error);
}
