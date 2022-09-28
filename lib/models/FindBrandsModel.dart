import 'package:macbro_app/models/BrandModel.dart';

class FindBrandsModel {
  late final List<BrandModel> brands;
  late final String count; // example: 0

  FindBrandsModel.fromJson(Map<String, dynamic> json) {
    brands = json['brands'] == null ? [] : List.generate((json['brands'] as List).length, (index) => BrandModel.fromJson(json['brands'][index]));
    count = json['count'];
  }
}