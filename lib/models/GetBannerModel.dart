import 'package:macbro_app/models/BannerModel.dart';

class GetBannerModel {
  late final BannerModel banner;

  GetBannerModel.fromJson(Map<String, dynamic> json) {
    banner = BannerModel.fromJson(json['banner']);
  }
}