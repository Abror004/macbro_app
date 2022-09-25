import 'dart:developer';

import 'package:macbro_app/models/banner_models/BannerModel.dart';
import 'package:macbro_app/services/api_service.dart';

class HttpService {

  static Future<List<BannerModel>> getBanners() async {
    log('aaa', name: 'http banner');
    try {
      return await ApiService.getBanners();
    } catch(e) {
      log('e: $e');
      return [];
    }
  }
}