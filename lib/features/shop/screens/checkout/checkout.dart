import 'package:ecommerceapp/common/widgets/appbar/appbar.dart';
import 'package:ecommerceapp/common/widgets/successscreen/successscreen.dart';
import 'package:ecommerceapp/features/shop/screens/cart/widgets/cartitems.dart';
import 'package:ecommerceapp/features/shop/screens/cart/widgets/tcouponcode.dart';
import 'package:ecommerceapp/features/shop/screens/checkout/widgets/billingaddresssection.dart';
import 'package:ecommerceapp/features/shop/screens/checkout/widgets/billingamountsection.dart';
import 'package:ecommerceapp/features/shop/screens/checkout/widgets/billingpaymentsection.dart';
import 'package:ecommerceapp/features/shop/screens/home/widgets/roundupcontainer.dart';
import 'package:ecommerceapp/navigationmenu.dart';
import 'package:ecommerceapp/utils/constants/colors.dart';
import 'package:ecommerceapp/utils/constants/imagestrings.dart';
import 'package:ecommerceapp/utils/constants/sizes.dart';
import 'package:ecommerceapp/utils/helpers/helperfunctions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(
          showBackArrow: true,
          title: Text('Order Review',
              style: Theme.of(context).textTheme.headlineSmall)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            //items in card
            CartItems(showAddRemoveButtons: false),
            SizedBox(height: TSizes.spaceBtwSections),
            //coupon textfield
            TCouponCode(),
            SizedBox(height: TSizes.spaceBtwSections),
            //Billing Section
            RoundupContainer(
              showBorder: true,
              padding: EdgeInsets.all(TSizes.md),
              backgroundColor: dark ? TColors.black : TColors.white,
              child: Column(
                children: [
                  //pricing
                  BillingAmountSection(),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  //divider
                  const Divider(),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  //payment methods
                  TBillingPaymentSections(),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  //address
                  BillingAddressSection(),
                ],
              ),
            ),
          ],
        ),
      ),
      //checkout button
      bottomNavigationBar: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: ElevatedButton(
              onPressed: () => Get.to(() => SuccessScreen(
                    image: TImages.successfulpaymenticon,
                    title: 'Payment Successful',
                    subTitle: 'Your item will be shipped soon!',
                    onPressed: () => Get.offAll(() => const NavigationMenu()),
                  )),
              child: Text('Checkout \$256.0'))),
    );
  }
}
