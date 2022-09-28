import 'package:macbro_app/models/OrderModel.dart';

class OrdersModel {
  late final String count;
  late final List<OrderModel> orders;

  OrdersModel.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    orders = json['orders'] == null ? [] : List.generate((json['orders'] as List).length, (index) => OrderModel.fromJson(json['orders'][index]));
  }
}