import 'package:macbro_app/models/ProductPropertyModel.dart';

class GetProductPropertyModel {
  late final ProductPropertyModel product_property;

  GetProductPropertyModel.fromJson(Map<String, dynamic> json) {
    product_property = ProductPropertyModel.fromJson(json['product_property']);
  }
}