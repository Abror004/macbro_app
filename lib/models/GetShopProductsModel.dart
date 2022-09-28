import 'package:macbro_app/models/ShopProductModel.dart';

class GetShopProductsModel {
  late final String count;
  late final List<ShopProductModel> products;

  GetShopProductsModel.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    products = json['products'] == null ? [] : List.generate((json['products'] as List).length, (index) => ShopProductModel.fromJson(json['products'][index]));
  }
}