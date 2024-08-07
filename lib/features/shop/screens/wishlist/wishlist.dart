import 'package:ecommerceapp/common/widgets/appbar/appbar.dart';
import 'package:ecommerceapp/common/widgets/layouts/gridlayout.dart';
import 'package:ecommerceapp/common/widgets/products/productcards/productcardverticle.dart';
import 'package:ecommerceapp/features/shop/screens/home/home.dart';
import 'package:ecommerceapp/features/shop/screens/home/widgets/circularicon.dart';
import 'package:ecommerceapp/utils/constants/imagestrings.dart';
import 'package:ecommerceapp/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class FavoriteScreen extends StatelessWidget {
  FavoriteScreen({super.key});
  final List<String> imageUrls = [
    TImages.productImage31,
    TImages.productImage26,
    TImages.productImage72,
    TImages.productImage56,
    TImages.productImage77,
    TImages.productImage7,

    // Add more images as needed
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: TAppBar(
          title: Text('WishList',
              style: Theme.of(context).textTheme.headlineMedium),
          actions: [
            CircularIcon(
                icon: Iconsax.add, onPressed: () => Get.to(HomeScreen())),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  TGridLayout(
                      itemCount: 6,
                      itemBuilder: (_, index) => TProductCardVertical(
                            imageUrl: imageUrls[index],
                          )),
                ],
              )),
        ));
  }
}
