import 'package:macbro_app/models/ProductPropertyModel.dart';
import 'package:macbro_app/models/ProductPropertyValue.dart';

class ProductPropertyWithValue {
  late final String id;
  late final ProductPropertyModel property;
  late final List<ProductPropertyValue> value;

  ProductPropertyWithValue.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    property = ProductPropertyModel.fromJson(json['property']);
    value = json['value'] == null ? [] : List.generate((json['value'] as List).length, (index) => ProductPropertyValue.fromJson(json['value'][index]));
  }
}