import 'package:ecommerceapp/common/widgets/texts/brandtitletext.dart';
import 'package:ecommerceapp/utils/constants/colors.dart';
import 'package:ecommerceapp/utils/constants/enums.dart';
import 'package:ecommerceapp/utils/constants/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:iconsax/iconsax.dart';

class TBrandTitleWithVerification extends StatelessWidget {
  const TBrandTitleWithVerification(
      {super.key,
      required this.title,
      this.maxLines = 1,
      this.textAlign = TextAlign.center,
      this.brandTextSize = TextSizes.small,
      this.textColor,
      this.iconColor = TColors.primary});
  final String title;
  final int maxLines;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;
  final Color? textColor, iconColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
            child: TBrandTitleText(
                title: title,
                maxLines: maxLines,
                color: textColor,
                textAlign: textAlign,
                brandTextSize: brandTextSize)),
        const SizedBox(width: TSizes.xs),
        Icon(Iconsax.verify5, color: iconColor, size: TSizes.iconXs),
      ],
    );
  }
}
