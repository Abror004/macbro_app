import 'package:macbro_app/models/InStockModel.dart';

class FeaturedListProductSlimModel {
  late final bool active;
  late final num cheapest_price;
  late final String code;
  late final String id;
  late final String image;
  late final InStockModel inStock;
  late final String name;
  late final String order; // example: 0
  late final String preview_text;
  late final String slug;

  FeaturedListProductSlimModel.fromJson(Map<String, dynamic> json) {
    active = json['active'];
    cheapest_price = json['cheapest_price'];
    code = json['code'];
    id = json['id'];
    image = json['image'];
    inStock = InStockModel.fromJson(json['inStock']);
    name = json['name'];
    order = json['order'];
    preview_text = json['preview_text'];
    slug = json['slug'];
  }
}