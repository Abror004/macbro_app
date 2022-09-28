import 'package:macbro_app/models/PageMetaModel.dart';

class PageModel {
  late final String active;
  late final String content;
  late final String created_at;
  late final String description;
  late final String id;
  late final String image;
  late final String lang;
  late final PageMetaModel meta;
  late final String preview_image;
  late final String slug;
  late final String title;
  late final String updated_at;

  PageModel.fromJson(Map<String, dynamic> json) {
    active = json['active'];
    content = json['content'];
    created_at = json['created_at'];
    description = json['description'];
    id = json['id'];
    image = json['image'];
    lang = json['lang'];
    meta = PageMetaModel.fromJson(json['meta']);
    preview_image = json['preview_image'];
    slug = json['slug'];
    title = json['title'];
    updated_at = json['updated_at'];
  }
}