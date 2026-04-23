
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseServices {
 static Future<User?> signin(String email, String password) async {
    try {
      final result =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      return result.user;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
  static Future<void> register(String email, String password) async {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  static Future<void> signout() async {
    await FirebaseAuth.instance.signOut();
  }
}
