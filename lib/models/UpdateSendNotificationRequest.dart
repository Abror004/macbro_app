class UpdateSendNotificationRequest {
  late final String fcm_token;
  late final bool send_notification;

  UpdateSendNotificationRequest.fromJson(Map<String, dynamic> json) {
    fcm_token = json['fcm_token'];
    send_notification = json['send_notification'];
  }
}