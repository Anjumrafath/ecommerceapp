import 'package:ecommerceapp/utils/constants/colors.dart';
import 'package:ecommerceapp/utils/constants/imagestrings.dart';
import 'package:ecommerceapp/utils/helpers/helperfunctions.dart';
import 'package:ecommerceapp/utils/popups/animationloaderwidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TFullScreenLoader {
  //open full screen loading dialog with given text and animation
  static void openLoadingDialog(String text, String animation) {
    showDialog(
        context: Get.overlayContext!,
        barrierDismissible: false,
        builder: (_) => PopScope(
              canPop: false,
              child: Container(
                color: THelperFunctions.isDarkMode(Get.context!)
                    ? TColors.dark
                    : TColors.white,
                width: double.infinity,
                height: double.infinity,
                child: Column(
                  children: [
                    const SizedBox(height: 150),
                    TAnimationLoaderWidget(text: text, image: TImages.loading),
                  ],
                ),
              ),
            ));
  }

  //stop currently open loading dialog
  //this method doesnt return anything
  static stopLoading() {
    if (Navigator.canPop(Get.overlayContext!)) {
      Navigator.of(Get.overlayContext!).pop();
    } //close the dialog using the navigator
  }
}
