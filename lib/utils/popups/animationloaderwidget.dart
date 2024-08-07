import 'package:ecommerceapp/utils/constants/colors.dart';
import 'package:ecommerceapp/utils/constants/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class TAnimationLoaderWidget extends StatelessWidget {
  const TAnimationLoaderWidget(
      {super.key,
      required this.text,
      this.animation,
      this.showAction = false,
      this.actionText,
      this.onActionPressed,
      required this.image});

  final String text;
  final String? animation;
  final String image;
  final bool showAction;
  final String? actionText;
  final VoidCallback? onActionPressed;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          if (animation != null)
            Lottie.asset(animation!,
                width: MediaQuery.of(context).size.width * 0.8,
                fit: BoxFit.contain)
          else if (image != null)
            Image.asset(
              image!,
              width: MediaQuery.of(context).size.width * 0.8,
              fit: BoxFit.contain,
            )
          else
            const SizedBox(
              width: 100,
              height: 100,
              child: CircularProgressIndicator(), // Default spinner
            ),
          const SizedBox(height: TSizes.defaultSpace),
          Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: TSizes.defaultSpace),
          showAction
              ? SizedBox(
                  width: 250,
                  child: OutlinedButton(
                    onPressed: onActionPressed,
                    style:
                        OutlinedButton.styleFrom(backgroundColor: TColors.dark),
                    child: Text(
                      actionText!,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .apply(color: TColors.light),
                    ),
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
