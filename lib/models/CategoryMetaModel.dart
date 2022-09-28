class CategoryMetaModel {
  late final String description;
  late final String tags;
  late String title;

  CategoryMetaModel.fromJson(Map<String, dynamic> json) {
    description = json['description'];
    title = json['tags'];
    title = json['title'];
  }
}