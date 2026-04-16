import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthSer {
  static Future<String> signin(String email, String password) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      print('login Success');
      print(email);
      print(password);
      return 'good';
    } catch (e) {
      print("error");
      return 'bad';
    }
  }

  static Future<void> register(String email, String password) async {
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
  ////// GoogLE Sigin In With Google OR any onther Social Media (Insha2 Alla)
  ///
  ///
  // static Future<void> socialSign(){

  // }
}
