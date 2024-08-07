import 'package:ecommerceapp/common/widgets/appbar/appbar.dart';
import 'package:ecommerceapp/common/widgets/products/cart/ratingindicator.dart';
import 'package:ecommerceapp/features/shop/screens/product_details/widgets/toverallproductrating.dart';
import 'package:ecommerceapp/features/shop/screens/product_details/widgets/tratingprogressindicator.dart';
import 'package:ecommerceapp/features/shop/screens/product_details/widgets/userreviewcard.dart';
import 'package:ecommerceapp/utils/constants/colors.dart';
import 'package:ecommerceapp/utils/constants/sizes.dart';
import 'package:ecommerceapp/utils/device/deviceutility.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';

class ProductReviewScreen extends StatelessWidget {
  const ProductReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Appbar
      appBar: TAppBar(
        title: Text('Reviews and Ratings'),
        showBackArrow: true,
      ),

//Body
      body: SingleChildScrollView(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
              'Ratings and reviews are verified and are from people who use the same type of device that you use.'),
          SizedBox(height: TSizes.spaceBtwItems),

          // Overall Product ratings
          TOverallProductRating(),

          TRatingBarIndicator(rating: 3.5),
          Text('12,611', style: Theme.of(context).textTheme.bodySmall),
          //user review list
          UserReviewCard(),
          UserReviewCard(),
          UserReviewCard(),
          UserReviewCard(),
          UserReviewCard(),
        ]),
      ),
    );
  }
}
