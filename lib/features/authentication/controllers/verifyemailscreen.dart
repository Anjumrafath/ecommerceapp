import 'package:ecommerceapp/common/widgets/successscreen/successscreen.dart';
import 'package:ecommerceapp/data/repositories/authentication/authentication_repository.dart';

import 'package:ecommerceapp/utils/constants/imagestrings.dart';
import 'package:ecommerceapp/utils/constants/sizes.dart';
import 'package:ecommerceapp/utils/constants/textstrings.dart';
import 'package:ecommerceapp/utils/helpers/helperfunctions.dart';

import 'package:ecommerceapp/features/authentication/controllers/verifyemailcontroller.dart';
import 'package:ecommerceapp/utils/loaders/loaders.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key, this.email});
  final String? email;
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(VerifyEmailController());
    return Scaffold(
      //The close icon in the app bar is used to logout the user and redirect then to the login screen
      //This approach is taken to handle scenarios where the user enters the registration process.
      //and the data is stored,upon reopening the app,it checks if the email is verified.
      //If not verified, the app always navigates to the verification screen
      appBar: AppBar(automaticallyImplyLeading: false, actions: [
        IconButton(
            onPressed: () =>
                Get.offAll(() => AuthenticationRepository.instance.logout()),
            icon: const Icon(Icons.clear)),
      ]),

      body: SingleChildScrollView(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //image
              Image(
                image: AssetImage(TImages.deliveredEmailIllustration),
                width: THelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),
              //Title and subTitle
              Text(
                TTexts.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              Text(email ?? '',
                  style: Theme.of(context).textTheme.labelLarge,
                  textAlign: TextAlign.center),
              const SizedBox(height: TSizes.spaceBtwItems),
              Text(TTexts.confirmEmailSubTitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: TSizes.spaceBtwSections),

              //buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => controller.checkEmailVerificationStatus(),
                  child: const Text(TTexts.tContinue),
                ),
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () => controller.sendEmailVerification(),
                    child: Text(TTexts.resendEmail),
                  )),
            ],
          )),
    );
  }
}
