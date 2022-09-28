import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:macbro_app/models/ChildCategoryModel.dart';
import 'package:macbro_app/models/FeaturedListsResponse.dart';
import 'package:macbro_app/models/FindCategoriesModel.dart';
import 'package:macbro_app/models/FindSlimBannersModel.dart';
import 'package:macbro_app/models/FindTradeInProductsModel.dart';
import 'package:macbro_app/models/ProductSlimModel.dart';
import 'package:macbro_app/models/post_model.dart';
import 'package:macbro_app/pages/home_page/HomePageCore.dart';
import 'package:macbro_app/pages/home_page/home_addition_pages/home_post_type_page/home_post_type_page.dart';
import 'package:macbro_app/pages/home_page/home_addition_pages/products_page/products_page.dart';
import 'package:macbro_app/services/http_service.dart';
import 'package:video_player/video_player.dart';

import 'home_addition_pages/home_categories_page/home_categories_page.dart';

class HomePageController extends GetxController {
  TextEditingController searchController = TextEditingController();
  PageController bannerController = PageController();
  FindSlimBannersModel? banners;
  FindCategoriesModel? categories;
  FindTradeInProductsModel? tradeProducts;
  FeaturedListsResponse? featuredList;
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
    getBanner();
    getCategories();
    getTradeProducts();
    getFeaturedLists();
    update();
  }

  Future<void> getBanner() async {
    banners = await HttpService.getBanners();
    if(banners != null) {
      for(int i=0; i<banners!.banners.length; i++) {
        list.add(VideoPlayerController.network(banners!.banners[i].image));
        list[i].initialize().then((value) {
          if(i == 0) {
            list[i].play();
          }
          list[i].setLooping(true);
          update();
        });
      }
    }
    update();
  }

  Future<void> getCategories() async {
    categories = await HttpService.getCategory();
    update();
  }

  Future<void> getTradeProducts() async {
    tradeProducts = await HttpService.getTradeProducts();
    update();
  }

  Future<void> getFeaturedLists() async {
    featuredList = await HttpService.getFeaturedLists();
    update();
  }

  Future<void> getTest() async {
    await HttpService.getTest();
    update();
  }

  void gotoPostTypePage(String title, List<ProductSlimModel> products) {
    Get.to(() => HomePostTypePage(title: title, products: products));
  }

  void gotoPostCategoriesPage(String title, List<ChildCategoryModel> children) {
    Get.to(() => HomeCategoriesPage(title: title, categories: children));
  }

  void gotoProductsPage(String title, List<ProductSlimModel> products) {
    Get.to(() => ProductsPage(title: title, products: products));
  }
}