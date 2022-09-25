import 'package:macbro_app/models/GrandChildCategoryModel.dart';
import 'package:macbro_app/models/ProductSlimModel.dart';

class  ChildCategoryModel{
  late final bool active;
  late final GrandChildCategoryModel children;
  late final String created_at;
  late final String description;
  late final String id;
  late final String image;
  late final String order;
  late final ProductSlimModel products;
  late final String slug;
  late final String trade_in_image;
  late final String updated_at;

  ChildCategoryModel.fromJson(Map<String, dynamic> json) {
    active = json['active'];
  }
}