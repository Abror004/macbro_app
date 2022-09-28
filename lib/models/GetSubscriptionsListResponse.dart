import 'package:macbro_app/models/Subscription.dart';

class GetSubscriptionsListResponse {
  late final String count;
  late final List<Subscription> subscriptions;

  GetSubscriptionsListResponse.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    subscriptions = json['subscriptions'] == null ? [] : List.generate((json['subscriptions'] as List).length, (index) => Subscription.fromJson(json['subscriptions'][index]));
  }
}