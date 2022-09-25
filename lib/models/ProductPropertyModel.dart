import 'package:macbro_app/models/ProductPropertyOptionModel.dart';

class ProductPropertyModel {
  late final bool active;
  late final String created_at;
  late final String description;
  late final String id;
  late final String lang;
  late final String name;
  late final ProductPropertyOptionModel options;
  late final String order;
  late final String slug;
  late final String type;
  late final String updated_at;


  ProductPropertyModel.fromJson(Map<String, dynamic> json) {
    active = json['active'];
    created_at = json['created_at'];
    description = json['description'];
    id = json['id'];
    lang = json['lang'];
    options = json['options'];
    type = json['type'];
    name = json['name'];
    order = json['order'];
    slug = json['slug'];
    updated_at = json['position']['updated_at'];
  }
}