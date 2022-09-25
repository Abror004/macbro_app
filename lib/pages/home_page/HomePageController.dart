import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:macbro_app/models/banner_models/BannerModel.dart';
import 'package:macbro_app/models/post_model.dart';
import 'package:macbro_app/pages/home_page/HomePageCore.dart';
import 'package:macbro_app/pages/home_page/home_addition_pages/home_post_type_page/home_post_type_page.dart';
import 'package:macbro_app/services/http_service.dart';
import 'package:video_player/video_player.dart';

import 'home_addition_pages/home_categories_page/home_categories_page.dart';

class HomePageController extends GetxController {
  TextEditingController searchController = TextEditingController();
  PageController bannerController = PageController();
  // final List<String> bannerImages = ['assets/banner.png', 'assets/banner.png', 'assets/banner.png', 'assets/banner.png', 'assets/banner.png', 'assets/banner.png', 'assets/banner.png', 'assets/banner.png'];
  List<BannerModel> bannerList = [];
  final List<String> categories = ['Apple', 'Samsung', 'Xiaomi', 'Аккустика', 'Аксессуары'];
  final List<String> categoriesImages = ['assets/categories/iphone.png', 'assets/categories/samsung.png', 'assets/categories/xiaomi.png', 'assets/categories/accumulator.png', 'assets/categories/accessory.png'];
  List<VideoPlayerController> list = [];
  Map<String, List<Post>> allData = {
    'new': HomePageCore.newPosts,
    'discounts': HomePageCore.discountPosts,
    'recommend': HomePageCore.recommendPosts
  };

  @override
  void onInit() async {
    // TODO: implement onInit
    super.onInit();
    await getBanner();
  }

  Future<void> getBanner() async {
    bannerList = await HttpService.getBanners();
    for(int i=0; i<bannerList.length; i++) {
      list.add(VideoPlayerController.network(bannerList[i].image));
      list[i].initialize().then((value) {
        if(i == 0) {
          list[i].play();
        }
        list[i].setLooping(true);
        update();
      });
    }
    update();
  }

  void gotoPostTypePage(String title, List<Post> posts) {
    Get.to(() => HomePostTypePage(title: title, posts: posts));
  }

  void gotoPostCategoriesPage(String title, ) {
    Get.to(() => HomeCategoriesPage(title: title, categories: HomePageCore.iphoneProducts));
  }
}