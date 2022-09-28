import 'package:macbro_app/models/ProductModel.dart';

class ShopStockModel {
  late final ProductModel product;
  late final int quantity;

  ShopStockModel.fromJson(Map<String, dynamic> json) {
    product = ProductModel.fromJson(json['product']);
    quantity = json['quantity'];
  }
}