import 'package:macbro_app/models/banner_models/BannerPositionModel.dart';

class BannerModel {
  late final bool active;
  late final String button_title;
  late final String created_at;
  late final String description;
  late final String id;
  late final String image;
  late final String lang;
  late final int order_number;
  late final BannerPositionModel position;
  late final num price;
  late final String slug;
  late final String title;
  late final String updated_at;
  late final String url;
  late final String type;

  BannerModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    slug = json['slug'];
    active = json['active'];
    image = json['image'];
    url = json['url'];
    description = json['description'];
    lang = json['lang'];
    created_at = json['position']['created_at'];
    updated_at = json['position']['updated_at'];
    price = json['price'];
    button_title = json['button_title'];
    order_number = json['order_number'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'slug': slug,
    'active': active,
    'image': image,
    'url': url,
    'description': description,
    'lang': lang,
    'created_at': created_at,
    'updated_at': updated_at,
    'price': price,
    'button_title': button_title,
    'order_number': order_number,
    'type': type,
  };
}