class PreOrderModel {
  late final String created_at;
  late final String customer_name;
  late final String email;
  late final String id;
  late final String item;
  late final String phone;

  PreOrderModel.fromJson(Map<String, dynamic> json) {
    created_at = json['created_at'];
    customer_name = json['customer_name'];
    email = json['email'];
    id = json['id'];
    item = json['item'];
    phone = json['phone'];
  }
}