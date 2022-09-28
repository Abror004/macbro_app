class ShopLocModel {
  late final String lat;
  late final String long;

  ShopLocModel.fromJson(Map<String, dynamic> json) {
    lat = json['lat'];
    long = json['long'];
  }
}