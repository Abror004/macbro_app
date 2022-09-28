import 'package:macbro_app/models/ProductPropertyOptionModel.dart';

class ProductPropertyModel {
  late final bool active;
  late final String created_at;
  late final String description;
  late final String id;
  late final String lang;
  late final String name;
  late final List<ProductPropertyOptionModel> options;
  late final String order;
  late final String slug;
  late final String type; // Enum: [ text, number, select, checkbox, radio ]
  late final String updated_at;


  ProductPropertyModel.fromJson(Map<String, dynamic> json) {
    active = json['active'];
    created_at = json['created_at'];
    description = json['description'];
    id = json['id'];
    lang = json['lang'];
    name = json['name'];
    options = json['options'] == null ? [] : List.generate((json['options'] as List).length, (index) => ProductPropertyOptionModel.fromJson(json['options'][index]));
    order = json['order'];
    slug = json['slug'];
    type = json['type'];
    updated_at = json['updated_at'];
  }
}