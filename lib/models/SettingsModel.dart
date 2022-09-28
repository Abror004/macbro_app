class SettingsModel {
  late final bool active;
  late final String code;
  late final String id;
  late final String name;

  SettingsModel.fromJson(Map<String, dynamic> json) {
    active = json['active'];
    code = json['code'];
    id = json['id'];
    name = json['name'];
  }
}