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
sealed class signupState {}

final class signupInitialState extends signupState {}

final class signupLoadingState extends signupState {
  
}

final class signupSusessState extends signupState {
  // final String message;

  // signupSusessState({required this.message});
}


final class AuthFailurestate extends signupState {
  final String message;

  AuthFailurestate({required this.message});

 
}