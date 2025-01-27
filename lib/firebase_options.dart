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
    apiKey: 'AIzaSyBn5Kag8kQPJMXA5kVNDtQGUAqf6gSuJD4',
    appId: '1:507677257381:web:dafe1b1944d2118cc5e74c',
    messagingSenderId: '507677257381',
    projectId: 'blooddonation-59d58',
    authDomain: 'blooddonation-59d58.firebaseapp.com',
    storageBucket: 'blooddonation-59d58.appspot.com',
    measurementId: 'G-4BKY2EE37L',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBr4Bg1WdkAJbcqiCo9pbhDvkiLdVU6BRM',
    appId: '1:507677257381:android:d858a2cba9ceb064c5e74c',
    messagingSenderId: '507677257381',
    projectId: 'blooddonation-59d58',
    storageBucket: 'blooddonation-59d58.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAkE8ni5eZtm9ivD4utgSLVswlo1bQ0BRk',
    appId: '1:507677257381:ios:7f17ab530c13fe52c5e74c',
    messagingSenderId: '507677257381',
    projectId: 'blooddonation-59d58',
    storageBucket: 'blooddonation-59d58.appspot.com',
    iosBundleId: 'com.example.blooddonation',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAkE8ni5eZtm9ivD4utgSLVswlo1bQ0BRk',
    appId: '1:507677257381:ios:5abccc4c0d21fc2dc5e74c',
    messagingSenderId: '507677257381',
    projectId: 'blooddonation-59d58',
    storageBucket: 'blooddonation-59d58.appspot.com',
    iosBundleId: 'com.example.blooddonation.RunnerTests',
  );
}
