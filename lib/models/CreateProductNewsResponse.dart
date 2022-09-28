import 'package:macbro_app/models/Error.dart';

class CreateProductNewsResponse {
  late final Error error;
  late final bool success;

  CreateProductNewsResponse.fromJson(Map<String, dynamic> json) {
    error = Error.fromJson(json['error']);
    success = json['success'];
  }
}