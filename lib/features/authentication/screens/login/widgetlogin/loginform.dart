import 'package:ecommerceapp/features/authentication/screens/login/widgetlogin/logincontroller.dart';
import 'package:ecommerceapp/features/authentication/screens/passwordconfiguration/forgetpassword.dart';
import 'package:ecommerceapp/features/authentication/screens/signup/signup.dart';
import 'package:ecommerceapp/navigationmenu.dart';
import 'package:ecommerceapp/utils/constants/sizes.dart';
import 'package:ecommerceapp/utils/constants/textstrings.dart';
import 'package:ecommerceapp/utils/validators/validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(loginController());

    return Form(
        key: controller.loginFormKey,
        child: Padding(
          padding:
              const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
          child: Column(
            children: [
              //email
              TextFormField(
                controller: controller.email,
                validator: (value) => TValidator.validateEmail(value),
                decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: TTexts.email,
                ),
              ),
              const SizedBox(
                height: TSizes.spaceBtwInputFields,
              ),
              //password
              Obx(() => TextFormField(
                    controller: controller.password,
                    obscureText: controller.hidePassword.value,
                    validator: (value) => TValidator.validatePassword(value),
                    decoration: InputDecoration(
                      labelText: TTexts.password,
                      prefixIcon: const Icon(Iconsax.password_check),
                      suffixIcon: IconButton(
                          onPressed: () => controller.hidePassword.value =
                              !controller.hidePassword.value,
                          icon: Icon(controller.hidePassword.value
                              ? Iconsax.eye_slash
                              : Iconsax.eye)),
                    ),
                  )),
              const SizedBox(
                height: TSizes.spaceBtwInputFields / 2,
              ),
              //Remember Me & Forget Password
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //remember me
                  Row(
                    children: [
                      Obx(() => Checkbox(
                          value: controller.rememberMe.value,
                          onChanged: (value) => controller.rememberMe.value =
                              !controller.rememberMe.value)),
                      const Text(TTexts.rememberMe),
                    ],
                  ),
                  //forget password
                  TextButton(
                      onPressed: () => Get.to(() => ForgetPassword()),
                      child: const Text(TTexts.forgotPassword)),
                ],
              ),

              const SizedBox(height: TSizes.spaceBtwSections),
              //Signin button
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () => controller.emailAndPasswordSignIn(),
                      child: Text(TTexts.signIn))),
              const SizedBox(height: TSizes.spaceBtwItems),
              //create Account button
              SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                      onPressed: () => Get.to(() => SignupScreen()),
                      child: Text(TTexts.createAccount))),
            ],
          ),
        ));
  }
}
