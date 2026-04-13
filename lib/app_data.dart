import 'package:firebase_auth/firebase_auth.dart';

class AppData {
  static Future<void> login(String email, String password) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      print('login Success');
      print(email);
      print(password);
    } catch (e) {
      print("error");
    }
  }

  static Future<void> signinGoogle() async {
    try {
      await FirebaseAuth.instance.authStateChanges().listen((User? user) {
        if (user == null) {
          print('User is currently signed out!');
        } else {
          print('User is signed in!');
        }
      });
    } catch (e) {
      print("error");
    }
  }

  static Future<void> Register(String email, String password) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      print('Add success');
      print(email);
      print(password);
    } catch (e) {
      print("error");
    }
  }
}
