part of 'auth_bloc.dart';

@immutable
sealed class AuthEvent {}

class LoginEvent extends AuthEvent {
  final String email, password;

  LoginEvent({required this.email, required this.password});
}
 

final class signUp extends AuthEvent {
  final String email;
  final String password;
  final String Name;

  signUp({required this.email, required this.password, required this.Name});
}
