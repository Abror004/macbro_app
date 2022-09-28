import 'package:macbro_app/models/Notification.dart';

class GetNotificationsListResponse {
  late final int count;
  late final List<Notification> notifications;

  GetNotificationsListResponse.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    notifications = json['notifications'] == null ? [] : List.generate((json['notifications'] as List).length, (index) => Notification.fromJson(json['notifications'][index]));
  }
}