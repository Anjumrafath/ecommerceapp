import 'package:ecommerceapp/common/widgets/products/addremovebutton.dart';
import 'package:ecommerceapp/common/widgets/texts/productprice.dart';
import 'package:ecommerceapp/features/shop/screens/cart/widgets/tcartitem.dart';
import 'package:ecommerceapp/utils/constants/imagestrings.dart';
import 'package:ecommerceapp/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CartItems extends StatelessWidget {
  const CartItems({super.key, this.showAddRemoveButtons = true});
  final bool showAddRemoveButtons;
  @override
  Widget build(BuildContext context) {
    return

        //items in cart
        ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 1,
      separatorBuilder: (_, __) =>
          const SizedBox(height: TSizes.spaceBtwSections),
      itemBuilder: (_, index) => Column(
        children: [
          //cart item
          TCartItem(
            imageUrl: TImages.productImage27,
          ),
          TCartItem(
            imageUrl: TImages.productImage36,
          ),
          if (showAddRemoveButtons) SizedBox(height: TSizes.spaceBtwItems),
          //add remove button row with total price
          if (showAddRemoveButtons)
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    //extra space
                    SizedBox(
                      width: 70,
                    ),
                    //Remove and add button
                    TProductQuantityWithAddRemoveButton(),
                  ],
                ),
                ProductPriceText(price: '256'),
              ],
            ),
        ],
      ),
    );
  }
}
