class CreateProductNewsModel {
  late final String currency;
  late final String name;
  late final num price;
  late final String product_id;

  CreateProductNewsModel.fromJson(Map<String, dynamic> json) {
    currency = json['currencyc'];
    name = json['name'];
    price = json['price'];
    product_id = json['product_id'];
  }
}