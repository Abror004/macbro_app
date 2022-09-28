import 'package:macbro_app/models/GetVariantValue.dart';

class GetVariant {
  late final String name;
  late final GetVariantValue value;

  GetVariant.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    value = GetVariantValue.fromJson(json['value']);
  }
}