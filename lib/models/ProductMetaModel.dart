import 'package:macbro_app/models/GrandChildCategoryModel.dart';

class ProductMetaModel {
  late final bool active;
  late final String id;
  late final String image;
  late final String name;
  late final String order;
  late final GrandChildCategoryModel parent;
  late final String slug;

  ProductMetaModel.fromJson(Map<String, dynamic> json) {
    active = json['active'];
    id = json['id'];
    image = json['image'];
    name = json['name'];
    order = json['order'];
    parent = GrandChildCategoryModel.fromJson(json['parent']);
    slug = json['slug'];
  }
}