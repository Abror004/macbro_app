import 'package:macbro_app/models/PromoSlimModel.dart';

class PromosModel {
  late final String count;
  late final List<PromoSlimModel> promos;

  PromosModel.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    promos = json['promos'] == null ? [] : List.generate((json['promos'] as List).length, (index) => PromoSlimModel.fromJson(json['promos'][index]));
  }
}