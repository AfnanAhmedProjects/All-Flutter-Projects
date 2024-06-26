// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyDgjjAV9YLm3taKu1LggKj7l9ELEQM_Nrk',
    appId: '1:365920200900:web:d45658e8e8cca977d88191',
    messagingSenderId: '365920200900',
    projectId: 'loginandsignup-dda37',
    authDomain: 'loginandsignup-dda37.firebaseapp.com',
    storageBucket: 'loginandsignup-dda37.appspot.com',
    measurementId: 'G-0MZNVGPE1F',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCxdXDByfNPbwu1k8Vy7hu7Wz8zkZvF83k',
    appId: '1:365920200900:android:18ae199973d30430d88191',
    messagingSenderId: '365920200900',
    projectId: 'loginandsignup-dda37',
    storageBucket: 'loginandsignup-dda37.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDOXBD2PhZU4lAUbRvGwasZMGMIydQ1hfc',
    appId: '1:365920200900:ios:e0013e4675b7f95cd88191',
    messagingSenderId: '365920200900',
    projectId: 'loginandsignup-dda37',
    storageBucket: 'loginandsignup-dda37.appspot.com',
    iosBundleId: 'com.example.loginandsignup',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDOXBD2PhZU4lAUbRvGwasZMGMIydQ1hfc',
    appId: '1:365920200900:ios:e0013e4675b7f95cd88191',
    messagingSenderId: '365920200900',
    projectId: 'loginandsignup-dda37',
    storageBucket: 'loginandsignup-dda37.appspot.com',
    iosBundleId: 'com.example.loginandsignup',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDgjjAV9YLm3taKu1LggKj7l9ELEQM_Nrk',
    appId: '1:365920200900:web:808fb67bb6b55600d88191',
    messagingSenderId: '365920200900',
    projectId: 'loginandsignup-dda37',
    authDomain: 'loginandsignup-dda37.firebaseapp.com',
    storageBucket: 'loginandsignup-dda37.appspot.com',
    measurementId: 'G-EKDSBG745G',
  );
}
