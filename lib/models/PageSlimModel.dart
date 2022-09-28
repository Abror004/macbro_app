class PageSlimModel {
  late final bool active;
  late final String content;
  late final String created_at;
  late final String id;
  late final String lang;
  late final String preview_image;
  late final String slug;
  late final String title;
  late final String updated_at;

  PageSlimModel.fromJson(Map<String, dynamic> json) {
    active = json['active'];
    content = json['content'];
    created_at = json['created_at'];
    id = json['id'];
    lang = json['lang'];
    preview_image = json['preview_image'];
    slug = json['slug'];
    title = json['title'];
    updated_at = json['updated_at'];
  }
}
