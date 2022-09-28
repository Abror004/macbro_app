class ProductPropertyOptionModel {
  late final String extra;
  late final String name;
  late final String order;
  late final String value;


  ProductPropertyOptionModel.fromJson(Map<String, dynamic> json) {
    extra = json['extra'];
    name = json['name'];
    order = json['order']; // example: 0
    value = json['value'];
  }
}