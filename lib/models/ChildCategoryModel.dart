import 'package:macbro_app/models/GrandChildCategoryModel.dart';
import 'package:macbro_app/models/ProductSlimModel.dart';

class  ChildCategoryModel{
  late final bool active;
  late final List<GrandChildCategoryModel> children;
  late final String created_at;
  late final String description;
  late final String id;
  late final String image;
  late final String order;
  late final List<ProductSlimModel> products;
  late final String slug;
  late final String trade_in_image;
  late final String updated_at;

  ChildCategoryModel();

  ChildCategoryModel.fromJson(Map<String, dynamic> json) {
    // log('${json}');
    active = json['active'];
    children = json['children'] == null ? [] : List.generate((json['children'] as List).length, (index) => GrandChildCategoryModel.fromJson(json['children'][index]));
    created_at = json['created_at'];
    description = json['description'];
    id = json['id'];
    image = json['image'];
    order = json['order'];
    products = json['products'] == null ? [] : List.generate((json['products'] as List).length, (index) => ProductSlimModel.fromJson(json['products'][index]));
    slug = json['slug'];
    trade_in_image = json['trade_in_image'];
    updated_at = json['updated_at'];
  }
}