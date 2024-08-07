import 'package:ecommerceapp/common/widgets/layouts/gridlayout.dart';
import 'package:ecommerceapp/common/widgets/products/productcards/productcardverticle.dart';
import 'package:ecommerceapp/utils/constants/imagestrings.dart';
import 'package:ecommerceapp/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TSortableProducts extends StatelessWidget {
  TSortableProducts({super.key});
  final List<String> imageUrls = [
    TImages.productImage8,
    TImages.productImage9,
    TImages.productImage10,
    TImages.productImage11,
    // Add more images as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //dropdown
        DropdownButtonFormField(
            decoration: InputDecoration(prefixIcon: Icon(Iconsax.sort)),
            items: [
              'Name',
              'Higher Price',
              'Lower price',
              'Sale',
              'Newest',
              'Popularity'
            ]
                .map((option) =>
                    DropdownMenuItem(value: option, child: Text(option)))
                .toList(),
            onChanged: (value) {}),
        const SizedBox(height: TSizes.spaceBtwSections),
        //products
        TGridLayout(
            itemCount: 8,
            itemBuilder: (_, index) => TProductCardVertical(
                  imageUrl: imageUrls[index],
                )),
      ],
    );
  }
}
