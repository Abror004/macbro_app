import 'package:macbro_app/models/ProductPropertyModel.dart';
import 'package:macbro_app/models/categorie_models/CategoryMetaModel.dart';
import 'package:macbro_app/models/categorie_models/ChildCategoryModel.dart';
import 'package:macbro_app/models/GrandChildCategoryModel.dart';

class CategoryModel {
  late final bool active;
  late final List<ChildCategoryModel> children;
  late final String created_at;
  late final String description;
  late final String id;
  late final String image;
  late final CategoryMetaModel meta;
  late final String name;
  late final String order;
  late final GrandChildCategoryModel parent;
  late final List<ProductPropertyModel> product_properties;
  late final String seo_description;
  late final String slug;
  late final String updated_at;
  late final bool wide;


  CategoryModel.fromJson(Map<String, dynamic> json) {
    active = json['active'];
    children = json['children'];
    created_at = json['created_at'];
    description = json['description'];
    id = json['id'];
    image = json['image'];
    meta = json['meta'];
    name = json['name'];
    order = json['order'];
    parent = json['parent'];
    product_properties = json['product_properties'];
    seo_description = json['seo_description'];
    slug = json['slug'];
    updated_at = json['position']['updated_at'];
    wide = json['wide'];
  }
}