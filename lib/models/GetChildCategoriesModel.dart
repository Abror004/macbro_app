import 'package:macbro_app/models/ChildCategoryWithProductsModel.dart';

class GetChildCategoriesModel {
  late final List<ChildCategoryWithProductsModel> categories;

  GetChildCategoriesModel.fromJson(Map<String, dynamic> json) {
    categories = json['categories'] == null ? [] : List.generate((json['categories'] as List).length, (index) => ChildCategoryWithProductsModel.fromJson(json['categories'][index]));
  }
}