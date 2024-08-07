import 'package:ecommerceapp/common/widgets/loginsignupwidgets/formdivider.dart';
import 'package:ecommerceapp/common/widgets/loginsignupwidgets/socialbutton.dart';
import 'package:ecommerceapp/features/authentication/screens/signup/widgetsignup/signupform.dart';
import 'package:ecommerceapp/utils/constants/colors.dart';
import 'package:ecommerceapp/utils/constants/sizes.dart';
import 'package:ecommerceapp/utils/constants/textstrings.dart';
import 'package:ecommerceapp/utils/helpers/helperfunctions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //title
                Text(TTexts.signupTitle,
                    style: Theme.of(context).textTheme.headlineMedium),
                const SizedBox(height: TSizes.spaceBtwSections),
                //Form
                TSignupForm(),
                const SizedBox(height: TSizes.spaceBtwSections),
                //Divider
                TFormDivider(dividerText: TTexts.orSignUpWith.capitalize!),
                const SizedBox(height: TSizes.spaceBtwSections),
                //Social Buttons
                TSocialButton(),
                const SizedBox(height: TSizes.spaceBtwSections),
              ],
            )),
      ),
    );
  }
}
