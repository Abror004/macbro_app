class BannerPositionModel {
  late final bool active;
  late final String created_at;
  late final String description;
  late final String id;
  late final String size;
  late final String slug;
  late final String title;
  late final String updated_at;

  BannerPositionModel.fromJson(Map<String, dynamic> json) {
    active = json['active'];
    created_at = json['created_at'];
    description = json['description'];
    id = json['id'];
    size = json['size'];
    slug = json['slug'];
    title = json['title'];
    updated_at = json['updated_at'];
  }
}