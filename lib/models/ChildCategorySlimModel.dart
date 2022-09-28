class ChildCategorySlimModel {
  late final String id;
  late final String name;
  late final String order;
  late final String slug;

  ChildCategorySlimModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    order = json['order'];
    slug = json['slug'];
  }
}