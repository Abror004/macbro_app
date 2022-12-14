class ProductPropertyValue {
  late final String extra;
  late final String name;
  late final String order;
  late final String value;

  ProductPropertyValue.fromJson(Map<String, dynamic> json) {
    extra = json['extra'];
    name = json['name'];
    order = json['order'];
    value = json['value'];
  }
}