import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerceapp/common/widgets/customshapes/circularcontainer.dart';
import 'package:ecommerceapp/common/widgets/shimmer.dart';
import 'package:ecommerceapp/features/shop/controllers/homecontroller.dart';
import 'package:ecommerceapp/common/widgets/images/roundedimage.dart';
import 'package:ecommerceapp/utils/constants/colors.dart';
import 'package:ecommerceapp/utils/constants/imagestrings.dart';
import 'package:ecommerceapp/utils/constants/sizes.dart';
import 'package:ecommerceapp/utils/helpers/helperfunctions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ecommerceapp/features/shop/controllers/bannercontroller.dart';

class TPromoSlider extends StatelessWidget {
  const TPromoSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    // final controller = Get.put(BannerController());
    // return Obx(() {
    //   //loader
    //   if (controller.isLoading.value)
    //     return const TShimmerEffect(width: double.infinity, height: 190);

    //   //no data found
    //   if (controller.banners.isEmpty) {
    //     return const Center(child: Text('No Data Found!'));
    //   } else {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            // onPageChanged: (index, _) =>
            //     controller.updatePageIndicator(index),
          ),
          items: [
            //  controller.banners
            //     .map(
            //       (banner) => TRoundedImage(
            //         imageUrl: banner.imageUrl,
            //         isNetworkImage: false,
            //         onPressed: () => Get.toNamed(banner.targetScreen),
            //       ),
            //     )
            //     .toList(),
            TRoundedImage(imageUrl: TImages.promoBanner1),
            TRoundedImage(imageUrl: TImages.promoBanner2),
            TRoundedImage(imageUrl: TImages.promoBanner3),
            TRoundedImage(imageUrl: TImages.promoBanner4),
            TRoundedImage(imageUrl: TImages.promoBanner5),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems),
        Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              for (int i = 0; i < 5; i++)
                TCircularContainer(
                  width: 20,
                  height: 4,
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  backgroundColor: dark
                      // controller.carousalCurrentIndex.value == i
                      ? TColors.primary
                      : TColors.grey,
                ),
            ],
          ),
        ),
      ],
    );
  } //if else
}
//     );
//   }
// }
