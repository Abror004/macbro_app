import 'dart:developer';

import 'package:macbro_app/models/FeaturedListsResponse.dart';
import 'package:macbro_app/models/FindCategoriesModel.dart';
import 'package:macbro_app/models/FindSlimBannersModel.dart';
import 'package:macbro_app/models/FindTradeInProductsModel.dart';
import 'package:macbro_app/services/api_service.dart';

class HttpService {

  static Future<FindSlimBannersModel?> getBanners() async {
    try {
      return await ApiService.getBanners();
    } catch(e) {
      log('banner: $e');
      return null;
    }
  }

  static Future<FindCategoriesModel?> getCategory() async {
    try {
      final FindCategoriesModel categories = await ApiService.getCategories(active: true, inactive: true, lang: '', limit: '', search: '', sort: '');
      return categories;
    } catch(e) {
      log('categories: $e');
      return null;
    }
  }

  static Future<FindTradeInProductsModel?> getTradeProducts() async {
    try {
      final FindTradeInProductsModel tradeProducts = await ApiService.getTradeProducts(active: true, inactive: false, limit: '', search: '', sort: '', category_slug: '', page: '');
      return tradeProducts;
    } catch(e) {
      log('tradeProducts: $e');
      return null;
    }
  }

  static Future<FeaturedListsResponse?> getFeaturedLists() async {
    try {
      final FeaturedListsResponse featuredList = await ApiService.getFeaturedLists();
      return featuredList;
    } catch(e) {
      log('tradeProducts: $e');
      return null;
    }
  }

  static Future<List> getTest() async {
    try {
      // await ApiService.getBanners();
      // await ApiService.getBanner('6327ff57c6af56001af1d8d1');

      // await ApiService.getTradeProducts(active: true, inactive: false, limit: '', search: '', sort: '', category_slug: '', page: '');
      // await ApiService.getCategories(active: '', inactive: '', limit: '', search: '', sort: '', lang: '');
      return [];
    } catch(e) {
      log('e: $e');
      return [];
    }
  }
}