import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:macbro_app/models/banner_models/BannerModel.dart';

class ApiService {
  static const String macbro = 'api.client.macbro.uz';
  static const String banner = '/v1/banner';
  static const String category = '/v1/category';
  static const String categoryTrade = '/v1/category/trade-in';

  static Future<List<BannerModel>> getBanners() async {
    final Uri uri = Uri.https(
      macbro,
      banner
    );
    final Response response = await get(uri);
    final List<BannerModel> bannerList = List.generate((jsonDecode(response.body)['banners'] as List).length, (index) => BannerModel.fromJson(jsonDecode(response.body)['banners'][index]));
    return bannerList;
  }

  static Future<String> getBanner(String bannerId) async {
    final Uri uri = Uri.https(
      macbro,
      '$banner/$bannerId'
    );
    final Response response = await get(uri);
    BannerModel bannerData = BannerModel.fromJson(jsonDecode(response.body)['banner']);
    return response.body;
  }

  static Future<String> getCategory({required bool active, required bool inactive, required bool lang, required bool limit, required bool search, required bool sort}) async {
    final Uri uri = Uri.https(
        macbro,
        category,
        {
          'active': active,
          'inactive': inactive,
          'lang': lang,
          'limit': limit,
          'search': search,
          'sort': sort,
        }
    );
    final Response response = await get(uri);
    return response.statusCode.toString();
  }

  static Future<String> getCategoryTrade({required bool active, required bool inactive, required bool lang, required bool limit, required bool search, required bool sort}) async {
    final Uri uri = Uri.https(
        macbro,
        categoryTrade,
        {
          'active': active,
          'inactive': inactive,
          'lang': lang,
          'limit': limit,
          'search': search,
          'sort': sort,
        }
    );
    final Response response = await get(uri);
    return response.statusCode.toString();
  }

  static Future<String> discount({required bool active, required bool inactive, required bool lang, required bool limit, required bool search, required bool sort}) async {
    final Uri uri = Uri.https(
        macbro,
        category,
        {
          'active': active,
          'inactive': inactive,
          'lang': lang,
          'limit': limit,
          'search': search,
          'sort': sort,
        }
    );
    final Response response = await get(
      uri,
      headers: {
        HttpHeaders.authorizationHeader: '7d4a4c38-dd84-4902-b744-0488b80a4c01'
      }
    );
    return response.statusCode.toString();
  }
}