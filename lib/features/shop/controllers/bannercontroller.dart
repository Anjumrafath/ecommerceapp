import 'package:ecommerceapp/data/repositories/banner/bannerrepository.dart';
import 'package:ecommerceapp/features/shop/models/bannermodel.dart';
import 'package:ecommerceapp/utils/loaders/loaders.dart';
import 'package:get/get.dart';

class BannerController extends GetxController {
  final carousalCurrentIndex = 0.obs;
  final isLoading = false.obs;
  final RxList<BannerModel> banners = <BannerModel>[].obs;

  @override
  void onInit() {
    fetchBanners();
    super.onInit();
  }

  //update page navigation
  void updatePageIndicator(index) {
    carousalCurrentIndex.value = index;
  }

  //fetch Banner
  Future<void> fetchBanners() async {
    try {
      //show loader while loading
      isLoading.value = true;

      //Fetch banners from data source(firebase,API,etc..)

      final bannerRepo = Get.put(BannerRepository());
      final banners = await bannerRepo.fetchBanners();

      //Assign  banners
      this.banners.assignAll(banners);
    } catch (e) {
      TLoaders.errorSnackBar(title: 'Oh Snap', message: e.toString());
    } finally {
      //remove loader
      isLoading.value = false;
    }
  }
}
