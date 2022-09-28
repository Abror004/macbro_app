import 'package:macbro_app/models/CategorySlimmestModel.dart';
import 'package:macbro_app/models/DefaultProductPrice.dart';
import 'package:macbro_app/models/GetVariant.dart';
import 'package:macbro_app/models/ProductMetaModel.dart';
import 'package:macbro_app/models/ProductPropertyWithSlimValue.dart';

class ProductGetSlimModel {
  late final bool active;
  late final num average_rate;
  late final CategorySlimmestModel category;
  late final String characteristics;
  late final num cheapest_price;
  late final String code;
  late final String description;
  late final num discount;
  late final List<String> gallery;
  late final String id;
  late final String image;
  late final num installment_amount;
  late final ProductMetaModel meta;
  late final String name;
  late final String order;
  late final String preview_text;
  late final DefaultProductPrice price;
  late final List<ProductPropertyWithSlimValue> properties;
  late final String reviews_count;
  late final String slug;
  late final List<GetVariant> variants;
  late final int warranty_period;
  late final String you_tube_link;

  ProductGetSlimModel.fromJson(Map<String, dynamic> json) {
    active = json['active'];
    average_rate = json['average_rate'];
    category = CategorySlimmestModel.fromJson(json['category']);
    characteristics = json['characteristics'];
    cheapest_price = json['cheapest_price'];
    code = json['code'];
    description = json['description'];
    discount = json['discount'];
    gallery = json['gallery'];
    id = json['id'];
    image = json['image'];
    installment_amount = json['installment_amount'];
    meta = ProductMetaModel.fromJson(json['meta']);
    name = json['name'];
    order = json['order'];
    preview_text = json['preview_text'];
    price = DefaultProductPrice.fromJson(json['price']);
    properties = json['properties'] == null ? [] : List.generate((json['properties'] as List).length, (index) => ProductPropertyWithSlimValue.fromJson(json['properties'][index]));
    reviews_count = json['reviews_count'];
    slug = json['slug'];
    variants = json['variants'] == null ? [] : List.generate((json['variants'] as List).length, (index) => GetVariant.fromJson(json['variants'][index]));
    warranty_period = json['warranty_period'];
    you_tube_link = json['you_tube_link'];
  }
}