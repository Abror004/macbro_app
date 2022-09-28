import 'package:macbro_app/models/FeaturedListSlim.dart';

class FeaturedListResponse {
  late final FeaturedListSlim featured_list;

  FeaturedListResponse.fromJson(Map<String, dynamic> json) {
    featured_list = FeaturedListSlim.fromJson(json['featured_list']);
  }
}