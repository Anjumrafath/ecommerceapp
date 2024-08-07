import 'package:ecommerceapp/common/widgets/images/tcircularimage.dart';
import 'package:ecommerceapp/common/widgets/texts/product%20title%20text.dart';
import 'package:ecommerceapp/common/widgets/texts/productprice.dart';
import 'package:ecommerceapp/common/widgets/texts/tbrandtitletext.dart';
import 'package:ecommerceapp/features/shop/screens/home/widgets/roundupcontainer.dart';
import 'package:ecommerceapp/utils/constants/colors.dart';
import 'package:ecommerceapp/utils/constants/enums.dart';
import 'package:ecommerceapp/utils/constants/imagestrings.dart';
import 'package:ecommerceapp/utils/constants/sizes.dart';
import 'package:ecommerceapp/utils/helpers/helperfunctions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //price and sale price
        Row(
          children: [
            //sale tag

            RoundupContainer(
                radius: TSizes.sm,
                backgroundColor: TColors.secondary.withOpacity(0.8),
                padding: const EdgeInsets.symmetric(
                    horizontal: TSizes.sm, vertical: TSizes.xs),
                child: Text('25%',
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge!
                        .apply(color: TColors.black))),
            const SizedBox(width: TSizes.spaceBtwItems),

            //price
            Text(
              '\$250',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .apply(decoration: TextDecoration.lineThrough),
            ),
            const SizedBox(width: TSizes.spaceBtwItems),
            ProductPriceText(price: '175', isLarge: true),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 1.5),

        //title
        const TProductTitleText(title: 'Green Nike Sports Shoes'),
        const SizedBox(height: TSizes.spaceBtwItems / 1.5),
        //stock status
        Row(
          children: [
            const TProductTitleText(title: 'Status'),
            const SizedBox(height: TSizes.spaceBtwItems),
            Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 1.5),

        //brand
        Row(
          children: [
            TCircularImage(
              image: TImages.shoesIcon,
              width: 32,
              height: 32,
              overlayColor: dark ? TColors.white : TColors.black,
            ),
            TBrandTitleWithVerification(
              title: 'Nike',
              brandTextSize: TextSizes.medium,
            ),
          ],
        )
      ],
    );
  }
}
