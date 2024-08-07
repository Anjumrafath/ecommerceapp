import 'package:ecommerceapp/common/widgets/appbar/appbar.dart';
import 'package:ecommerceapp/common/widgets/shimmer.dart';
import 'package:ecommerceapp/features/personalization/screens/profile/widgets/changename.dart';
import 'package:ecommerceapp/common/widgets/images/tcircularimage.dart';
import 'package:ecommerceapp/common/widgets/texts/sectionheading.dart';
import 'package:ecommerceapp/features/personalization/controllers/usercontroller.dart';
import 'package:ecommerceapp/features/personalization/screens/profile/widgets/profilemenu.dart';
import 'package:ecommerceapp/utils/constants/imagestrings.dart';
import 'package:ecommerceapp/utils/constants/sizes.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = UserController.instance;
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text('Profile'),
      ),
      //body
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                //Profile Picture
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    children: [
                      Obx(() {
                        final networkImage =
                            controller.user.value.profilePicture;
                        final image = networkImage.isNotEmpty
                            ? networkImage
                            : TImages.user;

                        return controller.imageUploading.value
                            ? const TShimmerEffect(
                                width: 80, height: 80, radius: 80)
                            : TCircularImage(
                                image: image,
                                width: 80,
                                height: 80,
                                isNetworkImage: networkImage.isNotEmpty);
                      }),
                      TextButton(
                          onPressed: () =>
                              controller.uploadUserProfilePicture(),
                          child: Text('Change Profile Picture')),
                    ],
                  ),
                ),
                //details
                SizedBox(
                  height: TSizes.spaceBtwItems / 2,
                ),
                const Divider(),
                const SizedBox(height: TSizes.spaceBtwItems),
                //headings profile info
                TSectionHeading(
                  title: 'Profile Information',
                  showActionButton: false,
                ),
                const SizedBox(
                  height: TSizes.spaceBtwItems,
                ),
                TProfileMenu(
                  onPressed: () => Get.to(() => ChangeName()),
                  title: 'Name',
                  value: controller.user.value.fullName,
                ),
                TProfileMenu(
                    onPressed: () {},
                    title: 'UserName',
                    value: controller.user.value.username),

                SizedBox(height: TSizes.spaceBtwItems),
                const Divider(),
                SizedBox(height: TSizes.spaceBtwItems),
                //heading personal info
                TSectionHeading(
                  title: 'Personal  Information',
                  showActionButton: false,
                ),
                const SizedBox(
                  height: TSizes.spaceBtwItems,
                ),

                TProfileMenu(
                  title: 'User ID',
                  value: controller.user.value.id,
                  icon: Iconsax.copy,
                  onPressed: () {},
                ),
                TProfileMenu(
                  onPressed: () {},
                  title: 'E-mail',
                  value: controller.user.value.email,
                ),
                TProfileMenu(
                  onPressed: () {},
                  title: 'Phone Number',
                  value: controller.user.value.phoneNumber,
                ),
                TProfileMenu(
                    onPressed: () {}, title: 'Gender', value: 'Female'),
                TProfileMenu(
                    onPressed: () {}, title: 'Date of Birth', value: '10 oct'),
                const SizedBox(
                  height: TSizes.spaceBtwItems,
                ),
                Center(
                  child: TextButton(
                    onPressed: () => controller.deleteAccountWarningPopup(),
                    child: const Text('Close Account',
                        style: TextStyle(color: Colors.red)),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
