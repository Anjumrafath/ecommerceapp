import 'package:ecommerceapp/data/repositories/authentication/authentication_repository.dart';
import 'package:ecommerceapp/features/authentication/controllers/verifyemailscreen.dart';
import 'package:ecommerceapp/features/personalization/controllers/usercontroller.dart';
import 'package:ecommerceapp/utils/constants/imagestrings.dart';
import 'package:ecommerceapp/utils/loaders/loaders.dart';
import 'package:ecommerceapp/utils/popups/fullscreenloader.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class loginController extends GetxController {
  //variables
  final rememberMe = false.obs;
  final hidePassword = true.obs;
  final localStorage = GetStorage();
  final email = TextEditingController();
  final password = TextEditingController();
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  final userController = Get.put(UserController());

  @override
  void onInit() {
    email.text = localStorage.read('REMEMBER-ME-EMAIL') ?? '';
    password.text = localStorage.read('REMEMBER-ME-PASSWORD') ?? '';

    super.onInit();
  }

//Email and password SignIn
  Future<void> emailAndPasswordSignIn() async {
    try {
      //start loading
      TFullScreenLoader.openLoadingDialog(
        'Logging you in...',
        TImages.loading,
      );

      // //Check Internet Connectivity
      // final isConnected = await NetworkManager.instance.isConnected();
      // if (!isConnected) {
      //   TFullScreenLoader.stopLoading();
      //   return;
      // }

      //form validation

      if (!loginFormKey.currentState!.validate()) {
        TFullScreenLoader.stopLoading();
        return;
      }
      //save data if remember Me is selected
      if (rememberMe.value) {
        localStorage.write('REMEMBER-ME-EMAIL', email.text.trim());
        localStorage.write('REMEMBER-ME-PASSWORD', password.text.trim());
      }
      //login user using Email and password authentication
      final userCredential = await AuthenticationRepository.instance
          .loginWithEmailAndPassword(email.text.trim(), password.text.trim());

      //redirect
      AuthenticationRepository.instance.screenRedirect();
    } catch (e) {
      TFullScreenLoader.stopLoading();
      TLoaders.errorSnackBar(title: 'Oh snap', message: e.toString());
    }
  }

//google sign in Authentication

  Future<void> googleSignIn() async {
    try {
      //start loading
      TFullScreenLoader.openLoadingDialog('Logging you in...', TImages.loading);
      //google authentication

      final userCredentials =
          await AuthenticationRepository.instance.signInWithGoogle();

      //save user record

      await userController.saveUserRecord(userCredentials);
      //remove loader
      TFullScreenLoader.stopLoading();
      //Redirect
      AuthenticationRepository.instance.screenRedirect();
    } catch (e) {
      TFullScreenLoader.stopLoading();
      TLoaders.errorSnackBar(title: 'Oh Snap', message: e.toString());
    }
  }
}
