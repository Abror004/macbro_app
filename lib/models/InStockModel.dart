class InStockModel {
  late final bool samarkand;
  late final bool tashkent_city;

  InStockModel.fromJson(Map<String, dynamic> json) {
    samarkand = json['samarkand'];
    tashkent_city = json['tashkent_city'];
  }
}