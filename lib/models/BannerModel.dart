import 'package:macbro_app/models/BannerPositionModel.dart';

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

  BannerModel.fromJson(Map<String, dynamic> json) {
    active = json['active'];
    button_title = json['button_title'];
    created_at = json['created_at'];
    description = json['description'];
    id = json['id'];
    image = json['image'];
    lang = json['lang'];
    order_number = json['order_number'];
    position = BannerPositionModel.fromJson(json['position']);
    price = json['price'];
    slug = json['slug'];
    title = json['title'];
    updated_at = json['updated_at'];
    url = json['url'];
  }
}
