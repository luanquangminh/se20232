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
    apiKey: 'AIzaSyAsNWr5-GxZopCGnr2KyPyCQq04FrQm0_8',
    appId: '1:944604512135:web:aa0e3b245ea6ce3b635d22',
    messagingSenderId: '944604512135',
    projectId: 'task-management-apps-2d24f',
    authDomain: 'task-management-apps-2d24f.firebaseapp.com',
    databaseURL: 'https://task-management-apps-2d24f-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'task-management-apps-2d24f.appspot.com',
    measurementId: 'G-WD8BVL8KYH',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDx3dasChtf-sC7bZjBvJ1c9pmMTTGJOjw',
    appId: '1:944604512135:android:72457892468e5bdf635d22',
    messagingSenderId: '944604512135',
    projectId: 'task-management-apps-2d24f',
    databaseURL: 'https://task-management-apps-2d24f-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'task-management-apps-2d24f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDPVx26F1yewI5Xw_Iei3wdQD7pMTaEW4Y',
    appId: '1:944604512135:ios:abc7647bccef09c1635d22',
    messagingSenderId: '944604512135',
    projectId: 'task-management-apps-2d24f',
    databaseURL: 'https://task-management-apps-2d24f-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'task-management-apps-2d24f.appspot.com',
    iosBundleId: 'com.example.taskLqmAppChuan',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDPVx26F1yewI5Xw_Iei3wdQD7pMTaEW4Y',
    appId: '1:944604512135:ios:abc7647bccef09c1635d22',
    messagingSenderId: '944604512135',
    projectId: 'task-management-apps-2d24f',
    databaseURL: 'https://task-management-apps-2d24f-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'task-management-apps-2d24f.appspot.com',
    iosBundleId: 'com.example.taskLqmAppChuan',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAsNWr5-GxZopCGnr2KyPyCQq04FrQm0_8',
    appId: '1:944604512135:web:c2cdaae596200922635d22',
    messagingSenderId: '944604512135',
    projectId: 'task-management-apps-2d24f',
    authDomain: 'task-management-apps-2d24f.firebaseapp.com',
    databaseURL: 'https://task-management-apps-2d24f-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'task-management-apps-2d24f.appspot.com',
    measurementId: 'G-RNVJ43BE23',
  );

}