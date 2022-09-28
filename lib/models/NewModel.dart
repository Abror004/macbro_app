import 'package:macbro_app/models/NewsMetaModel.dart';

class NewModel {
  late final bool active;
  late final String created_at;
  late final String description;
  late final String formatted_date;
  late final String full_text;
  late final String id;
  late final String imageURL;
  late final NewsMetaModel meta;
  late final String preview_image;
  late final String slug;
  late final String title;
  late final String updated_at;
  late final String video;

  NewModel.fromJson(Map<String, dynamic> json) {
    active = json['active'];
    created_at = json['created_at'];
    description = json['description'];
    formatted_date = json['formatted_date'];
    full_text = json['full_text'];
    id = json['id'];
    imageURL = json['imageURL'];
    meta = NewsMetaModel.fromJson(json['meta']);
    preview_image = json['preview_image'];
    slug = json['slug'];
    title = json['title'];
    updated_at = json['updated_at'];
    video = json['video'];
  }
}