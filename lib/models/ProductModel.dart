import 'package:macbro_app/models/BrandModel.dart';
import 'package:macbro_app/models/CategorySlimmestModel.dart';
import 'package:macbro_app/models/DefaultProductPrice.dart';
import 'package:macbro_app/models/GetVariant.dart';
import 'package:macbro_app/models/ProductMetaModel.dart';
import 'package:macbro_app/models/ProductPrice.dart';
import 'package:macbro_app/models/ProductPropertyWithValue.dart';
import 'package:macbro_app/models/ProductSlimMode.dart';

class ProductModel {
  late final bool active;
  late final List<CategorySlimmestModel> additional_categories;
  late final num average_rate;
  late final BrandModel brand;
  late final CategorySlimmestModel category;
  late final String characteristics;
  late final num cheapest_price;
  late final String code;
  late final String created_at;
  late final String description;
  late final String external_id;
  late final List<String> gallery;
  late final String id;
  late final String image;
  late final ProductMetaModel meta;
  late final String name;
  late final String order;
  late final String preview_text;
  late final DefaultProductPrice price;
  late final List<ProductPrice> prices;
  late final List<ProductPropertyWithValue> properties;
  late final List<ProductSlimMode> related_products;
  late final String reviews_count;
  late final String slug;
  late final String updated_at;
  late final GetVariant variants;

  ProductModel.fromJson(Map<String, dynamic> json) {
    active = json['active'];
    additional_categories = json['additional_categories'];
    average_rate = json['average_rate'];
    brand = BrandModel.fromJson(json['brand']);
    category = CategorySlimmestModel.fromJson(json['category']);
    characteristics = json['characteristics'];
    cheapest_price = json['cheapest_price'];
    code = json['code'];
    created_at = json['created_at'];
    description = json['description'];
    external_id = json['external_id'];
    gallery = json['gallery'] == null ? [] : List.generate((json['gallery'] as List).length, (index) => json['gallery'][index]);
    id = json['id'];
    image = json['image'];
    meta = ProductMetaModel.fromJson(json['meta']);
    name = json['name'];
    preview_text = json['preview_text'];
    price = DefaultProductPrice.fromJson(json['price']);
    prices = json['prices'] == null ? [] : List.generate((json['prices'] as List).length, (index) => ProductPrice.fromJson(json['prices'][index]));
    properties = json['properties'] == null ? [] : List.generate((json['properties'] as List).length, (index) => ProductPropertyWithValue.fromJson(json['properties'][index]));
    related_products = json['related_products'] == null ? [] : List.generate((json['related_products'] as List).length, (index) => ProductSlimMode.fromJson(json['related_products'][index]));
    reviews_count = json['reviews_count'];
    slug = json['slug'];
    updated_at = json['updated_at'];
    variants = GetVariant.fromJson(json['variants']);
  }
}