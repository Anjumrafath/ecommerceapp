import 'package:ecommerceapp/features/authentication/controllers/signup/signupcontroller.dart';
import 'package:ecommerceapp/utils/constants/colors.dart';
import 'package:ecommerceapp/utils/constants/sizes.dart';
import 'package:ecommerceapp/utils/constants/textstrings.dart';
import 'package:ecommerceapp/utils/helpers/helperfunctions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TTermsAndConditionsCheckbox extends StatelessWidget {
  const TTermsAndConditionsCheckbox({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = SignupController.instance;
    final dark = THelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
            width: 24,
            height: 24,
            child: Obx(() => Checkbox(
                value: controller.privacyPolicy.value,
                onChanged: (value) => !controller.privacyPolicy.value))),
        const SizedBox(width: TSizes.spaceBtwItems),
        Text.rich(
          TextSpan(children: [
            TextSpan(
              text: '${TTexts.iAgreeTo}',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            TextSpan(
              text: '${TTexts.privacyPolicy}',
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: dark ? TColors.white : TColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor: dark ? TColors.white : TColors.primary,
                  ),
            ),
            TextSpan(
                text: '${TTexts.and}',
                style: Theme.of(context).textTheme.bodySmall),
            TextSpan(
                text: TTexts.termsOfUse,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark ? TColors.white : TColors.primary,
                    )),
          ]),
        ),
      ],
    );
  }
}
