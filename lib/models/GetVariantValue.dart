import 'package:macbro_app/models/DefaultProductPrice.dart';

class GetVariantValue {
  late final bool active;
  late final String characteristics;
  late final String description;
  late final List<String> gallery;
  late final String id;
  late final String image;
  late final num installment_amount;
  late final String lang;
  late final String name;
  late final String preview_text;
  late final DefaultProductPrice price;
  late final String slug;
  late final int warranty_period;

  GetVariantValue.fromJson(Map<String, dynamic> json) {
    active = json['active'];
    characteristics = json['characteristics'];
    description = json['description'];
    gallery = json['gallery'] == null ? [] : List.generate((json['gallery'] as List).length, (index) => json['gallery'][index]);
    id = json['id'];
    installment_amount = json['installment_amount'];
    lang = json['lang'];
    name = json['name'];
    preview_text = json['preview_text'];
    price = DefaultProductPrice.fromJson(json['price']);
    slug = json['slug'];
    warranty_period = json['warranty_period'];
  }
}