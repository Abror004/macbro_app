import 'package:macbro_app/models/ProductPropertyModel.dart';

class FindProductPropertiesModel {
  late final String count;
  late final List<ProductPropertyModel> product_properties;

  FindProductPropertiesModel.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    product_properties = json['product_properties'] == null ? [] : List.generate((json['product_properties'] as List).length, (index) => ProductPropertyModel.fromJson(json['product_properties'][index]));
  }
}