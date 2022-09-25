import 'package:macbro_app/models/ProductSlimModel.dart';
import 'package:macbro_app/models/categorie_models/ChildCategoryModel.dart';

class CategorySlimModel {
  late final bool active;
  late final ChildCategoryModel children;
  late final String description;
  late final String id;
  late final String image;
  late final String name;
  late final String order;
  late final ProductSlimModel products;
  late final String slug;
  late final String trade_in_image;
  late final bool wide;

  CategorySlimModel.fromJson(Map<String, dynamic> json) {
    active = json['active'];
    children = json['children'];
    description = json['description'];
    id = json['id'];
    image = json['image'];
    name = json['name'];
    order = json['order'];
    products = json['products'];
    slug = json['slug'];
    trade_in_image = json['trade_in_image'];
    wide = json['wide'];
  }
}