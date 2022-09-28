import 'package:macbro_app/models/BrandModel.dart';
import 'package:macbro_app/models/CategorySlimmestModel.dart';
import 'package:macbro_app/models/DefaultProductPrice.dart';
import 'package:macbro_app/models/ProductMetaModel.dart';
import 'package:macbro_app/models/ProductPropertyWithValue.dart';

class ProductVariantModel {
  late final bool active;
  late final List<CategorySlimmestModel> additional_categories;
  late final num average_rate;
  late final BrandModel brand;
  late final CategorySlimmestModel category;
  late final String characteristics;
  late final String code;
  late final String created_at;
  late final String description;
  late final String external_id;
  late final List<String> gallery;
  late final String id;
  late final String image;
  late final String lang;
  late final ProductMetaModel meta;
  late final String name;
  late final String order;
  late final String preview_text;
  late final DefaultProductPrice price;
  late final List<ProductPropertyWithValue> properties;
  late final String reviews_count;
  late final String show_price;
  late final String slug;
  late final String updated_at;

  ProductVariantModel.fromJson(Map<String, dynamic> json) {
    active = json['active'];
    additional_categories = json['additional_categories'] == null ? [] : List.generate((json['additional_categories'] as List).length, (index) => CategorySlimmestModel.fromJson(json['additional_categories'][index]));
    average_rate = json['average_rate'];
    brand = BrandModel.fromJson(json['brand']);
    category = json['category'];
    characteristics = json['characteristics'];
    code = json['code'];
    created_at = json['created_at'];
    description = json['description'];
    external_id = json['external_id'];
    gallery = json['gallery'] == null ? [] : List.generate((json['gallery'] as List).length, (index) => json['gallery'][index]);
    id = json['id'];
    image = json['image'];
    lang = json['lang'];
    meta = ProductMetaModel.fromJson(json['meta']);
    name = json['name'];
    order = json['order'];
    preview_text = json['preview_text'];
    price = DefaultProductPrice.fromJson(json['price']);
    properties = json['properties'];
    reviews_count = json['reviews_count'];
    show_price = json['show_price'];
    slug = json['slug'];
    updated_at = json['updated_at'];
  }
}
