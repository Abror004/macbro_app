import 'dart:developer';

import 'package:macbro_app/models/ChildCategoryModel.dart';
import 'package:macbro_app/models/ProductSlimModel.dart';

class CategorySlimModel {
  late final bool active;
  late final List<ChildCategoryModel> children;
  late final String description;
  late final String id;
  late final String image;
  late final String name;
  late final String order; // '0' - String number
  late final List<ProductSlimModel> products;
  late final String slug;
  late final String trade_in_image;
  late final bool wide;

  CategorySlimModel.fromJson(Map<String, dynamic> json) {
    // log('CategorySlimModel: ${json['products']}');
    active = json['active'];
    children = json['children'] == null ? [] : List.generate((json['children'] as List).length, (index) => ChildCategoryModel.fromJson(json['children'][index]));
    description = json['description'];
    id = json['id'];
    image = json['image'];
    name = json['name'];
    order = json['order'];
    products = json['products'] == null ? [] : List.generate((json['products'] as List).length, (index) => ProductSlimModel.fromJson(json['products'][index]));
    slug = json['slug'];
    trade_in_image = json['trade_in_image'];
    wide = json['wide'];
  }
}