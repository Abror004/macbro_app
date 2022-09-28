import 'package:macbro_app/models/ProductVariantSlimModelSecond.dart';

class FindProductVariantsModel {
  late final String count;
  late final List<ProductVariantSlimModelSecond> product_variants;

  FindProductVariantsModel.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    product_variants = json['product_variants'] == null ? [] : List.generate((json['product_variants'] as List).length, (index) => ProductVariantSlimModelSecond.fromJson(json['product_variants'][index]));
  }
}