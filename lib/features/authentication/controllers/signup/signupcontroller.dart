import 'dart:math';

import 'package:ecommerceapp/data/repositories/authentication/authentication_repository.dart';
import 'package:ecommerceapp/data/repositories/user/userrepository.dart';
import 'package:ecommerceapp/features/authentication/models/usermodel.dart';
import 'package:ecommerceapp/features/authentication/screens/signup/verifyemail.dart';
import 'package:ecommerceapp/utils/constants/imagestrings.dart';
import 'package:ecommerceapp/utils/loaders/loaders.dart';
import 'package:ecommerceapp/utils/popups/fullscreenloader.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();
//variables
  final hidePassword = true.obs;
  final privacyPolicy = true.obs;
  final email = TextEditingController();
  final lastName = TextEditingController();
  final username = TextEditingController();
  final password = TextEditingController();
  final firstName = TextEditingController();
  final phoneNumber = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

//signup

  Future<void> signup() async {
    try {
      //start loading
      TFullScreenLoader.openLoadingDialog(
          'We are processing your information...', TImages.loading);
      //check internet connnectivity
      // final isConnected = await NetworkManager.instance.isConnected();
      // if (!isConnected) {
      //   TFullScreenLoader.stopLoading();
      //   return;
      // }

      //form validation
      if (!signupFormKey.currentState!.validate()) {
        TFullScreenLoader.stopLoading();
        return;
      }

      //privacy policy check
      if (!privacyPolicy.value) {
        TLoaders.warningSnackBar(
            title: 'Accept Privacy Policy',
            message:
                'In order to create account, you must have to read and accept the Privacy Policy and Terms of use');
        TFullScreenLoader.stopLoading();
        return;
      }
      //register user in the firebase authentication and save user data in the fiebase
      final userCredential = await AuthenticationRepository.instance
          .registerWithEmailAndPassword(
              email.text.trim(), password.text.trim());

      //save authenticated user data in the firebase firestore
      final newUser = UserModel(
        id: userCredential.user!.uid,
        firstName: firstName.text.trim(),
        lastName: lastName.text.trim(),
        username: username.text.trim(),
        email: email.text.trim(),
        phoneNumber: phoneNumber.text.trim(),
        profilePicture: '',
        addresses: [],
      );
      final userRepository = Get.put(UserRepository());
      await userRepository.saveUserRecord(newUser);
      //show success message
      TLoaders.successSnackBar(
          title: 'Congratualation',
          message: 'Your account has been created! verify email to continue');

      //navigate to verify email screen
      Get.offAll(() => VerifyEmailScreen(email: email.text.trim()));
    } catch (e) {
      //remove loader
      TFullScreenLoader.stopLoading();
    }
    //show some Generic error to the user
    TLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
  }
}
