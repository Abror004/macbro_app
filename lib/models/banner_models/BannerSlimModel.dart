
import 'package:macbro_app/models/banner_models/BannerPositionModel.dart';

class BannerSlimModel {
  late final bool active;
  late final String button_title;
  late final String description;
  late final String id;
  late final String image;
  late final String lang;
  late final int order_number;
  late final BannerPositionModel position;
  late final num price;
  late final String slug;
  late final String title;
  late final String type;
  late final String url;

  BannerSlimModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    slug = json['slug'];
    active = json['active'];
    image = json['image'];
    url = json['url'];
    description = json['description'];
    lang = json['lang'];
    price = json['price'];
    button_title = json['button_title'];
    type = json['type'];
    order_number = json['order_number'];
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
    'price': price,
    'button_title': button_title,
    'order_number': order_number,
    'type': type,
  };
}