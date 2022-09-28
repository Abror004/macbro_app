class DeliveryInfo {
  late final String address;
  late final String comment;
  late final String phone;

  DeliveryInfo.fromJson(Map<String, dynamic> json) {
    address = json['address'];
    comment = json['comment'];
    phone = json['phone'];
  }
}