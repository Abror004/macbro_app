class NewsMetaModel {
  late final String description;
  late final String tags;
  late final String title;

  NewsMetaModel.fromJson(Map<String, dynamic> json) {
    description = json['description'];
    tags = json['tags'];
    title = json['title'];
  }
}