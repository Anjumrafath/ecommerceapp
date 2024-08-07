import 'package:ecommerceapp/common/styles/spacingstyles.dart';
import 'package:ecommerceapp/common/widgets/loginsignupwidgets/formdivider.dart';
import 'package:ecommerceapp/features/authentication/screens/login/widgetlogin/loginform.dart';
import 'package:ecommerceapp/features/authentication/screens/login/widgetlogin/loginheader.dart';
import 'package:ecommerceapp/common/widgets/loginsignupwidgets/socialbutton.dart';
import 'package:ecommerceapp/utils/constants/colors.dart';
import 'package:ecommerceapp/utils/constants/imagestrings.dart';
import 'package:ecommerceapp/utils/constants/sizes.dart';
import 'package:ecommerceapp/utils/constants/textstrings.dart';
import 'package:ecommerceapp/utils/helpers/helperfunctions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Padding(
                padding: TSpacingStyles.paddingWithAppBarHeight,
                child: Column(
                  children: [
                    //logo,title,subtitle
                    const TLoginHeader(),
                    //form
                    const TLoginForm(),
                    //divider
                    TFormDivider(dividerText: TTexts.orSignInWith.capitalize!),
                    const SizedBox(height: TSizes.spaceBtwSections),

                    //footer

                    TSocialButton(),
                  ],
                ))));
  }
}
