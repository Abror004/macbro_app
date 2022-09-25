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
    id = json['id'];
    title = json['title'];
    slug = json['slug'];
    active = json['active'];
    size = json['size'];
    description = json['description'];
    created_at = json['position']['created_at'];
    updated_at = json['position']['updated_at'];
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'slug': slug,
    'active': active,
    'size': size,
    'description': description,
    'created_at': created_at,
    'updated_at': updated_at
  };
}