import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerceapp/data/repositories/categories/firebasestorageservice.dart';
import 'package:ecommerceapp/features/shop/models/categorymodel.dart';
import 'package:ecommerceapp/utils/exceptions/firebaseexception.dart';
import 'package:ecommerceapp/utils/exceptions/platformexception.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class CategoryRepository extends GetxController {
  static CategoryRepository get instance => Get.find();

  //Variables
  final _db = FirebaseFirestore.instance;
  //Get all categories
  Future<List<CategoryModel>> getAllCategories() async {
    try {
      final snapshot = await _db.collection('categories').get();
      final list = snapshot.docs
          .map((document) => CategoryModel.fromSnapshot(document))
          .toList();
      return list;
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
    } on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again';
    }
  }

  //Get Sub categories
  //upload categories to the cloud firestore
  Future<void> uploadDummyData(List<CategoryModel> categories) async {
    try {
      //upload all categories along with their image
      final storage = Get.put(TFirebaseStorageService());

      //loop through each category
      for (var category in categories) {
        //Get image data link from the local assets
        final file = await storage.getImageDataFromAssets(category.image);
        //upload images and get its url
        final url =
            await storage.uploadImageData('categories', file, category.name);

        //Assain URL to category image attribute
        category.image = url;
        //store category in firestore
        await _db
            .collection('categories')
            .doc(category.id)
            .set(category.toJson());
      }
    } on FirebaseException catch (e) {
      throw TFirebaseException(e.code).message;
    } on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again';
    }
  }
}
