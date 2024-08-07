import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerceapp/common/widgets/routes/troutes.dart';
import 'package:ecommerceapp/features/authentication/controllers/verifyemailscreen.dart';
import 'package:ecommerceapp/features/authentication/screens/login/login.dart';
import 'package:ecommerceapp/features/authentication/screens/onboarding.dart';
import 'package:ecommerceapp/features/authentication/screens/passwordconfiguration/forgetpassword.dart';
import 'package:ecommerceapp/features/authentication/screens/signup/signup.dart';
import 'package:ecommerceapp/features/personalization/screens/address/address.dart';
import 'package:ecommerceapp/features/personalization/screens/profile/widgets/profile.dart';
import 'package:ecommerceapp/features/personalization/screens/settings/settings.dart';
import 'package:ecommerceapp/features/shop/screens/cart/cart.dart';
import 'package:ecommerceapp/features/shop/screens/checkout/checkout.dart';
import 'package:ecommerceapp/features/shop/screens/home/home.dart';
import 'package:ecommerceapp/features/shop/screens/order/order.dart';
import 'package:ecommerceapp/features/shop/screens/product_details/widgets/productreviewscreen.dart';
import 'package:ecommerceapp/features/shop/screens/store/store.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class AppRoutes {
  static final pages = [
    GetPage(name: TRoutes.home, page: () => HomeScreen()),
    GetPage(name: TRoutes.store, page: () => const Store()),
    // GetPage(name:TRoutes.favorites,page:()=>const FavouriteScreen()),
    GetPage(name: TRoutes.settings, page: () => SettingsScreen()),
    GetPage(
        name: TRoutes.productReviews, page: () => const ProductReviewScreen()),
    GetPage(name: TRoutes.order, page: () => const OrderScreen()),
    GetPage(name: TRoutes.checkout, page: () => const CheckoutScreen()),
    GetPage(name: TRoutes.cart, page: () => const CartScreen()),
    GetPage(name: TRoutes.userProfile, page: () => const ProfileScreen()),
    GetPage(name: TRoutes.userAddress, page: () => const UserAddressScreen()),
    GetPage(name: TRoutes.signup, page: () => const SignupScreen()),
    GetPage(name: TRoutes.verifyEmail, page: () => const VerifyEmailScreen()),
    GetPage(name: TRoutes.signIn, page: () => const LoginScreen()),
    GetPage(name: TRoutes.forgetPassword, page: () => const ForgetPassword()),
    GetPage(name: TRoutes.onBoarding, page: () => const OnBoardingScreen()),
  ];
}
