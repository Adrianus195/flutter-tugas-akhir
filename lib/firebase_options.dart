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
    apiKey: 'AIzaSyBQa2Rk4bNYYVC7520Q-pbvqkfISbSZ_F4',
    appId: '1:252851958029:web:47fad34e84a78379e38044',
    messagingSenderId: '252851958029',
    projectId: 'flutter-tugas-akhir',
    authDomain: 'flutter-tugas-akhir.firebaseapp.com',
    storageBucket: 'flutter-tugas-akhir.appspot.com',
    measurementId: 'G-KH8XW645D3',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBxiUSfMSlPrBCW23hdsUpVLhgFX4k8eWw',
    appId: '1:252851958029:android:852349ae934640a7e38044',
    messagingSenderId: '252851958029',
    projectId: 'flutter-tugas-akhir',
    storageBucket: 'flutter-tugas-akhir.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBlyUoeRfui0iEqbz4c93QJmn4ecEhHpow',
    appId: '1:252851958029:ios:13caff628610ec58e38044',
    messagingSenderId: '252851958029',
    projectId: 'flutter-tugas-akhir',
    storageBucket: 'flutter-tugas-akhir.appspot.com',
    iosBundleId: 'com.example.flutterTugasAkhir',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBlyUoeRfui0iEqbz4c93QJmn4ecEhHpow',
    appId: '1:252851958029:ios:374eff471bab81dde38044',
    messagingSenderId: '252851958029',
    projectId: 'flutter-tugas-akhir',
    storageBucket: 'flutter-tugas-akhir.appspot.com',
    iosBundleId: 'com.example.flutterTugasAkhir.RunnerTests',
  );
}
