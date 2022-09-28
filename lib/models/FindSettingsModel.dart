import 'package:macbro_app/models/SettingsModel.dart';

class FindSettingsModel {
  late final String count;
  late final List<SettingsModel> settings;

  FindSettingsModel.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    settings = json['settings'] == null ? [] : List.generate((json['settings'] as List).length, (index) => SettingsModel.fromJson(json['settings'][index]));
  }
}
