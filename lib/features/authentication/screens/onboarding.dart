import 'package:ecommerceapp/features/authentication/controllers/onboarding/onboardingcontroller.dart';
import 'package:ecommerceapp/features/authentication/screens/widgets/onboardingdotnavigation.dart';
import 'package:ecommerceapp/features/authentication/screens/widgets/onboardingnextbutton.dart';
import 'package:ecommerceapp/features/authentication/screens/widgets/onboardingpage.dart';
import 'package:ecommerceapp/features/authentication/screens/widgets/onboardingskip.dart';
import 'package:ecommerceapp/utils/constants/colors.dart';
import 'package:ecommerceapp/utils/constants/imagestrings.dart';
import 'package:ecommerceapp/utils/constants/sizes.dart';
import 'package:ecommerceapp/utils/constants/textstrings.dart';
import 'package:ecommerceapp/utils/device/deviceutility.dart';
import 'package:ecommerceapp/utils/helpers/helperfunctions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          //horizontal scrollable pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subtitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subtitle: TTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subtitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          //skip button
          const OnBoardingSkip(),

          //Dot Navigation smoothpageindicator
          const OnBoardingDotNavigation(),

          //circular button
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}
