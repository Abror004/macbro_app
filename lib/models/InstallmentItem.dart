class InstallmentItem {
  late final String name;
  late final num price;
  late final String slug;

  InstallmentItem.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    price = json['price'];
    slug = json['slug'];
  }
}