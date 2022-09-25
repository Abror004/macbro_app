class BrandModel {
  late final String active;
  late final String created_at;
  late final String description;
  late final String id;
  late final String image;
  late final String name;
  late final String preview_text;
  late final String slug;
  late final String updated_at;

  BrandModel.fromJson(Map<String, dynamic> json) {
    active = json['active'];
    created_at = json['created_at'];
    description = json['description'];
    id = json['id'];
    image = json['image'];
    name = json['name'];
    preview_text = json['preview_text'];
    slug = json['slug'];
    updated_at = json['updated_at'];
  }
}