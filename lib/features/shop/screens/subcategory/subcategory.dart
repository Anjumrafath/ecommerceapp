import 'package:ecommerceapp/common/widgets/appbar/appbar.dart';
import 'package:ecommerceapp/common/widgets/images/roundedimage.dart';
import 'package:ecommerceapp/common/widgets/products/productcards/tproductcardhorizontal.dart';
import 'package:ecommerceapp/common/widgets/texts/sectionheading.dart';
import 'package:ecommerceapp/utils/constants/imagestrings.dart';
import 'package:ecommerceapp/utils/constants/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text('Sports'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //banner
              TRoundedImage(
                imageUrl: TImages.promoBanner6,
                applyImageRadius: true,
                width: double.infinity,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),
              //sub categories
              Column(
                children: [
                  //heading
                  TSectionHeading(
                    title: 'Sports shirts',
                    onPressed: () {},
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems / 2),
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) =>
                          const SizedBox(width: TSizes.spaceBtwItems),
                      itemBuilder: (context, index) =>
                          const TProductCardHorizontal(
                              imageUrl: TImages.shoesIcon,
                              applyImageRadius: true,
                              title: 'Nike'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
