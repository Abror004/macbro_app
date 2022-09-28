import 'package:macbro_app/models/OrderItem.dart';

class OrderModel {
  late final String address;
  late final String created_at;
  late final String customer_id;
  late final String customer_name;
  late final String delivery_method;
  late final String id;
  late final List<OrderItem> items;
  late final String count;
  late final String longlat;
  late final String note;
  late final String number;
  late final String paid_at;
  late final String payment_method;
  late final String phone;
  late final String status;
  late final String type;
  late final String updated_at;
  // late final List<OrderModel> orders;

  OrderModel.fromJson(Map<String, dynamic> json) {
    address = json['address'];
    created_at = json['created_at'];
    customer_id = json['customer_id'];
    customer_name = json['customer_name'];
    delivery_method = json['delivery_method'];
    id = json['id'];
    items = json['items'] == null ? [] : List.generate((json['items'] as List).length, (index) => OrderItem.fromJson(json['items'][index]));
    count = json['count'];
    longlat = json['longlat'];
    note = json['note'];
    number = json['number'];
    paid_at = json['paid_at'];
    payment_method = json['payment_method'];
    phone = json['phone'];
    status = json['status'];
    type = json['type'];
    updated_at = json['updated_at'];
  }
}