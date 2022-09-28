class UpsertSubscriptionRequest {
  late final String fcm_token;
  late final String product_slug;
  late final bool send_notification;
  late final String user_id;

  UpsertSubscriptionRequest.fromJson(Map<String, dynamic> json) {
    fcm_token = json['fcm_token'];
    product_slug = json['product_slug'];
    send_notification = json['send_notification'];
    user_id = json['user_id'];
  }
}