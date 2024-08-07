import 'package:ecommerceapp/common/widgets/routes/approutes.dart';
import 'package:ecommerceapp/features/authentication/screens/login/login.dart';
import 'package:ecommerceapp/features/authentication/screens/onboarding.dart';
import 'package:ecommerceapp/utils/constants/colors.dart';
import 'package:ecommerceapp/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      title: 'ShoppingApp',
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      getPages: AppRoutes.pages,

      //show Loader
      home: LoginScreen(),
      //  home:
      // const Scaffold(
      //   backgroundColor: TColors.primary,
      //   body: Center(child: CircularProgressIndicator(color: Colors.white)),
    );
  }
}
