import 'package:ecommerceapp/data/repositories/authentication/authentication_repository.dart';
import 'package:ecommerceapp/features/authentication/screens/passwordconfiguration/resetpasswordscreen.dart';
import 'package:ecommerceapp/utils/constants/imagestrings.dart';
import 'package:ecommerceapp/utils/loaders/loaders.dart';
import 'package:ecommerceapp/utils/popups/fullscreenloader.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class ForgetPasswordController extends GetxController {
  static ForgetPasswordController get instance => Get.find();

  //variables
  final email = TextEditingController();
  GlobalKey<FormState> forgetPasswordFormKey = GlobalKey<FormState>();

  //send Reset password email
  sendPasswordResetEmail() async {
    try {
      TFullScreenLoader.openLoadingDialog(
          'Processing your request...', TImages.loading);
      //form validation
      if (!forgetPasswordFormKey.currentState!.validate()) {
        TFullScreenLoader.stopLoading();
        return;
      }
      //send email to reset password
      await AuthenticationRepository.instance
          .sendPasswordResetEmail(email.text.trim());
      //remove loader
      TFullScreenLoader.stopLoading();
      //show success screen
      TLoaders.successSnackBar(
          title: 'Email Sent',
          message: 'Email link Sent to Reset your Password'.tr);
      //redirect
      Get.to(() => ResetPasswordScreen(email: email.text.trim()));
    } catch (e) {
      //remove loader
      TFullScreenLoader.stopLoading();
      TLoaders.errorSnackBar(title: 'Oh Snap', message: e.toString());
    }
  }

  resendPasswordResetEmail(String email) async {
    try {
      TFullScreenLoader.openLoadingDialog(
          'Processing your request...', TImages.loading);

      //send email to reset password
      await AuthenticationRepository.instance.sendPasswordResetEmail(email);
      //remove loader
      TFullScreenLoader.stopLoading();
      //show success screen
      TLoaders.successSnackBar(
          title: 'Email Sent',
          message: 'Email link Sent to Reset your Password'.tr);
    } catch (e) {
      //remove loader
      TFullScreenLoader.stopLoading();
      TLoaders.errorSnackBar(title: 'Oh Snap', message: e.toString());
    }
  }
}
