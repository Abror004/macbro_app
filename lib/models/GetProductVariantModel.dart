import 'package:macbro_app/models/ProductVariantModel.dart';

class GetProductVariantModel {
  late final ProductVariantModel product_variant;

  GetProductVariantModel.fromJson(Map<String, dynamic> json) {
    product_variant = ProductVariantModel.fromJson(json['product_variant']);
  }
}