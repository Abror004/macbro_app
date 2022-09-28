import 'package:macbro_app/models/PageSlimModel.dart';

class FindPagesModel {
  late final String count;
  late final List<PageSlimModel> pages;

  FindPagesModel.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    pages = json['pages'] == null ? [] : List.generate((json['pages'] as List).length, (index) => PageSlimModel.fromJson(json['pages'][index]));
  }
}