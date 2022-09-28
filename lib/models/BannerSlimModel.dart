

import 'package:macbro_app/models/BannerPositionModel.dart';

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
    active = json['active'];
    button_title = json['button_title'];
    description = json['description'];
    id = json['id'];
    image = json['image'];
    lang = json['lang'];
    order_number = json['order_number'];
    position = BannerPositionModel.fromJson(json['position']);
    price = json['price'];
    slug = json['slug'];
    title = json['title'];
    type = json['type'];
    url = json['url'];
  }
}