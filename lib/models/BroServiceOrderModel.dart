class BroServiceOrderModel {
  late final String created_at;
  late final String customer_name;
  late final String note;
  late final String phone;
  late final String product_name;
  late final String service_name;

  BroServiceOrderModel.fromJson(Map<String, dynamic> json) {
    created_at = json['created_at'];
    customer_name = json['customer_name'];
    note = json['note'];
    phone = json['phone'];
    product_name = json['product_name'];
    service_name = json['service_name'];
  }
}