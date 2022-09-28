import 'package:macbro_app/models/NewModel.dart';

class NewsModel {
  late final String count;
  late final List<NewModel> news;

  NewsModel.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    news = json['news'] == null ? [] : List.generate((json['news'] as List).length, (index) => NewModel.fromJson(json['news'][index]));
  }
}