import 'package:macbro_app/models/PromoCodeModel.dart';

class GetPromoCodeModel {
  late final PromoCodeModel promo_code;

  GetPromoCodeModel.fromJson(Map<String, dynamic> json) {
    promo_code = PromoCodeModel.fromJson(json['promo_code']);
  }
}