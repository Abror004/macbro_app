class GrandChildCategoryModel {
  late final bool active;
  late final String created_at;
  late final String description;
  late final String id;
  late final String image;
  late final String name;
  late final String order;
  late final String slug;
  late final String trade_in_image;
  late final String updated_at;

  GrandChildCategoryModel.fromJson(Map<String, dynamic> json) {
    active = json['active'];
  }
}