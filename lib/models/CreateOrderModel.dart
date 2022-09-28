import 'package:macbro_app/models/OrderItem.dart';

class CreateOrderModel {
  late final String address;
  late final String customer_id;
  late final String customer_name;
  late final String delivery_method;
  late final OrderItem items;
  late final String longlat;
  late final String note;
  late final String payment_method;
  late final String phone;
  late final String promo_code;
  late final String type;

  CreateOrderModel.fromJson(Map<String, dynamic> json) {
    address = json['address'];
    customer_id = json['customer_id'];
    customer_name = json['customer_name'];
    delivery_method = json['delivery_method'];
    items = OrderItem.fromJson(json['items']);
    longlat = json['longlat'];
    note = json['note'];
    payment_method = json['payment_method'];
    phone = json['phone'];
    promo_code = json['promo_code'];
    type = json['type'];
  }
}