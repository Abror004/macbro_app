import 'package:macbro_app/models/ShopModel.dart';

class GetShopModel {
  late final ShopModel shop;

  GetShopModel.fromJson(Map<String, dynamic> json) {
    shop = ShopModel.fromJson(json['shop']);
  }
}