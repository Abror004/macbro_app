import 'package:macbro_app/models/CountOfWarehouse.dart';

class GetCountBySlugResponse {
  late final List<CountOfWarehouse> count_of_warehouse;
  late final int total_count;

  GetCountBySlugResponse.fromJson(Map<String, dynamic> json) {
    count_of_warehouse = json['count_of_warehouse'] == null ? [] : List.generate((json['count_of_warehouse'] as List).length, (index) => CountOfWarehouse.fromJson(json['count_of_warehouse'][index]));
    total_count = json['total_count'];
  }
}