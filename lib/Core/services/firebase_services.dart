import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';

class FirebaseServices {
  static Future<void> signin(String email, String password) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      log('login Success');
    } catch (e) {
      log("error in Sigin with firebase");
    }
  }

  static Future<void> register(String email, String password) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      log('Add success');
    } catch (e) {
      log("error in register with firebase");
    }
  }
}
