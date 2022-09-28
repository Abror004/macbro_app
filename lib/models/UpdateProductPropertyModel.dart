class UpdateProductPropertyModel {
  late final String property_id;
  late final String value;

  UpdateProductPropertyModel.fromJson(Map<String, dynamic> json) {
    property_id = json['property_id'];
    value = json['value'];
  }
}