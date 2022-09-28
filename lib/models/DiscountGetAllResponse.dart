import 'package:macbro_app/models/DiscountGetResponse.dart';

class DiscountGetAllResponse {
  late final int count;
  late final List<DiscountGetResponse> discounts;

  DiscountGetAllResponse.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    discounts = json['discounts'] == null ? [] : List.generate((json['discounts'] as List).length, (index) => DiscountGetResponse.fromJson(json['discounts'][index]));
  }
}