import 'package:macbro_app/models/BannerSlimModel.dart';

class FindSlimBannersModel {
  late final String count; // example: 0
  late final List<BannerSlimModel> banners;

  FindSlimBannersModel.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    banners = json['banners'] == null ? [] : List.generate((json['banners'] as List).length, (index) => BannerSlimModel.fromJson(json['banners'][index]));
  }
}