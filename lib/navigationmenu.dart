import 'package:ecommerceapp/features/personalization/screens/settings/settings.dart';
import 'package:ecommerceapp/features/shop/screens/home/home.dart';
import 'package:ecommerceapp/features/shop/screens/store/store.dart';
import 'package:ecommerceapp/features/shop/screens/wishlist/wishlist.dart';
import 'package:ecommerceapp/utils/constants/colors.dart';
import 'package:ecommerceapp/utils/helpers/helperfunctions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);
    final controller = Get.put(NavigationController());
    return Scaffold(
      bottomNavigationBar: GetX<NavigationController>(
        builder: (controller) {
          return NavigationBar(
            height: 80,
            elevation: 0,
            selectedIndex: controller.selectedindex.value,
            onDestinationSelected: (index) =>
                controller.selectedindex.value = index,
            backgroundColor: darkMode ? TColors.black : Colors.white,
            indicatorColor: darkMode
                ? TColors.white.withOpacity(0.1)
                : TColors.black.withOpacity(0.1),
            destinations: const [
              NavigationDestination(icon: Icon(Iconsax.home), label: "Home"),
              NavigationDestination(icon: Icon(Iconsax.shop), label: "Store"),
              NavigationDestination(
                  icon: Icon(Iconsax.heart), label: "WishList"),
              NavigationDestination(icon: Icon(Iconsax.user), label: "Profile"),
            ],
          );
        },
      ),
      body: GetX<NavigationController>(
        builder: (controller) {
          return controller.screens[controller.selectedindex.value];
        },
      ),
    );
  }
}

class NavigationController extends GetxController {
  var selectedindex = 0.obs;
  final screens = [
    HomeScreen(),
    Store(),
    FavoriteScreen(),
    SettingsScreen(),
  ];
}
