class Subscription {
  late final String ID;
  late final String fcm_token;
  late final String product_slug;
  late final String send_notification;
  late final String user_id;

  Subscription.fromJson(Map<String, dynamic> json) {
    ID = json['ID'];
    fcm_token = json['fcm_token'];
    product_slug = json['product_slug'];
    send_notification = json['send_notification'];
    user_id = json['user_id'];
  }
}