import 'package:macbro_app/models/DefaultProductPrice.dart';

class ProductVariantSlimModelSecond {
  late final bool active;
  late final num cheapest_price;
  late final String code;
  late final String id;
  late final String image;
  late final String name;
  late final String order;
  late final DefaultProductPrice price;
  late final String slug;

  ProductVariantSlimModelSecond.fromJson(Map<String, dynamic> json) {
    active = json['active'];
    cheapest_price = json['cheapest_price'];
    code = json['code'];
    id = json['id'];
    image = json['image'];
    name = json['name'];
    order = json['order'];
    price = DefaultProductPrice.fromJson(json['price']);
    slug = json['slug'];
  }
}