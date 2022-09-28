import 'package:macbro_app/models/BrandModel.dart';

class GetBrandModel {
  late final BrandModel brand;

  GetBrandModel.fromJson(Map<String, dynamic> json) {
    brand = BrandModel.fromJson(json['brand']);
  }
}