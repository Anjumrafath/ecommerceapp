// import 'package:ecommerceapp/common/widgets/appbar/appbar.dart';
// import 'package:ecommerceapp/common/widgets/icons/cartcountericon.dart';
// import 'package:ecommerceapp/common/widgets/layouts/gridlayout.dart';
// import 'package:ecommerceapp/common/widgets/customshapes/searchcontainer.dart';
// import 'package:ecommerceapp/common/widgets/appbar/tabbar.dart';
// import 'package:ecommerceapp/common/widgets/images/tcircularimage.dart';
// import 'package:ecommerceapp/common/widgets/texts/sectionheading.dart';
// import 'package:ecommerceapp/features/shop/controllers/categorycontroller.dart';
// import 'package:ecommerceapp/features/shop/screens/brand/allbrands.dart';
// import 'package:ecommerceapp/features/shop/screens/home/widgets/roundupcontainer.dart';
// import 'package:ecommerceapp/common/widgets/brands/brandcard.dart';
// import 'package:ecommerceapp/common/widgets/brands/tbrandshowcase.dart';
// import 'package:ecommerceapp/common/widgets/texts/tbrandtitletext.dart';
// import 'package:ecommerceapp/features/shop/screens/store/widgets/tcategorytab.dart';

// import 'package:ecommerceapp/utils/constants/colors.dart';
// import 'package:ecommerceapp/utils/constants/enums.dart';
// import 'package:ecommerceapp/utils/constants/imagestrings.dart';
// import 'package:ecommerceapp/utils/constants/imagestrings.dart';
// import 'package:ecommerceapp/utils/constants/imagestrings.dart';
// import 'package:ecommerceapp/utils/constants/sizes.dart';
// import 'package:ecommerceapp/utils/helpers/helperfunctions.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:get/get.dart';

// class Store extends StatelessWidget {
//   const Store({super.key});

//   @override
//   Widget build(BuildContext context) {
//   //  final categories = CategoryController.instance.featuredCategories;
    
//       //length: categories.length,
//       //appbar
//       return Scaffold(
//         appBar: TAppBar(
//           title:
//               Text('Store', style: Theme.of(context).textTheme.headlineMedium),
//           actions: [
//             TCartCounterIcon(onPressed: () {}),
//           ],
//         ),
//         body: NestedScrollView(
//           //header
//           headerSliverBuilder: (_, innerBoxIsScrolled) {
//             return [
//               SliverAppBar(
//                 automaticallyImplyLeading: false,
//                 pinned: true,
//                 floating: true,
//                 backgroundColor: THelperFunctions.isDarkMode(context)
//                     ? TColors.black
//                     : TColors.white,
//                 expandedHeight: 440,
//                 flexibleSpace: Padding(
//                   padding: EdgeInsets.all(TSizes.defaultSpace),
//                   child: ListView(
//                     shrinkWrap: true,
//                     physics: NeverScrollableScrollPhysics(),
//                     children: [
//                       //searchbar
//                       SizedBox(height: TSizes.spaceBtwItems),
//                       TSearchContainer(
//                         text: 'Search in Store',
//                         showBorder: true,
//                         showBackground: false,
//                         padding: EdgeInsets.zero,
//                       ),
//                       SizedBox(height: TSizes.spaceBtwSections),

//                       //feature brands

//                       TSectionHeading(
//                         title: 'Featured Brands',
//                         onPressed: () => Get.to(() => AllBrandsScreen()),
//                       ),
//                       SizedBox(height: TSizes.spaceBtwSections / 1.5),
//                       //brands

//                       TGridLayout(
//                           itemCount: 4,
//                           mainAxisExtent: 80,
//                           itemBuilder: (_, index) {
//                             //in backend you will pass each brand and onpress event also
//                             return TBrandCard(showBorder: false);
//                           }),
//                     ],
//                   ),
//                 ),

//                 //tabs
//                 bottom: TTabBar(
//                     tabs: categories
//                         .map((category) => Tab(child: Text(category.name)))
//                         .toList()),
//                 // Tab(child: Text('Sports')),
//                 // Tab(child: Text('Furniture')),
//                 // Tab(child: Text('Electronics')),
//                 // Tab(child: Text('Clothes')),
//                 // Tab(child: Text('Cosmetics')),
//               ),
//             ];
//           },
          //body
          // body: TabBarView(
          //     children: categories
          //         .map((category) => TCategoryTab(category: category))
          //         .toList()),

          // children: [
          //   TCategoryTab(),
          //   TCategoryTab(),
          //   TCategoryTab(),
          //   TCategoryTab(),
          //   TCategoryTab(),
          // ],
          // ),
//         ),
//       );
    
//   }
// }

//i used griditem in place of gridlayout and made changes