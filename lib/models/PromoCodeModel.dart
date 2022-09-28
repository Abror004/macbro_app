import 'package:macbro_app/models/ProductForPromo.dart';

class PromoCodeModel {
  late final String from_time;
  late final String id;
  late final bool is_for_all;
  late final List<ProductForPromo> products;
  late final String slug;
  late final String title;
  late final String to_time;
  late final String type;
  late final int value;

  PromoCodeModel.fromJson(Map<String, dynamic> json) {
    from_time = json['from_time'];
    id = json['id'];
    is_for_all = json['is_for_all'];
    products = json['products'] == null ? [] : List.generate((json['products'] as List).length, (index) => ProductForPromo.fromJson(json['products'][index]));
    slug = json['slug'];
    title = json['title'];
    to_time = json['to_time'];
    type = json['type'];
    value = json['value'];
  }
}