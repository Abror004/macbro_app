import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart';
import 'package:macbro_app/models/FeaturedList.dart';
import 'package:macbro_app/models/FeaturedListsResponse.dart';
import 'package:macbro_app/models/FindCategoriesModel.dart';
import 'package:macbro_app/models/FindSlimBannersModel.dart';
import 'package:macbro_app/models/FindTradeInProductsModel.dart';
import 'package:macbro_app/models/GetBannerModel.dart';

class ApiService {
  static const String macbro = 'api.client.macbro.uz';
  static const String banner = '/v1/banner';
  static const String category = '/v1/category';
  static const String categoryTrade = '/v1/trade-in-product';
  static const String featured_list = '/v1/featured-list';

  static Future<FindSlimBannersModel> getBanners() async {
    final Uri uri = Uri.https(
      macbro,
      banner
    );
    final Response response = await get(uri);
    final FindSlimBannersModel banners;
    banners = FindSlimBannersModel.fromJson(jsonDecode(response.body));
    log('getBanners: ${response.statusCode}');
    return banners;
  }

  static Future<GetBannerModel> getBanner(String bannerId) async {
    final Uri uri = Uri.https(
      macbro,
      '$banner/$bannerId'
    );
    final Response response = await get(uri);
    GetBannerModel getBanner = GetBannerModel.fromJson(jsonDecode(response.body));
    log('getBanner: ${response.statusCode} | banner: ${getBanner}');
    return getBanner;
  }

  static Future<FindCategoriesModel> getCategories({required bool active, required bool inactive, required String lang, required String limit, required String search, required String sort}) async {
    final Uri uri = Uri.https(
        macbro,
        category,
        // {
        //   'active': '$active',
        //   'inactive': '$inactive',
        //   'lang': lang,
        //   'limit': limit,
        //   'search': search,
        //   'sort': sort,
        // }
    );
    final Response response = await get(uri);
    final FindCategoriesModel categories;
    categories = FindCategoriesModel.fromJson(jsonDecode(response.body));
    log('getCategories: ${response.statusCode}');
    return categories;
  }

  static Future<FindTradeInProductsModel> getTradeProducts({required bool active, required bool inactive, required String category_slug, required String limit, required String page, required String search, required String sort}) async {
    final Uri uri = Uri.https(
        macbro,
        categoryTrade,
      // {
      //   'active': '$active',
      //   'category_slug': category_slug,
      //   'inactive': '$inactive',
      //   'limit': limit,
      //   'page': page,
      //   'search': search,
      //   'sort': sort,
      // }
    );
    final Response response = await get(uri);
    final FindTradeInProductsModel tradeProducts;
    tradeProducts = FindTradeInProductsModel.fromJson(jsonDecode(response.body));
    log('getTradeProducts: ${response.statusCode}');
    // log('response: $tradeProducts');
    return tradeProducts;
  }

  static Future<FeaturedListsResponse> getFeaturedLists() async {
    final Uri uri = Uri.https(
        macbro,
        featured_list
    );
    final Response response = await get(uri);
    final FeaturedListsResponse featuredList;
    featuredList = FeaturedListsResponse.fromJson(jsonDecode(response.body));
    log('getFeaturedList: ${response.statusCode} | featuredList: $featuredList');
    return featuredList;
  }

  static Future<FeaturedList> getFeaturedList(String id) async {
    final Uri uri = Uri.https(
        macbro,
        '$featured_list/$id'
    );
    final Response response = await get(uri);
    final FeaturedList featuredList;
    featuredList = FeaturedList.fromJson(jsonDecode(response.body));
    log('getFeaturedList: ${response.statusCode} | featuredList: $featuredList');
    return featuredList;
  }
}