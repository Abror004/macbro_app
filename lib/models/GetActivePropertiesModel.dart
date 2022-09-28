import 'package:macbro_app/models/ProductPropertyModel.dart';

class GetActivePropertiesModel {
  late final List<ProductPropertyModel> properties;

  GetActivePropertiesModel.fromJson(Map<String, dynamic> json) {
    properties = json['properties'] == null ? [] : List.generate((json['properties'] as List).length, (index) => ProductPropertyModel.fromJson(json['properties'][index]));
  }
}