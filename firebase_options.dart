// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAxR96gMlYwG8lzCl0RbpY_RKT8CXjLn18',
    appId: '1:373029872768:web:745d4f8a9570af1ae6b265',
    messagingSenderId: '373029872768',
    projectId: 'signin-d55e3',
    authDomain: 'signin-d55e3.firebaseapp.com',
    storageBucket: 'signin-d55e3.appspot.com',
    measurementId: 'G-XDV88S50T2',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDWNctGsnaDS3bJoGpXnTCT40zuTt4yBGA',
    appId: '1:373029872768:android:029700187968ce26e6b265',
    messagingSenderId: '373029872768',
    projectId: 'signin-d55e3',
    storageBucket: 'signin-d55e3.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD88T_sDX1sSZNuCwCyq4sfXU0Ci32wP1I',
    appId: '1:373029872768:ios:ddc69181f6a0bb8ce6b265',
    messagingSenderId: '373029872768',
    projectId: 'signin-d55e3',
    storageBucket: 'signin-d55e3.appspot.com',
    androidClientId: '373029872768-aj8h3cbmbopfh85one81i3jkt1m9emj0.apps.googleusercontent.com',
    iosClientId: '373029872768-fibvlu0r7hd4sa7duchp2jh5gb422ibe.apps.googleusercontent.com',
    iosBundleId: 'com.example.borrow',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD88T_sDX1sSZNuCwCyq4sfXU0Ci32wP1I',
    appId: '1:373029872768:ios:816d673fb4cfdab2e6b265',
    messagingSenderId: '373029872768',
    projectId: 'signin-d55e3',
    storageBucket: 'signin-d55e3.appspot.com',
    androidClientId: '373029872768-aj8h3cbmbopfh85one81i3jkt1m9emj0.apps.googleusercontent.com',
    iosClientId: '373029872768-u4g746ku1r8qroshk0o0h9nomoqi9631.apps.googleusercontent.com',
    iosBundleId: 'com.example.borrow.RunnerTests',
  );
}
