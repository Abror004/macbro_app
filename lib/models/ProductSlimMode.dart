import 'package:macbro_app/models/BrandModel.dart';
import 'package:macbro_app/models/CategorySlimmestModel.dart';
import 'package:macbro_app/models/DefaultProductPrice.dart';
import 'package:macbro_app/models/InStockModel.dart';
import 'package:macbro_app/models/ProductPrice.dart';

class ProductSlimMode {
  late final bool active;
  late final BrandModel brand;
  late final CategorySlimmestModel category;
  late final num cheapest_price;
  late final String code;
  late final String created_at;
  late final String external_id;
  late final String id;
  late final String image;
  late final InStockModel inStock;
  late final String name;
  late final String order;
  late final String preview_text;
  late final DefaultProductPrice price;
  late final List<ProductPrice> prices;
  late final String slug;
  late final String updated_at;

  ProductSlimMode.fromJson(Map<String, dynamic> json) {
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
    price = DefaultProductPrice.fromJson(json['price']);
    prices = json['prices'] == null ? [] : List.generate((json['prices'] as List).length, (index) => ProductPrice.fromJson(json['prices'][index]));
    slug = json['slug'];
    updated_at = json['updated_at'];
  }
}