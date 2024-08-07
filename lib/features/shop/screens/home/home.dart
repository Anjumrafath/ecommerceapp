import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerceapp/common/widgets/appbar/appbar.dart';
import 'package:ecommerceapp/common/widgets/icons/cartcountericon.dart';
import 'package:ecommerceapp/common/widgets/customshapes/circularcontainer.dart';
import 'package:ecommerceapp/common/widgets/customshapes/curvededges.dart';
import 'package:ecommerceapp/common/widgets/layouts/gridlayout.dart';
import 'package:ecommerceapp/common/widgets/products/productcards/productcardverticle.dart';
import 'package:ecommerceapp/common/widgets/customshapes/searchcontainer.dart';

import 'package:ecommerceapp/features/shop/screens/home/widgets/curvededgeswidget.dart';
import 'package:ecommerceapp/features/shop/screens/home/widgets/homeappbar.dart';
import 'package:ecommerceapp/features/shop/screens/home/widgets/homecategories.dart';
import 'package:ecommerceapp/features/shop/screens/home/widgets/primaryheadeercontainer.dart';
import 'package:ecommerceapp/features/shop/screens/home/widgets/promoslider.dart';
import 'package:ecommerceapp/common/widgets/images/roundedimage.dart';
import 'package:ecommerceapp/features/shop/screens/home/widgets/sectionheading.dart';
import 'package:ecommerceapp/features/shop/screens/home/widgets/verticalheadingtext.dart';
import 'package:ecommerceapp/features/shop/screens/store/allproducts/allproducts.dart';
import 'package:ecommerceapp/utils/constants/colors.dart';
import 'package:ecommerceapp/utils/constants/imagestrings.dart';
import 'package:ecommerceapp/utils/constants/sizes.dart';
import 'package:ecommerceapp/utils/constants/textstrings.dart';
import 'package:ecommerceapp/utils/device/deviceutility.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final List<String> imageUrls = [
    TImages.productImage11,
    TImages.productImage37,
    TImages.productImage45,
    TImages.productImage55,
    // Add more images as needed
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
      children: [
        //header
        TPrimaryHeaderContainer(
          child: Column(
            children: [
              //header
              const THomeAppBar(),
              const SizedBox(height: TSizes.spaceBtwSections),
              //searchbar

              TSearchContainer(
                text: 'Search any Item',
              ),
              SizedBox(height: TSizes.spaceBtwSections),

              //categories
              Padding(
                  padding: EdgeInsets.only(left: TSizes.defaultSpace),
                  child: Column(
                    children: [
                      //heading
                      TSectionHeading(
                        title: 'Popular Categories',
                        showActionButton: false,
                        textColor: Colors.white,
                      ),
                      SizedBox(height: TSizes.spaceBtwItems),
//categories
                      HomeCategories(),
                    ],
                  )),
            ],
          ),
        ),
// //Body

        Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TPromoSlider(
                  // banners: [
                  //   TImages.promoBanner1,
                  //   TImages.promoBanner2,
                  //   TImages.promoBanner3,
                  //   TImages.promoBanner4,
                  //   TImages.promoBanner5,
                  // ],
                  ),
              //heading
              TSectionHeading(
                title: 'Popular products',
                onPressed: () => Get.to(() => const AllProducts()),
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              //popular products grid view
              TGridLayout(
                  itemCount: 4,
                  itemBuilder: (_, index) => TProductCardVertical(
                        imageUrl: imageUrls[index],
                      ))
            ],
          ),
        ),
      ],
    )));
  }
}
