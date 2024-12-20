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
    apiKey: 'AIzaSyDnezWRdL3Vbo3MjTgWgRm2ZAhpaVZCm4s',
    appId: '1:921531927203:web:b6fbd0174142840c268d16',
    messagingSenderId: '921531927203',
    projectId: 'aiesec-7d1b9',
    authDomain: 'aiesec-7d1b9.firebaseapp.com',
    databaseURL: 'https://aiesec-7d1b9-default-rtdb.firebaseio.com',
    storageBucket: 'aiesec-7d1b9.firebasestorage.app',
    measurementId: 'G-KWPTS3EQ11',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDrGdgMlQAq4iBnElHneLzqND_RTVKBmCA',
    appId: '1:921531927203:android:34f183074f5508eb268d16',
    messagingSenderId: '921531927203',
    projectId: 'aiesec-7d1b9',
    databaseURL: 'https://aiesec-7d1b9-default-rtdb.firebaseio.com',
    storageBucket: 'aiesec-7d1b9.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDLc1lpliA86XAi0aWMBnisgnYeYU1bgjg',
    appId: '1:921531927203:ios:9faf45fbec583c87268d16',
    messagingSenderId: '921531927203',
    projectId: 'aiesec-7d1b9',
    databaseURL: 'https://aiesec-7d1b9-default-rtdb.firebaseio.com',
    storageBucket: 'aiesec-7d1b9.firebasestorage.app',
    iosBundleId: 'com.example.aiesecmedina',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDLc1lpliA86XAi0aWMBnisgnYeYU1bgjg',
    appId: '1:921531927203:ios:9faf45fbec583c87268d16',
    messagingSenderId: '921531927203',
    projectId: 'aiesec-7d1b9',
    databaseURL: 'https://aiesec-7d1b9-default-rtdb.firebaseio.com',
    storageBucket: 'aiesec-7d1b9.firebasestorage.app',
    iosBundleId: 'com.example.aiesecmedina',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDnezWRdL3Vbo3MjTgWgRm2ZAhpaVZCm4s',
    appId: '1:921531927203:web:41f848df82ab7eda268d16',
    messagingSenderId: '921531927203',
    projectId: 'aiesec-7d1b9',
    authDomain: 'aiesec-7d1b9.firebaseapp.com',
    databaseURL: 'https://aiesec-7d1b9-default-rtdb.firebaseio.com',
    storageBucket: 'aiesec-7d1b9.firebasestorage.app',
    measurementId: 'G-XWXGRNTE6Y',
  );
}
