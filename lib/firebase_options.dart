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
    apiKey: 'AIzaSyCTTFZ2fMv4E8aIJ4qVOHvXyq_MHWqOaN8',
    appId: '1:63336261953:web:8c59882df3cfdf781099c0',
    messagingSenderId: '63336261953',
    projectId: 'real-estate-application-88118',
    authDomain: 'real-estate-application-88118.firebaseapp.com',
    storageBucket: 'real-estate-application-88118.appspot.com',
    measurementId: 'G-WSN4W7QMCL',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCNXhCLRRpaXzMzTqOQyrsAOB10m8ljh0k',
    appId: '1:63336261953:android:0cd5201235896d431099c0',
    messagingSenderId: '63336261953',
    projectId: 'real-estate-application-88118',
    storageBucket: 'real-estate-application-88118.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCBx9YsZgjuRofL84IR0fZVvKtHs03ZpSc',
    appId: '1:63336261953:ios:5685d257ff69e3861099c0',
    messagingSenderId: '63336261953',
    projectId: 'real-estate-application-88118',
    storageBucket: 'real-estate-application-88118.appspot.com',
    iosBundleId: 'com.example.realEstateApplication',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCBx9YsZgjuRofL84IR0fZVvKtHs03ZpSc',
    appId: '1:63336261953:ios:5685d257ff69e3861099c0',
    messagingSenderId: '63336261953',
    projectId: 'real-estate-application-88118',
    storageBucket: 'real-estate-application-88118.appspot.com',
    iosBundleId: 'com.example.realEstateApplication',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCTTFZ2fMv4E8aIJ4qVOHvXyq_MHWqOaN8',
    appId: '1:63336261953:web:2794256da57163231099c0',
    messagingSenderId: '63336261953',
    projectId: 'real-estate-application-88118',
    authDomain: 'real-estate-application-88118.firebaseapp.com',
    storageBucket: 'real-estate-application-88118.appspot.com',
    measurementId: 'G-W6B4N65SVM',
  );
}
