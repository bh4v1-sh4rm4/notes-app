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
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBFhFgSxqlWzMp_62oXcqz6Foz0U8H9HLc',
    appId: '1:852338939434:web:f6ee9ac26f969bdee71553',
    messagingSenderId: '852338939434',
    projectId: 'testapp-future-project',
    authDomain: 'testapp-future-project.firebaseapp.com',
    storageBucket: 'testapp-future-project.appspot.com',
    measurementId: 'G-EM4D6C9VJQ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBY691Vy00j0LlFhWNi4jxwMlJ90dgtw1E',
    appId: '1:852338939434:android:152a463af1cd4d8ce71553',
    messagingSenderId: '852338939434',
    projectId: 'testapp-future-project',
    storageBucket: 'testapp-future-project.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyANQCghGKo7XXqJ0nTLdn1n3xaNShH4p1o',
    appId: '1:852338939434:ios:eeef5bdf66fad410e71553',
    messagingSenderId: '852338939434',
    projectId: 'testapp-future-project',
    storageBucket: 'testapp-future-project.appspot.com',
    iosClientId: '852338939434-5q1qtafp5t22l03gpe1a60mb9oqdqpmb.apps.googleusercontent.com',
    iosBundleId: 'com.example.testApp',
  );
}