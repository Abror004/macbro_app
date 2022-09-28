import 'package:macbro_app/models/DeliveryInfo.dart';
import 'package:macbro_app/models/ImageForInstallment.dart';
import 'package:macbro_app/models/InstallmentItem.dart';
import 'package:macbro_app/models/UserForInstallment.dart';

class InstallmentModel {
  late final String created_at;
  late final UserForInstallment customer;
  late final DeliveryInfo delivery_info;
  late final int duration;
  late final String id;
  late final ImageForInstallment images;
  late final num initial_pay_amount;
  late final int initial_pay_percent;
  late final num installment_price;
  late final num monthly_payment;
  late final int percent;
  late final InstallmentItem product;
  late final num total_amount;
  // late final GetVariantValue value;

  InstallmentModel.fromJson(Map<String, dynamic> json) {
    created_at = json['created_at'];
    customer = UserForInstallment.fromJson(json['customer']);
    delivery_info = DeliveryInfo.fromJson(json['delivery_info']);
    duration = json['duration'];
    id = json['id'];
    images = ImageForInstallment.fromJson(json['images']);
    initial_pay_amount = json['initial_pay_amount'];
    initial_pay_percent = json['initial_pay_percent'];
    installment_price = json['installment_price'];
    monthly_payment = json['monthly_payment'];
    percent = json['percent'];
    product = InstallmentItem.fromJson(json['product']);
    total_amount = json['total_amount'];
    // value = GetVariantValue.fromJson(json['value']);
  }
}