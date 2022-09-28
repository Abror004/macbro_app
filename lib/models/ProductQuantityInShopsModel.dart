import 'package:macbro_app/models/ProductQuantityModel.dart';

class ProductQuantityInShopsModel {
  late final List<ProductQuantityModel> shops;

  ProductQuantityInShopsModel.fromJson(Map<String, dynamic> json) {
    shops = json['shops'] == null ? [] : List.generate((json['shops'] as List).length, (index) => ProductQuantityModel.fromJson(json['shops'][index]));
  }
}