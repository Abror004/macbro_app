import 'package:macbro_app/models/PageModel.dart';

class GetPageModel {
  late final PageModel page;

  GetPageModel.fromJson(Map<String, dynamic> json) {
    page = PageModel.fromJson(json['page']);
  }
}