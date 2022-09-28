import 'package:macbro_app/models/ShopLocModel.dart';

class ProductQuantityModel {
  late final String active;
  late final String address;
  late final String address2;
  late final String id;
  late final String image;
  late final ShopLocModel loc;
  late final String name;
  late final String phone;
  late final String preview_text;
  late final String slug;
  late final String working_hours;

  ProductQuantityModel.fromJson(Map<String, dynamic> json) {
    active = json['active'];
    address = json['address'];
    address2 = json['address2'];
    id = json['id'];
    image = json['image'];
    loc = ShopLocModel.fromJson(json['loc']);
    name = json['name'];
    phone = json['phone'];
    preview_text = json['preview_text'];
    slug = json['slug'];
    working_hours = json['working_hours'];
  }
}