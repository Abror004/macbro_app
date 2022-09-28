import 'package:macbro_app/models/TradeInProductModel.dart';

class FindTradeInProductsModel {
  late final String count; // example: 0
  late final List<TradeInProductModel> trade_in_products;

  FindTradeInProductsModel.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    trade_in_products = json['trade_in_products'] == null ? [] : List.generate((json['trade_in_products'] as List).length, (index) => TradeInProductModel.fromJson(json['trade_in_products'][index]));
  }
}