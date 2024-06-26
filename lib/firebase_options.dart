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
    apiKey: 'AIzaSyCJ4Nsp4Og4qx9dLFUhRNFUW2mp7KxnBfo',
    appId: '1:1020033892015:web:eccac8b2a3afc924a15e5a',
    messagingSenderId: '1020033892015',
    projectId: 'login-register-app-5d484',
    authDomain: 'login-register-app-5d484.firebaseapp.com',
    storageBucket: 'login-register-app-5d484.appspot.com',
    measurementId: 'G-DK7S2Q7QD5',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDyb1mjLmXkWYe3-t_SS3NIHS4Q76WUhaI',
    appId: '1:1020033892015:android:6f8f71bdf4963992a15e5a',
    messagingSenderId: '1020033892015',
    projectId: 'login-register-app-5d484',
    storageBucket: 'login-register-app-5d484.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCMMMAq-7BkD5WPu4PXfzHfedY_URKGJAA',
    appId: '1:1020033892015:ios:1b321184afae49b3a15e5a',
    messagingSenderId: '1020033892015',
    projectId: 'login-register-app-5d484',
    storageBucket: 'login-register-app-5d484.appspot.com',
    iosBundleId: 'com.example.registerScreenFlutter',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCMMMAq-7BkD5WPu4PXfzHfedY_URKGJAA',
    appId: '1:1020033892015:ios:d0a653dca836f131a15e5a',
    messagingSenderId: '1020033892015',
    projectId: 'login-register-app-5d484',
    storageBucket: 'login-register-app-5d484.appspot.com',
    iosBundleId: 'com.example.registerScreenFlutter.RunnerTests',
  );
}
