class ProductPropertyModelSlim {
  late final bool active;
  late final String description;
  late final String id;
  late final String lang;
  late final String name;
  late final String order;
  late final String slug;
  late final String type;

  ProductPropertyModelSlim.fromJson(Map<String, dynamic> json) {
    active = json['active'];
    description = json['description'];
    id = json['id'];
    lang = json['lang'];
    name = json['name'];
    order = json['order'];
    slug = json['slug'];
    type = json['type']; // Enum: [ text, number, select, checkbox, radio ]
  }
}