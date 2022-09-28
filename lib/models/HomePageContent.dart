import 'package:macbro_app/models/FeaturedList.dart';

class HomePageContent {
  late final List<FeaturedList> featured_lists;

  HomePageContent.fromJson(Map<String, dynamic> json) {
    featured_lists = json['featured_lists'] == null ? [] : List.generate((json['featured_lists'] as List).length, (index) => FeaturedList.fromJson(json['featured_lists'][index]));
  }
}