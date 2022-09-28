import 'package:macbro_app/models/DefaultProductPrice.dart';

class ProductSlimmestModel {
  late final bool active;
  late final String external_id;
  late final String id;
  late final String image;
  late final String name;
  late final DefaultProductPrice price;
  late final String slug;

  ProductSlimmestModel.fromJson(Map<String, dynamic> json) {
    active = json['active'];
    external_id = json['external_id'];
    id = json['id'];
    image = json['image'];
    name = json['name'];
    price = DefaultProductPrice.fromJson(json['price']);
    slug = json['slug'];
  }
}