import 'package:ecommerceapp/common/widgets/texts/sectionheading.dart';
import 'package:ecommerceapp/features/shop/screens/product_details/widgets/product%20imageslider.dart';
import 'package:ecommerceapp/features/shop/screens/product_details/widgets/productattributes.dart';
import 'package:ecommerceapp/features/shop/screens/product_details/widgets/productmetadata.dart';
import 'package:ecommerceapp/features/shop/screens/product_details/widgets/productreviewscreen.dart';
import 'package:ecommerceapp/features/shop/screens/product_details/widgets/ratingandshare.dart';
import 'package:ecommerceapp/features/shop/screens/product_details/widgets/tbottomaddtocart.dart';
import 'package:ecommerceapp/utils/constants/sizes.dart';
import 'package:ecommerceapp/utils/helpers/helperfunctions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: TBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //product image slider

            TProductImageSlider(),
            //product details

            Padding(
                padding: EdgeInsets.only(
                    right: TSizes.defaultSpace,
                    left: TSizes.defaultSpace,
                    bottom: TSizes.defaultSpace),
                child: Column(
                  children: [
                    //Rating and share Button
                    TRatingAndShare(),

                    //Price,Title,Stack and Brand
                    TProductMetaData(),
                    //Attribute
                    TProductsAttributes(),
                    const SizedBox(height: TSizes.spaceBtwSections),
                    //Checkout Button
                    SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {}, child: Text('Checkout'))),
                    const SizedBox(height: TSizes.spaceBtwSections),
                    //Description
                    const TSectionHeading(
                        title: 'Description', showActionButton: false),
                    const SizedBox(height: TSizes.spaceBtwItems),
                    ReadMoreText(
                      'This is a Product description for Nike shoes,There are more things that can be added but i am just practising ',
                      trimLines: 2,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: 'show more',
                      trimExpandedText: 'less',
                      moreStyle: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w800),
                      lessStyle: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w800),
                    ),
                    //Reviews
                    const Divider(),
                    const SizedBox(height: TSizes.spaceBtwItems),
                    TSectionHeading(
                      title: 'Reviews(199)',
                      showActionButton: false,
                    ),
                    IconButton(
                        icon: const Icon(Iconsax.arrow_right_3, size: 18),
                        onPressed: () => Get.to(() => ProductReviewScreen())),
                    const SizedBox(height: TSizes.spaceBtwSections),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
