import 'package:macbro_app/models/CategorySlimModel.dart';

class FindCategoriesModel {
  late final String count; // example: 0
  late final List<CategorySlimModel> categories;

  FindCategoriesModel.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    categories = json['categories'] == null ? [] : List.generate((json['categories'] as List).length, (index) => CategorySlimModel.fromJson(json['categories'][index]));
  }
}