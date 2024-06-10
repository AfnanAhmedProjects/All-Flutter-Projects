import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
//instance of authentication
  final FirebaseAuth auth = FirebaseAuth.instance;
//sign in
  Future<UserCredential> signInWithEmailAndPassword(
      String email1, password1) async {
    try {
      UserCredential userCredential = await auth.signInWithEmailAndPassword(
          email: email1, password: password1);
      return userCredential;
    } on FirebaseAuthException catch (e) {
      throw Exception(e.code);
    }
  }

  //signup

  Future<UserCredential> signupwithEmailandPassword(
      String email, password) async {
    try {
      UserCredential userCredential = await auth.createUserWithEmailAndPassword(
          email: email, password: password);

      return userCredential;
    } on FirebaseAuthException catch (e) {
      throw Exception(e.code);
    }
  }
  //sign out

  Future<void> SignOut() async {
    return await auth.signOut();
  }
}
