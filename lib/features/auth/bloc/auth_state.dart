part of 'auth_bloc.dart';

@immutable


sealed class AuthState {}

class AuthInlichationState extends AuthState {}

class AuthLoadingState extends AuthState {}

class AuthsaccesState extends AuthState {}

class AutherorrState extends AuthState {
  final String error;

  AutherorrState({required this.error});
}
