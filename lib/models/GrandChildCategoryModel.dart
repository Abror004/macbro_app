import 'dart:developer';

class GrandChildCategoryModel {
  late final bool? active;
  late final String? created_at;
  late final String? description;
  late final String? id;
  late final String? image;
  late final String? name;
  late final String? order;
  late final String? slug;
  late final String? trade_in_image;
  late final String? updated_at;

  GrandChildCategoryModel();

  GrandChildCategoryModel.fromJson(Map<String, dynamic> json) {
    // log('GrandChildCategoryModel: ${json}');
    active = json['active'];
    created_at = json['created_at'];
    description = json['description'];
    id = json['id'];
    image = json['image'];
    name = json['name'];
    order = json['order']; // example: 0
    slug = json['slug'];
    trade_in_image = json['trade_in_image'];
    updated_at = json['updated_at'];
  }
}