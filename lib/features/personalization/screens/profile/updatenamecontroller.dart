import 'package:ecommerceapp/data/repositories/user/userrepository.dart';
import 'package:ecommerceapp/features/personalization/controllers/usercontroller.dart';
import 'package:ecommerceapp/features/personalization/screens/profile/widgets/profile.dart';
import 'package:ecommerceapp/utils/constants/imagestrings.dart';
import 'package:ecommerceapp/utils/loaders/loaders.dart';
import 'package:ecommerceapp/utils/popups/fullscreenloader.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

//controller to manage user-related functionality

class UpdateNameController extends GetxController {
  static UpdateNameController get instance => Get.find();
  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final userController = UserController.instance;
  final userRepository = Get.put(UserRepository());
  GlobalKey<FormState> updateUserNameFormKey = GlobalKey<FormState>();

  //init user data when Name Screen appears
  @override
  void onInit() {
    initializeName();
    super.onInit();
  }

  //fetch user record
  Future<void> initializeName() async {
    firstName.text = userController.user.value.firstName;
    lastName.text = userController.user.value.lastName;
  }

  Future<void> updateUserName() async {
    try {
      //start loading
      TFullScreenLoader.openLoadingDialog(
          'We are updating your information...', TImages.loading);
      //form validation
      if (!updateUserNameFormKey.currentState!.validate()) {
        TFullScreenLoader.stopLoading();
        return;
      }

      //update user's first and last name in the Firebase Firestore
      Map<String, dynamic> name = {
        'FirstName': firstName.text.trim(),
        'LastName': lastName.text.trim()
      };
      await userRepository.updateSingleField(name);

      //update the Rx user value
      userController.user.value.firstName = firstName.text.trim();
      userController.user.value.lastName = lastName.text.trim();

      //Remove loader
      TFullScreenLoader.stopLoading();

      //show Success Message
      TLoaders.successSnackBar(
          title: 'Congratualations', message: 'Your Name has been updated..');

      //Move to previous screen
      Get.off(() => const ProfileScreen());
    } catch (e) {
      TFullScreenLoader.stopLoading();
      TLoaders.errorSnackBar(title: 'Oh Snap', message: e.toString());
    }
  }
}
