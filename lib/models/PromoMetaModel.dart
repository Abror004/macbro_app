class PromoMetaModel {
  late final String description;
  late final String tags;
  late final String title;

  PromoMetaModel.fromJson(Map<String, dynamic> json) {
    description = json['description'];
    tags = json['tags'];
    title = json['title'];
  }
}