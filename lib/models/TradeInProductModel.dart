import 'package:macbro_app/models/BrandModel.dart';
import 'package:macbro_app/models/CategoryModel.dart';

class TradeInProductModel {
  late final bool active;
  late final BrandModel brand;
  late final CategoryModel category;
  late final String created_at;
  late final String id;
  late final String image;
  late final String name;
  late final String product_id;
  late final String product_slug;
  late final num up_to_price;
  late final String updated_at;
  late final String uzs_price;

  TradeInProductModel.fromJson(Map<String, dynamic> json) {
    active = json['active'];
    brand = BrandModel.fromJson(json['brand']);
    category = CategoryModel.fromJson(json['category']);
    created_at = json['created_at'];
    id = json['id'];
    image = json['image'];
    name = json['name'];
    product_id = json['product_id'];
    product_slug = json['product_slug'];
    up_to_price = json['up_to_price'];
    updated_at = json['updated_at'];
    uzs_price = json['uzs_price'];
  }
}