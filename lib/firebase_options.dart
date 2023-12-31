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
    apiKey: 'AIzaSyBFGN-Z4CrJhsszNK7S5lpsBoDI-Ey5CTA',
    appId: '1:323362359211:web:5d412890011494d3dab4ee',
    messagingSenderId: '323362359211',
    projectId: 'testostaad',
    authDomain: 'testostaad.firebaseapp.com',
    storageBucket: 'testostaad.appspot.com',
    measurementId: 'G-42Q0NTP2Y1',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBUfBGQlTwJtjcoU8nN0i5QGOjIJXRhVBM',
    appId: '1:323362359211:android:b78712ee7e5b0006dab4ee',
    messagingSenderId: '323362359211',
    projectId: 'testostaad',
    storageBucket: 'testostaad.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA7ipip3iyN28LagJ9slqQ_GYMQFyRYNEw',
    appId: '1:323362359211:ios:00202cfff5be7155dab4ee',
    messagingSenderId: '323362359211',
    projectId: 'testostaad',
    storageBucket: 'testostaad.appspot.com',
    iosBundleId: 'io.inifinitiloom.matchScoreApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA7ipip3iyN28LagJ9slqQ_GYMQFyRYNEw',
    appId: '1:323362359211:ios:21faa603e0a0e6dbdab4ee',
    messagingSenderId: '323362359211',
    projectId: 'testostaad',
    storageBucket: 'testostaad.appspot.com',
    iosBundleId: 'io.inifinitiloom.matchScoreApp.RunnerTests',
  );
}
