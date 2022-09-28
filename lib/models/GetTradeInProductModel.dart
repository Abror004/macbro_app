import 'package:macbro_app/models/TradeInProductModel.dart';

class GetTradeInProductModel {
  late final TradeInProductModel trade_in_product;

  GetTradeInProductModel.fromJson(Map<String, dynamic> json) {
    trade_in_product = TradeInProductModel.fromJson(json['trade_in_product']);
  }
}