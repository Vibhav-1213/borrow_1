import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';



 class GoogleSignInProvider extends ChangeNotifier {

  Future<UserCredential?> signInWithGoogle() async {
    FirebaseAuth auth = FirebaseAuth.instance;
    final GoogleSignIn googleSignIn = GoogleSignIn();
    final GoogleSignInAccount? googleUser = await googleSignIn.signIn();

    final GoogleSignInAuthentication googleAuth = await googleUser!.authentication;

    final AuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    final UserCredential userCredential = 
    await auth.signInWithCredential(credential);
    return null;
  }
//   final googleSignIn = GoogleSignIn();

//   GoogleSignInAccount? _user;

//   GoogleSignInAccount get user => _user!;

//   Future googleLogin() async {
//     try {
//       final googleUser = await googleSignIn.signIn();
//     if (googleUser == null) return;
//     _user = googleUser;

//     final googleAuth = await googleUser.authentication;

//     final credential = GoogleAuthProvider.credential(
//       accessToken: googleAuth.accessToken,
//       idToken: googleAuth.idToken,
//     );

//     await FirebaseAuth.instance.signInWithCredential(credential);}

//     catch(e) {
//       print(e.toString());
//     }
    
//     notifyListeners();
//   }

//   Future logout() async {
//     await googleSignIn.disconnect();
//     FirebaseAuth.instance.signOut();
//   }
}