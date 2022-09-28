class Notification {
  late final String body;
  late final String created_at;
  late final String id;
  late final String read_status;
  late final String title;
  late final String topic;
  late final String user_id;

  Notification.fromJson(Map<String, dynamic> json) {
    body = json['body'];
    created_at = json['created_at'];
    id = json['id'];
    read_status = json['read_status'];
    title = json['title'];
    topic = json['topic'];
    user_id = json['user_id'];
  }
}