class ProductForPromo {
  late final String slug;
  late final String title;

  ProductForPromo.fromJson(Map<String, dynamic> json) {
    slug = json['slug'];
    title = json['title'];
  }
}