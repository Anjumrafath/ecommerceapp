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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA3OAPuesjR9q-l2aK8RyH6Z3I3WVqTqrg',
    appId: '1:467869989839:android:b7408974b4e26967db70ba',
    messagingSenderId: '467869989839',
    projectId: 'ecommerceapp-b783c',
    storageBucket: 'ecommerceapp-b783c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA_Q-8iASF_HU06_Fx-6Iph27prlEub3uI',
    appId: '1:467869989839:ios:c6c70eb5097e905cdb70ba',
    messagingSenderId: '467869989839',
    projectId: 'ecommerceapp-b783c',
    storageBucket: 'ecommerceapp-b783c.appspot.com',
    androidClientId: '467869989839-2ck55uhad6s7hi2i8pnh3vejki9b1vhf.apps.googleusercontent.com',
    iosClientId: '467869989839-3judhn1qtl0dabppdjcr23e5up09rpmh.apps.googleusercontent.com',
    iosBundleId: 'com.example.ecommerceapp',
  );

}