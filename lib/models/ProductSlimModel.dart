import 'package:macbro_app/models/BrandModel.dart';
import 'package:macbro_app/models/CategorySlimmestModel.dart';
import 'package:macbro_app/models/InStockModel.dart';
import 'package:macbro_app/models/ProductPrice.dart';

class ProductSlimModel {
  late bool active;
  late final BrandModel brand;
  late final CategorySlimmestModel category;
  late final num cheapest_price;
  late final String code;
  late final String created_at;
  late final String external_id; // example: 0
  late final String id;
  late final String image;
  late final InStockModel inStock;
  late final String name;
  late final String order; // example: 0
  late final String preview_text;
  late final ProductPrice price;
  late final String slug;
  late final String updated_at;

  ProductSlimModel.fromJson(Map<String, dynamic> json) {
    active = json['active'];
    brand = BrandModel.fromJson(json['brand']);
    category = CategorySlimmestModel.fromJson(json['category']);
    cheapest_price = json['cheapest_price'];
    code = json['code'];
    created_at = json['created_at'];
    external_id = json['external_id'];
    id = json['id'];
    image = json['image'];
    inStock = InStockModel.fromJson(json['inStock']);
    name = json['name'];
    order = json['order'];
    preview_text = json['preview_text'];
    price = ProductPrice.fromJson(json['price']);
    slug = json['slug'];
    updated_at = json['updated_at'];
  }
}