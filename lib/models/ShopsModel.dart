import 'package:macbro_app/models/ShopSlimModel.dart';

class ShopsModel {
  late final List<ShopSlimModel> shops;

  ShopsModel.fromJson(Map<String, dynamic> json) {
    shops = json['shops'] == null ? [] : List.generate((json['shops'] as List).length, (index) => ShopSlimModel.fromJson(json['shops'][index]));
  }
}