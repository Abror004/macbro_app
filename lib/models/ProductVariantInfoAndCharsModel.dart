class ProductVariantInfoAndCharsModel {
  late final String characteristics;
  late final String description;
  late final String preview_text;

  ProductVariantInfoAndCharsModel.fromJson(Map<String, dynamic> json) {
    characteristics = json['characteristics'];
    description = json['description'];
    preview_text = json['preview_text'];
  }
}