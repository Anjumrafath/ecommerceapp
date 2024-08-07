import 'package:ecommerceapp/common/widgets/images/tcircularimage.dart';
import 'package:ecommerceapp/features/shop/screens/home/widgets/roundupcontainer.dart';
import 'package:ecommerceapp/common/widgets/texts/tbrandtitletext.dart';
import 'package:ecommerceapp/utils/constants/colors.dart';
import 'package:ecommerceapp/utils/constants/enums.dart';
import 'package:ecommerceapp/utils/constants/imagestrings.dart';
import 'package:ecommerceapp/utils/constants/sizes.dart';
import 'package:ecommerceapp/utils/helpers/helperfunctions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TBrandCard extends StatelessWidget {
  const TBrandCard({
    super.key,
    required this.showBorder,
    this.onTap,
  });
  final bool showBorder;

  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    final isDark = THelperFunctions.isDarkMode(context);
    final List<String> images = [
      TImages.clothes,
      TImages.jewellery,
      TImages.beauty,
      TImages.electronic
    ];
    return GestureDetector(
        onTap: onTap,
        child: RoundupContainer(
          showBorder: showBorder,
          backgroundColor: Colors.transparent,
          padding: const EdgeInsets.all(TSizes.sm),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //Icon

              Flexible(
                  child: TCircularImage(
                isNetworkImage: false,
                image: TImages.clothes,
                backgroundColor: Colors.transparent,
                overlayColor: isDark ? TColors.white : TColors.black,
              )),

              const SizedBox(width: TSizes.spaceBtwItems / 2),
              //Texts
              //to keep text inside boundaries
              Expanded(
                  child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TBrandTitleWithVerification(
                      title: 'Attrix', brandTextSize: TextSizes.large),
                  Text(
                    '30 products',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ],
              ))
            ],
          ),
        ));
  }
}
