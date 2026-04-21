part of 'auth_bloc.dart';

@immutable
sealed class AuthState {}

class AuthInlichationState extends AuthState {}

class AuthLoadingState extends AuthState {}

class AuthsaccesState extends AuthState {}

class AuthFailurestatelogin extends AuthState {
  final String error;

  AuthFailurestatelogin({required this.error});
}

