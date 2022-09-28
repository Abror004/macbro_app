import 'package:macbro_app/models/PromoModel.dart';

class GetPromoModel {
  late final PromoModel promo;

  GetPromoModel.fromJson(Map<String, dynamic> json) {
    promo = PromoModel.fromJson(json['promo']);
  }
}