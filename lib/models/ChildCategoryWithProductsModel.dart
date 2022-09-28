import 'package:macbro_app/models/ChildCategorySlimModel.dart';
import 'package:macbro_app/models/ProductSlimmestModel.dart';

class ChildCategoryWithProductsModel {
  late final ChildCategorySlimModel category;
  late final List<ProductSlimmestModel> products;

  ChildCategoryWithProductsModel.fromJson(Map<String, dynamic> json) {
    category = ChildCategorySlimModel.fromJson(json['category']);
    products = json['products'] == null ? [] : List.generate((json['products'] as List).length, (index) => ProductSlimmestModel.fromJson(json['products'][index]));
  }
}