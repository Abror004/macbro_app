import 'package:macbro_app/models/BannerPositionModel.dart';

class FindBannerPositionsModel {
  late final String count; // example: 0
  late final List<BannerPositionModel> positions;

  FindBannerPositionsModel();

  FindBannerPositionsModel.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    positions = json['positions'] == null ? [] : List.generate((json['positions'] as List).length, (index) => BannerPositionModel.fromJson(json['positions'][index]));
  }
}