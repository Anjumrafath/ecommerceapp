import 'package:ecommerceapp/app.dart';
import 'package:ecommerceapp/data/repositories/authentication/authentication_repository.dart';
import 'package:ecommerceapp/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  //add widgets binding
  WidgetsFlutterBinding.ensureInitialized();
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();
  //init local storage
  await GetStorage.init();
  //await native splash
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
//initialize firebase

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then(
    (FirebaseApp value) => Get.put(AuthenticationRepository()),
  );

//initialize authentication

//load all material design/themes/localization/bindings
  runApp(const MyApp());
}
