import 'package:macbro_app/models/FeaturedList.dart';

class FeaturedListsResponse {
  late final String count;
  late final List<FeaturedList> featured_lists;

  FeaturedListsResponse.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    featured_lists = json['featured_lists'] == null ? [] : List.generate((json['featured_lists'] as List).length, (index) => FeaturedList.fromJson(json['featured_lists'][index]));
  }
}