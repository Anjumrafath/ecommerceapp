import 'package:ecommerceapp/common/widgets/layouts/gridlayout.dart';
import 'package:ecommerceapp/common/widgets/products/productcards/productcardverticle.dart';
import 'package:ecommerceapp/common/widgets/texts/sectionheading.dart';
import 'package:ecommerceapp/common/widgets/brands/tbrandshowcase.dart';
import 'package:ecommerceapp/features/shop/models/categorymodel.dart';
import 'package:ecommerceapp/utils/constants/imagestrings.dart';
import 'package:ecommerceapp/utils/constants/sizes.dart';
import 'package:flutter/cupertino.dart';

class CategoryTab3 extends StatelessWidget {
  CategoryTab3({
    super.key,
  });
  final List<String> imageUrls = [
    TImages.productImage53,
    TImages.productImage59,
    TImages.productImage77,
    TImages.productImage6,
    // Add more images as needed
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //brands
              const TBrandShowcase(images: [
                TImages.productImage73,
                TImages.productImage60,
                TImages.productImage61,
              ]),
              const TBrandShowcase(images: [
                TImages.productImage62,
                TImages.productImage71,
                TImages.productImage72,
              ]),
              const SizedBox(height: TSizes.spaceBtwItems),
              //products
              TSectionHeading(
                title: 'You might like',
                onPressed: () {},
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              TGridLayout(
                  itemCount: 4,
                  itemBuilder: (_, index) => TProductCardVertical(
                        imageUrl: imageUrls[index],
                      )),

              const SizedBox(height: TSizes.spaceBtwItems),
            ],
          ),
        ),
      ],
    );
  }
}
