import 'package:macbro_app/models/BannerPositionModel.dart';

class GetBannerPositionModel {
  late final BannerPositionModel position;

  GetBannerPositionModel.fromJson(Map<String, dynamic> json) {
    position = BannerPositionModel.fromJson(json['position']);
  }
}