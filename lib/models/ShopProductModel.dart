import 'package:macbro_app/models/ProductSlimModel.dart';

class ShopProductModel {
  late final ProductSlimModel product;
  late final int quantity;

  ShopProductModel.fromJson(Map<String, dynamic> json) {
    product = ProductSlimModel.fromJson(json['product']);
    quantity = json['quantity'];
  }
}