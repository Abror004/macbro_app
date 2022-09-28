import 'package:macbro_app/models/PreOrderModel.dart';

class FindPreordersModel {
  late final int count;
  late final List<PreOrderModel> pre_orders;

  FindPreordersModel.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    pre_orders = json['pre_orders'] == null ? [] : List.generate((json['pre_orders'] as List).length, (index) => PreOrderModel.fromJson(json['pre_orders'][index]));
  }
}
