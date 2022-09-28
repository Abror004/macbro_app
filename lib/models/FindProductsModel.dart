import 'package:macbro_app/models/ProductSlimModelSecond.dart';

class FindProductsModel {
  late final String count;
  late final List<ProductSlimModelSecond> products;

  FindProductsModel.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    products = json['products'] == null ? [] : List.generate((json['products'] as List).length, (index) => ProductSlimModelSecond.fromJson(json['products'][index]));
  }
}