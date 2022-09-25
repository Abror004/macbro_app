class ProductSlimModel {
  late final String active;
  late final String brand;
  late final String description;
  late final String id;
  late final String image;
  late final String name;
  late final String order;
  late final String slug;
  late final String trade_in_image;
  late final String updated_at;

  ProductSlimModel.fromJson(Map<String, dynamic> json) {
    active = json['active'];
  }
}