import 'package:macbro_app/models/UpdateProductPropertyModel.dart';

class FilterProductsQuery {
  late final bool active;
  late final String brand;
  late final String category;
  late final bool inactive;
  late final bool is_discount;
  late final String lang;
  late final String limit; // example: 0
  late final String page; // example: 0
  late final bool popular;
  late final num price_from;
  late final num price_till;
  late final List<UpdateProductPropertyModel> properties;
  late final bool recommended;
  late final String search;
  late final String sort; // example: name|asc

  FilterProductsQuery.fromJson(Map<String, dynamic> json) {
    active = json['active'];
    brand = json['brand'];
    category = json['category'];
    inactive = json['inactive'];
    is_discount = json['is_discount'];
    lang = json['lang'];
    limit = json['limit'];
    page = json['page'];
    popular = json['popular'];
    price_from = json['price_from'];
    price_till = json['price_till'];
    properties = json['properties'] == null ? [] : List.generate((json['properties'] as List).length, (index) => UpdateProductPropertyModel.fromJson(json['properties'][index]));
    recommended = json['recommended'];
    search = json['search'];
    sort = json['sort'];
  }
}