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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'APIKEY',
    appId: '1:976557541278:web:0b37b439389067fbc0b88f',
    messagingSenderId: '976557541278',
    projectId: 'pixiehollow',
    authDomain: 'pixiehollow.firebaseapp.com',
    storageBucket: 'pixiehollow.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBxHM-U2-NQmvnIWXo9YTChbt4hO9k2wWI',
    appId: '1:976557541278:android:148d9fc67fa7a2d9c0b88f',
    messagingSenderId: '976557541278',
    projectId: 'pixiehollow',
    storageBucket: 'pixiehollow.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCpJDrjJYxknADv1Vo4wVLqJisb7I5WA6I',
    appId: '1:976557541278:ios:d18bb1f0087d6701c0b88f',
    messagingSenderId: '976557541278',
    projectId: 'pixiehollow',
    storageBucket: 'pixiehollow.appspot.com',
    iosClientId: '976557541278-g8ar514e4rvc8fj7u4bf8kurcopaiges.apps.googleusercontent.com',
    iosBundleId: 'in.pixiehollow.pixiehollow',
  );
}
