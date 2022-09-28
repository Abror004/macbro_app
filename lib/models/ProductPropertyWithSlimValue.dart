class ProductPropertyWithSlimValue {
  late final String description;
  late final String tags;
  late final String title;

  ProductPropertyWithSlimValue.fromJson(Map<String, dynamic> json) {
    description = json['description'];
    tags = json['tags'];
    title = json['title'];
  }
}