class PromoSlimModel {
  late final bool active;
  late final String created_at;
  late final String end_time;
  late final String formatted_date;
  late final String formatted_end_date;
  late final String formatted_start_date;
  late final String id;
  late final String image;
  late final String lang;
  late final String preview_image;
  late final String preview_text;
  late final String slug;
  late final String start_time;
  late final String title;
  late final String updated_at;

  PromoSlimModel.fromJson(Map<String, dynamic> json) {
    active = json['active'];
    created_at = json['created_at'];
    end_time = json['end_time'];
    formatted_date = json['formatted_date'];
    formatted_end_date = json['formatted_end_date'];
    formatted_start_date = json['formatted_start_date'];
    id = json['id'];
    image = json['image'];
    lang = json['lang'];
    preview_image = json['preview_image'];
    preview_text = json['preview_text'];
    slug = json['slug'];
    start_time = json['start_time'];
    title = json['title'];
    updated_at = json['updated_at'];
  }
}