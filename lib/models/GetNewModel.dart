import 'package:macbro_app/models/NewModel.dart';

class GetNewModel {
  late final NewModel new_;

  GetNewModel.fromJson(Map<String, dynamic> json) {
    new_ = NewModel.fromJson(json['new']);
  }
}