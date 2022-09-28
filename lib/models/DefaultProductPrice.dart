class DefaultProductPrice {
  late final num old_price;
  late final num price;
  late final num second_price;
  late final num second_uzs_price;
  late final num uzs_price;

  DefaultProductPrice.fromJson(Map<String, dynamic> json) {
    old_price = json['old_price'];
    price = json['price'];
    second_price = json['second_price'];
    second_uzs_price = json['second_uzs_price'];
    uzs_price = json['uzs_price'];
  }
}