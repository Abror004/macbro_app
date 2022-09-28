class CreatePreOrderModel {
  late final String customer_name;
  late final String email;
  late final String item;
  late final String phone;

  CreatePreOrderModel.fromJson(Map<String, dynamic> json) {
    customer_name = json['customer_name'];
    email = json['email'];
    item = json['item'];
    phone = json['phone'];
  }
}