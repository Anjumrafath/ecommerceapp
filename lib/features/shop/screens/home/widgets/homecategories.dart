import 'package:ecommerceapp/common/styles/categoryshimmer.dart';
import 'package:ecommerceapp/features/shop/controllers/categorycontroller.dart';
import 'package:ecommerceapp/features/shop/screens/subcategory/beauty.dart';
import 'package:ecommerceapp/features/shop/screens/subcategory/clothes.dart';
import 'package:ecommerceapp/features/shop/screens/subcategory/decor.dart';
import 'package:ecommerceapp/features/shop/screens/subcategory/electronics.dart';
import 'package:ecommerceapp/features/shop/screens/subcategory/fashion.dart';
import 'package:ecommerceapp/features/shop/screens/subcategory/furniture.dart';
import 'package:ecommerceapp/features/shop/screens/subcategory/toys.dart';
import 'package:ecommerceapp/features/shop/screens/home/widgets/verticalheadingtext.dart';
import 'package:ecommerceapp/features/shop/screens/subcategory/subcategory.dart';
import 'package:ecommerceapp/utils/constants/imagestrings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({super.key});

  @override
  Widget build(BuildContext context) {
    // Create a list of categories with their icons and titles
    final categories = [
      {
        'image': TImages.sportIcon,
        'title': 'Sports',
        'onTap': () => Get.to(() => SubCategoriesScreen())
      },
      {
        'image': TImages.jewelleryIcon,
        'title': 'Fashion',
        'onTap': () => Get.to(() => Fashion())
      },
      {
        'image': TImages.decorIcon,
        'title': 'Decor',
        'onTap': () => Get.to(() => Decor())
      },
      {
        'image': TImages.electronicIcon,
        'title': 'Electronic',
        'onTap': () => Get.to(() => Electronics())
      },
      {
        'image': TImages.cosmeticIcon,
        'title': 'Beauty',
        'onTap': () => Get.to(() => Beauty())
      },
      {
        'image': TImages.toysIcon,
        'title': 'Toys',
        'onTap': () => Get.to(() => Toys())
      },
      {
        'image': TImages.furnitureIcon,
        'title': 'Furniture',
        'onTap': () => Get.to(() => Furniture())
      },
      {
        'image': TImages.clothesIcon,
        'title': 'Clothes',
        'onTap': () => Get.to(() => Clothes())
      },
    ];

    return SizedBox(
      height: 80,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: categories.length,
          //itemCount: categoryController.featuredCategories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            final category = categories[index];
            return TVerticalImageText(
              image: category['image'] as String,
              title: category['title'] as String,
              onTap: category['onTap'] as void Function()?,
            );
          }),
    );
  }
}
