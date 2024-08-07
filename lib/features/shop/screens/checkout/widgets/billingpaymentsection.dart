import 'package:ecommerceapp/common/widgets/texts/sectionheading.dart';
import 'package:ecommerceapp/features/shop/screens/home/widgets/roundupcontainer.dart';
import 'package:ecommerceapp/utils/constants/colors.dart';
import 'package:ecommerceapp/utils/constants/imagestrings.dart';
import 'package:ecommerceapp/utils/constants/sizes.dart';
import 'package:ecommerceapp/utils/helpers/helperfunctions.dart';
import 'package:flutter/material.dart';

class TBillingPaymentSections extends StatelessWidget {
  const TBillingPaymentSections({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        TSectionHeading(
          title: 'Payment Methods',
          buttonTitle: 'Change',
          onPressed: () {},
        ),
        const SizedBox(height: TSizes.spaceBtwItems),
        Row(
          children: [
            RoundupContainer(
              width: 60,
              height: 35,
              backgroundColor: THelperFunctions.isDarkMode(context)
                  ? TColors.light
                  : TColors.white,
              padding: const EdgeInsets.all(TSizes.sm),
              child:
                  Image(image: AssetImage(TImages.paypal), fit: BoxFit.contain),
            ),
            const SizedBox(height: TSizes.spaceBtwItems / 2),
            Text('PayPal', style: Theme.of(context).textTheme.bodyLarge),
          ],
        ),
      ],
    );
  }
}
