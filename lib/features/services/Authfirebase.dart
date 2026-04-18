import 'package:firebase_auth/firebase_auth.dart';

class AuthRepository {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  Future<void>signup(String email ,String password) async{
    await _auth.createUserWithEmailAndPassword(email: email, password: password);
  }
}
class Authsigninservice {
  final FirebaseAuth _user = FirebaseAuth.instance;
  Future<void>signIn(String email ,String password) async{
    await _user.signInWithEmailAndPassword(email: email, password: password);
  }
}
