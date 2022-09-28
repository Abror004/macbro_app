import 'package:macbro_app/models/ProductSlimModel.dart';

class FeaturedList {
  late final bool active;
  late final String created_at;
  late final String description;
  late final String id;
  late final String lang;
  late final String order; // example: 0
  late final List<ProductSlimModel> products;
  late final String slug;
  late final String title;

  FeaturedList.fromJson(Map<String, dynamic> json) {
    active = json['active'];
    created_at = json['created_at'];
    description = json['description'];
    id = json['id'];
    lang = json['lang'];
    order = json['order'];
    products = json['products'] == null ? [] : List.generate((json['products'] as List).length, (index) => ProductSlimModel.fromJson(json['products'][index]));
    slug = json['slug'];
    title = json['title'];
  }
}