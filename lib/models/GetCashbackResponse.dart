import 'package:macbro_app/models/CashbackData.dart';

class GetCashbackResponse {
  late final CashbackData data;
  late final bool success;
  late final String text;

  GetCashbackResponse.fromJson(Map<String, dynamic> json) {
    data = CashbackData.fromJson(json['data']);
    success = json['success'];
    text = json['text'];
  }
}