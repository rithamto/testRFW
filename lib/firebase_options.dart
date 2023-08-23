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
    apiKey: 'AIzaSyDFH86WcT7lA23us3RZErvQE6PmNYaBJw8',
    appId: '1:468793200448:web:25e2da959d3846fce534a5',
    messagingSenderId: '468793200448',
    projectId: 'testsupperapp-45870',
    authDomain: 'testsupperapp-45870.firebaseapp.com',
    databaseURL: 'https://testsupperapp-45870-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'testsupperapp-45870.appspot.com',
    measurementId: 'G-Y7LXBN289D',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAlvOmprNiq7UPX2e6-y3DQZkyOazZYO6k',
    appId: '1:468793200448:android:50515d679476a4f9e534a5',
    messagingSenderId: '468793200448',
    projectId: 'testsupperapp-45870',
    databaseURL: 'https://testsupperapp-45870-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'testsupperapp-45870.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBvvhFCvTxnYtOyFwINOxJ5340GhlpwWQc',
    appId: '1:468793200448:ios:9a1903d54478ac5ce534a5',
    messagingSenderId: '468793200448',
    projectId: 'testsupperapp-45870',
    databaseURL: 'https://testsupperapp-45870-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'testsupperapp-45870.appspot.com',
    iosClientId: '468793200448-dvk2r35fu1hamrsei7djav4k7cmr11qh.apps.googleusercontent.com',
    iosBundleId: 'com.example.testrfw',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBvvhFCvTxnYtOyFwINOxJ5340GhlpwWQc',
    appId: '1:468793200448:ios:d33ba96e060caae2e534a5',
    messagingSenderId: '468793200448',
    projectId: 'testsupperapp-45870',
    databaseURL: 'https://testsupperapp-45870-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'testsupperapp-45870.appspot.com',
    iosClientId: '468793200448-dfmcnsnre65o0vsj9kmqnqc55gdhf07d.apps.googleusercontent.com',
    iosBundleId: 'com.example.testrfw.RunnerTests',
  );
}
