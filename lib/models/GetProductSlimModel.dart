import 'package:macbro_app/models/ProductGetSlimModel.dart';

class GetProductSlimModel {
  late final ProductGetSlimModel product;

  GetProductSlimModel.fromJson(Map<String, dynamic> json) {
    product = ProductGetSlimModel.fromJson(json['product']);
  }
}