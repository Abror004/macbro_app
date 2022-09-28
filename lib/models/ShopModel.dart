import 'package:macbro_app/models/ShopLocModel.dart';
import 'package:macbro_app/models/ShopStockModel.dart';

class ShopModel {
  late final bool active;
  late final String address;
  late final String address2;
  late final String area;
  late final String created_at;
  late final String description;
  late final String id;
  late final String image;
  late final ShopLocModel loc;
  late final String name;
  late final String phone;
  late final String preview_text;
  late final List<ShopStockModel> products;
  late final String slug;
  late final String updated_at;
  late final String working_hours;

  ShopModel.fromJson(Map<String, dynamic> json) {
    active = json['active'];
    address = json['address'];
    address2 = json['address2'];
    area = json['area'];
    created_at = json['created_at'];
    description = json['description'];
    id = json['id'];
    image = json['image'];
    loc = ShopLocModel.fromJson(json['loc']);
    name = json['name'];
    phone = json['phone'];
    preview_text = json['preview_text'];
    products = json['products'] == null ? [] : List.generate((json['products'] as List).length, (index) => ShopStockModel.fromJson(json['products'][index]));
    slug = json['slug'];
    updated_at = json['updated_at'];
    working_hours = json['working_hours'];
  }
}