import 'package:macbro_app/models/CategoryModel.dart';

class GetCategoryModel {
  late final CategoryModel category;

  GetCategoryModel.fromJson(Map<String, dynamic> json) {
    category = CategoryModel.fromJson(json['category']);
  }
}